using Plots
using LaTeXStrings
using Printf
gr()

# ========= 物理定数 =========
c0   = 2.998e8          # 光速 [m/s]
mu0  = 4π * 1e-7        # 真空透磁率
eps0 = 1 / (mu0 * c0^2) # 真空誘電率

# ========= 導波管とモードの設定 =========
a = 22.86e-3    # 導波管幅 (WR-90規格) [m]
b = 10.16e-3    # 導波管高さ [m]
mode = :TE      # :TE または :TM
m, n = 1, 0     # モード指数 (TE: (m,n)≠(0,0), TM: m≥1 かつ n≥1)
f = 15.0e9      # 周波数 [Hz]

om  = 2π * f
k0  = om / c0
kc  = sqrt((m*π/a)^2 + (n*π/b)^2)
fc  = c0 * kc / (2π)
@assert f > fc @sprintf("f = %.2f GHz が遮断周波数 fc = %.2f GHz を下回っています", f/1e9, fc/1e9)
beta  = sqrt(k0^2 - kc^2)
lam_g = 2π / beta
@printf("mode = %s%d%d, fc = %.2f GHz, β = %.1f rad/m, λg = %.2f mm\n",
        mode, m, n, fc/1e9, beta, lam_g*1e3)

# ========= 電磁場の複素振幅 =========
# 規約: 物理場 = Re[F(x,y) e^{i(ωt - βz)}]
function field_amplitudes(x, y)
    kx, ky = m*π/a, n*π/b
    if mode == :TE
        # Hz = cos(kx x) cos(ky y) を種として横成分を導出
        Ex =  1im*om*mu0*ky/kc^2 * cos(kx*x) * sin(ky*y)
        Ey = -1im*om*mu0*kx/kc^2 * sin(kx*x) * cos(ky*y)
        Ez =  0.0 + 0.0im
        Hx =  1im*beta*kx/kc^2 * sin(kx*x) * cos(ky*y)
        Hy =  1im*beta*ky/kc^2 * cos(kx*x) * sin(ky*y)
        Hz =  cos(kx*x) * cos(ky*y) + 0.0im
    else
        # Ez = sin(kx x) sin(ky y) を種として横成分を導出
        Ex = -1im*beta*kx/kc^2 * cos(kx*x) * sin(ky*y)
        Ey = -1im*beta*ky/kc^2 * sin(kx*x) * cos(ky*y)
        Ez =  sin(kx*x) * sin(ky*y) + 0.0im
        Hx =  1im*om*eps0*ky/kc^2 * sin(kx*x) * cos(ky*y)
        Hy = -1im*om*eps0*kx/kc^2 * cos(kx*x) * sin(ky*y)
        Hz =  0.0 + 0.0im
    end
    return Ex, Ey, Ez, Hx, Hy, Hz
end

# ========= ① 断面図 (x-y平面, z=0) のGIF =========
# カラー: |E| の瞬時値、矢印: 横方向電場 (Ex, Ey)
function make_cross_section_gif(; fname="waveguide_cross_section.gif", nframes=36)
    xs = range(0, a, length=121)
    ys = range(0, b, length=55)
    F  = [field_amplitudes(x, y) for y in ys, x in xs]   # 行=y, 列=x
    EX = getindex.(F, 1);  EY = getindex.(F, 2);  EZ = getindex.(F, 3)
    Emax = maximum(sqrt.(abs.(EX).^2 .+ abs.(EY).^2 .+ abs.(EZ).^2))

    # 矢印用の粗い格子
    xq = range(0.04a, 0.96a, length=13)
    yq = range(0.08b, 0.92b, length=7)
    Fq  = [field_amplitudes(x, y) for y in yq, x in xq]
    EXq = getindex.(Fq, 1);  EYq = getindex.(Fq, 2)
    Xq  = vec(repeat(collect(xq)', length(yq), 1)) .* 1e3
    Yq  = vec(repeat(collect(yq), 1, length(xq))) .* 1e3
    arrow_scale = 0.09 * a * 1e3 / Emax   # 最大矢印長を管幅の約9%に

    anim = @animate for k in 0:nframes-1
        ph = exp(1im * 2π * k / nframes)   # e^{iωt}
        Einst = sqrt.(real.(EX .* ph).^2 .+ real.(EY .* ph).^2 .+
                      real.(EZ .* ph).^2) ./ Emax
        heatmap(xs .* 1e3, ys .* 1e3, Einst,
            c=:viridis, clim=(0, 1), aspect_ratio=:equal,
            xlim=(0, a*1e3), ylim=(0, b*1e3),
            xlabel="x (mm)", ylabel="y (mm)",
            colorbar_title=" |E| (normalized)",
            title=@sprintf("%s%d%d cross section  (ωt = %.2fπ)",
                           mode, m, n, 2k/nframes))
        u = vec(real.(EXq .* ph)) .* arrow_scale
        v = vec(real.(EYq .* ph)) .* arrow_scale
        quiver!(Xq, Yq, quiver=(u, v), color=:white, linewidth=1.5)
    end
    gif(anim, fname, fps=18)
end

# ========= ② 縦断面図 (x-z平面, y=b/2) のGIF =========
# TE: カラー=Ey(面外), 矢印=(Hz, Hx) / TM: カラー=Hy(面外), 矢印=(Ez, Ex)
function make_longitudinal_gif(; fname="waveguide_longitudinal.gif",
                                 nframes=36, y0=b/2)
    xs = range(0, a, length=101)
    zs = range(0, 2*lam_g, length=161)
    F  = [field_amplitudes(x, y0) for x in xs]
    if mode == :TE
        Camp = getindex.(F, 2)   # Ey (面外成分)
        Axamp = getindex.(F, 4)  # Hx
        Azamp = getindex.(F, 6)  # Hz
        clabel = "E_y";  tlabel = "arrows: (H_z, H_x)"
    else
        Camp = getindex.(F, 5)   # Hy (面外成分)
        Axamp = getindex.(F, 1)  # Ex
        Azamp = getindex.(F, 3)  # Ez
        clabel = "H_y";  tlabel = "arrows: (E_z, E_x)"
    end
    Cmax = maximum(abs.(Camp))
    Amax = maximum(sqrt.(abs.(Axamp).^2 .+ abs.(Azamp).^2))

    # 矢印用の粗い格子
    xq = range(0.06a, 0.94a, length=7)
    zq = range(0, 2*lam_g, length=17)
    iq = [argmin(abs.(xs .- x)) for x in xq]   # xq に対応する添字

    anim = @animate for k in 0:nframes-1
        wt = 2π * k / nframes
        # カラーマップ: C(x,z) = Re[Camp(x) e^{i(ωt - βz)}]
        Cinst = [real(Camp[i] * exp(1im*(wt - beta*z)))
                 for i in eachindex(xs), z in zs] ./ Cmax
        heatmap(zs .* 1e3, xs .* 1e3, Cinst,
            c=:RdBu, clim=(-1, 1), aspect_ratio=:equal,
            xlim=(0, 2*lam_g*1e3), ylim=(0, a*1e3),
            xlabel="z (mm)", ylabel="x (mm)",
            colorbar_title=" $(clabel) (normalized)",
            title=@sprintf("%s%d%d longitudinal (y=b/2), %s  (ωt = %.2fπ)",
                           mode, m, n, tlabel, 2k/nframes))
        Zq = Float64[];  Xq = Float64[];  U = Float64[];  V = Float64[]
        arrow_scale = 0.08 * 2*lam_g * 1e3 / Amax
        for z in zq, i in iq
            pz = exp(1im*(wt - beta*z))
            push!(Zq, z*1e3);  push!(Xq, xs[i]*1e3)
            push!(U, real(Azamp[i] * pz) * arrow_scale)   # z方向成分
            push!(V, real(Axamp[i] * pz) * arrow_scale)   # x方向成分
        end
        quiver!(Zq, Xq, quiver=(U, V), color=:black, linewidth=1.2)
    end
    gif(anim, fname, fps=18)
end

# ========= 実行 =========
make_cross_section_gif()
make_longitudinal_gif()