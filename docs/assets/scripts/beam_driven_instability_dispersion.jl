using LinearAlgebra
using Printf
using Plots
using LaTeXStrings

const η  = 0.01               # n_b / n_e（図 8.3 の値）
const alpha  = cbrt(η)            # (ω_pb/ω_pe)^{2/3}
const Kc = (1 + alpha)^(3 / 2)    # (8.4) の不安定境界 K_c
const ωc = sqrt(1 + alpha)        # 境界での重根 ω_c = K_c/(1 + α)

"""
    dispersion_roots(K, η)

4 次方程式 ω⁴ = c₃ω³ + c₂ω² + c₁ω + c₀ の 4 根を、
コンパニオン行列の固有値として求め、実部の昇順に並べて返す。
（Polynomials.jl の `roots` も内部で同じことをしている）
"""
function dispersion_roots(K, η)
    c₃, c₂, c₁, c₀ = 2K, -(K^2 - 1 - η), -2K, K^2
    C = [0.0 0.0 0.0 c₀
         1.0 0.0 0.0 c₁
         0.0 1.0 0.0 c₂
         0.0 0.0 1.0 c₃]
    r = complex.(eigvals(C))   # 全根が実数だと Float64 で返るので複素数にそろえる
    return sort(r; by = z -> (real(z), imag(z)))
end

# ---------------------------------------------------------------------
#  数値計算
# ---------------------------------------------------------------------
# K の格子（境界 K_c も格子点に加えて、ω_i の曲線がちょうど 0 で閉じるようにする）
Ks = sort!(vcat(collect(range(0.0, 2.2; length = 1101)), Kc))

R  = reduce(hcat, [dispersion_roots(K, η) for K in Ks])   # 4 × N の複素行列
ωr = real.(R)                                             # 4 根の実部（行 1–4）
gamma  = vec(maximum(imag.(R); dims = 1))                     # 成長率 = 虚部の最大値

# (8.4) との整合性チェック
@assert all(gamma[Ks .> Kc + 1e-6] .< 1e-8)       # K > K_c: 4 根とも実数（安定）
@assert all(gamma[0 .< Ks .< Kc - 1e-6] .> 0)     # 0 < K < K_c: 複素共役対（不安定）

imax = argmax(gamma)
@printf("η = %.3g:  K_c = %.6f,  ω_c = %.6f\n", η, Kc, ωc)
@printf("最大成長率 gamma_max = %.4f ω_pe  (K = %.3f)\n", gamma[imax], Ks[imax])
@printf("弱ビーム近似 (√3/2^{4/3}) η^{1/3} = %.4f ω_pe\n", sqrt(3) / 2^(4 / 3) * alpha)

# 不安定域（K ≤ K_c）だけ ω_i を描く
gammaplot = [K <= Kc ? g : NaN for (K, g) in zip(Ks, gamma)]

# ---------------------------------------------------------------------
#  図 8.3 の再現
# ---------------------------------------------------------------------
gr()
default(framestyle = :box, grid = false, legend = false,
        guidefontsize = 12, tickfontsize = 10, dpi = 200)

p1 = plot(; xlims = (0, 2.2), ylims = (-1.4, 2.3), size = (560, 640),
          xlabel = L"k_x v_\mathrm{d} / \omega_\mathrm{pe}",
          ylabel = L"\omega / \omega_\mathrm{pe}")
plot!(p1, Ks, Ks; ls = :dash, lc = :gray50, lw = 1)          # ω = k_x v_d
hline!(p1, [1.0]; ls = :dash, lc = :gray50, lw = 1)          # ω = ω_pe
hline!(p1, [0.0]; ls = :dash, lc = :gray50, lw = 1)          # ω = ω_pe
for i in 1:4
    plot!(p1, Ks, ωr[i, :]; lc = :black, lw = 2)             # ω_r（4 根の実部）
end
plot!(p1, Ks, gammaplot; lc = :black, lw = 2, ls = :dash)        # ω_i
plot!(p1, [Kc, Kc], [0, ωc]; ls = :dot, lc = :gray50, lw = 1)
scatter!(p1, [Kc], [ωc]; mc = :white, msc = :black, ms = 5)  # 重根 (K_c, ω_c)
annotate!(p1, [
    (1.85, 2.15, text(L"\omega = k_x v_\mathrm{d}", 10, :right)),
    (2.15, 0.88, text(L"\omega = \omega_\mathrm{pe}", 10, :right)),
    (2.15, -1.12, text(L"\omega = -\omega_\mathrm{pe}", 10, :right)),
    (0.40, 1.15, text(L"\omega_\mathrm{r}", 11)),
    (1.04, 0.22, text(L"\omega_\mathrm{i}", 11)),
    (Kc + 0.06, ωc, text(L"(K_\mathrm{c}, \omega_\mathrm{c})", 9, :left)),
])

# ---------------------------------------------------------------------
#  成長率の拡大図（近似式との比較）
# ---------------------------------------------------------------------
Ksmall = Ks[Ks .<= 1.2]
gammaweak  = sqrt(3) / 2^(4 / 3) * alpha           # 弱ビーム近似の最大成長率

p2 = plot(Ks, gammaplot; lc = :black, lw = 2, size = (560, 360),
          xlims = (0, 2.2), ylims = (0, 0.17),
          xlabel = L"k_x v_\mathrm{d} / \omega_\mathrm{pe}",
          ylabel = L"\omega_\mathrm{i} / \omega_\mathrm{pe}")
plot!(p2, Ksmall, sqrt(η) / (1 + η) .* Ksmall; ls = :dash, lc = :gray50, lw = 1)
hline!(p2, [gammaweak]; ls = :dot, lc = :gray50, lw = 1)
vline!(p2, [Kc]; ls = :dot, lc = :gray50, lw = 1)
annotate!(p2, [
    (0.66, 0.048, text(L"\sqrt{\eta}K/(1+\eta)", 9, :left)),
    (0.05, 0.158, text(L"(\sqrt{3}/2^{4/3})\eta^{1/3}", 9, :left)),
    (Kc + 0.03, 0.08, text(L"K_\mathrm{c}", 10, :left)),
])

mkpath("figures")
savefig(p1, joinpath("figures", "beam_plasma_dispersion.png"))
savefig(p2, joinpath("figures", "beam_plasma_growth_rate.png"))
