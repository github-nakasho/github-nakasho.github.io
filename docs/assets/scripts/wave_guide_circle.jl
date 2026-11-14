using Plots
using LaTeXStrings
using SpecialFunctions   # besselj を使用
using Roots              # ベッセル零点の数値計算
using Printf
gr()

# ========= 物理定数 =========
c0   = 2.998e8
mu0  = 4π * 1e-7
eps0 = 1 / (mu0 * c0^2)

# ========= 導波管とモードの設定 =========
R0   = 12.0e-3   # 円筒半径 [m]
mode = :TE       # :TE または :TM
m, n = 1, 1      # 方位角モード指数 m ≥ 0、動径モード指数 n ≥ 1
f    = 10.0e9    # 周波数 [Hz]

# ---- ベッセル関数の微分 ----
dbesselj(m, x) = 0.5 * (besselj(m-1, x) - besselj(m+1, x))

# ---- J_m または J'_m の第 n 零点を求める ----
function bessel_zero(m, n; deriv=false)
    g(x) = deriv ? dbesselj(m, x) : besselj(m, x)
    count = 0
    x1 = (deriv && m == 0) ? 1e-6 : 1e-6   # x=0 の自明零点を除外
    dx = 0.05
    x  = x1
    while count < n
        while g(x) * g(x + dx) > 0
            x += dx
        end
        root = find_zero(g, (x, x + dx))
        count += 1
        count == n && return root
        x = root + dx
    end
end

chi = bessel_zero(m, n; deriv=(mode == :TE))
kc  = chi / R0
fc  = c0 * kc / (2π)
om  = 2π * f
k0  = om / c0
@assert f > fc @sprintf("f = %.2f GHz < fc = %.2f GHz です", f/1e9, fc/1e9)
beta  = sqrt(k0^2 - kc^2)
lam_g = 2π / beta
@printf("mode = %s%d%d, χ = %.4f, fc = %.2f GHz, λg = %.2f mm\n",
        mode, m, n, chi, fc/1e9, lam_g*1e3)

# ========= 電磁場の複素振幅（円筒座標成分） =========
# 規約: 物理場 = Re[F(ρ,φ) e^{i(ωt - βz)}]
function field_amplitudes(rho, phi)
    x = kc * rho
    Jm  = besselj(m, x)
    dJm = dbesselj(m, x)
    # ρ→0 で m/ρ * J_m が 0/0 になるのを回避
    Jm_over_rho = rho < 1e-12 ? (m == 1 ? kc/2 : 0.0) : Jm / rho

    if mode == :TE
        # Hz = J_m(kc ρ) cos(mφ)
        Erho =  1im*om*mu0*m/kc^2 * Jm_over_rho * sin(m*phi)
        Ephi =  1im*om*mu0/kc     * dJm        * cos(m*phi)
        Ez   =  0.0 + 0.0im
        Hrho = -1im*beta/kc       * dJm        * cos(m*phi)
        Hphi =  1im*beta*m/kc^2   * Jm_over_rho * sin(m*phi)
        Hz   =  Jm * cos(m*phi) + 0.0im
    else
        # Ez = J_m(kc ρ) cos(mφ)
        Erho = -1im*beta/kc       * dJm        * cos(m*phi)
        Ephi =  1im*beta*m/kc^2   * Jm_over_rho * sin(m*phi)
        Ez   =  Jm * cos(m*phi) + 0.0im
        Hrho = -1im*om*eps0*m/kc^2 * Jm_over_rho * sin(m*phi)
        Hphi = -1im*om*eps0/kc     * dJm        * cos(m*phi)
        Hz   =  0.0 + 0.0im
    end
    return Erho, Ephi, Ez, Hrho, Hphi, Hz
end

# ---- 円筒座標成分 → デカルト成分 ----
function to_cartesian(Frho, Fphi, phi)
    Fx = Frho * cos(phi) - Fphi * sin(phi)
    Fy = Frho * sin(phi) + Fphi * cos(phi)
    return Fx, Fy
end

# ========= ① 断面図 (x-y平面, z=0) のGIF =========
function make_cross_section_gif(; fname="circular_waveguide_cross.gif",
                                  nframes=36)
    N  = 141
    xs = range(-R0, R0, length=N)
    ys = range(-R0, R0, length=N)

    EX = zeros(ComplexF64, N, N); EY = zeros(ComplexF64, N, N)
    EZ = zeros(ComplexF64, N, N)
    inside = falses(N, N)
    for (j, x) in enumerate(xs), (i, y) in enumerate(ys)
        rho = hypot(x, y)
        rho > R0 && continue
        inside[i, j] = true
        phi = atan(y, x)
        Er, Ep, Ez, _, _, _ = field_amplitudes(rho, phi)
        EX[i, j], EY[i, j] = to_cartesian(Er, Ep, phi)
        EZ[i, j] = Ez
    end
    Emax = maximum(sqrt.(abs.(EX).^2 .+ abs.(EY).^2 .+ abs.(EZ).^2))

    # 矢印用の粗い格子（円内のみ）
    nq = 11
    Xq = Float64[]; Yq = Float64[]
    EXq = ComplexF64[]; EYq = ComplexF64[]
    for x in range(-0.9R0, 0.9R0, length=nq),
        y in range(-0.9R0, 0.9R0, length=nq)
        rho = hypot(x, y)
        rho > 0.92R0 && continue
        phi = atan(y, x)
        Er, Ep, _, _, _, _ = field_amplitudes(rho, phi)
        ex, ey = to_cartesian(Er, Ep, phi)
        push!(Xq, x*1e3); push!(Yq, y*1e3)
        push!(EXq, ex);   push!(EYq, ey)
    end
    arrow_scale = 0.16 * R0 * 1e3 / Emax

    # 導波管の壁（円）
    th = range(0, 2π, length=200)
    wall_x = R0 .* cos.(th) .* 1e3
    wall_y = R0 .* sin.(th) .* 1e3

    anim = @animate for k in 0:nframes-1
        ph = exp(1im * 2π * k / nframes)
        Einst = [inside[i,j] ?
                 sqrt(real(EX[i,j]*ph)^2 + real(EY[i,j]*ph)^2 +
                      real(EZ[i,j]*ph)^2) / Emax : NaN
                 for i in 1:N, j in 1:N]
        heatmap(xs .* 1e3, ys .* 1e3, Einst,
            c=:viridis, clim=(0, 1), aspect_ratio=:equal,
            xlabel="x (mm)", ylabel="y (mm)",
            colorbar_title=" |E| (normalized)",
            title=@sprintf("%s%d%d cross section  (ωt = %.2fπ)",
                           mode, m, n, 2k/nframes))
        plot!(wall_x, wall_y, color=:white, linewidth=2, label=false)
        u = real.(EXq .* ph) .* arrow_scale
        v = real.(EYq .* ph) .* arrow_scale
        quiver!(Xq, Yq, quiver=(u, v), color=:white, linewidth=1.3)
    end
    gif(anim, fname, fps=18)
end

# ========= ② 縦断面図 (x-z平面, φ=0とπ) のGIF =========
# TE11: カラー = 面外成分 Ey、矢印 = 面内磁場 (Hz, Hx)
function make_longitudinal_gif(; fname="circular_waveguide_long.gif",
                                 nframes=36)
    Nx = 101
    xs = range(-R0, R0, length=Nx)        # x < 0 は φ=π 側
    zs = range(0, 2*lam_g, length=161)

    Camp  = zeros(ComplexF64, Nx)   # 面外カラー成分
    Axamp = zeros(ComplexF64, Nx)   # 面内 x 成分
    Azamp = zeros(ComplexF64, Nx)   # 面内 z 成分
    for (i, x) in enumerate(xs)
        rho = abs(x)
        phi = x >= 0 ? 0.0 : Float64(π)
        Er, Ep, Ez, Hr, Hp, Hz = field_amplitudes(rho, phi)
        ex, ey = to_cartesian(Er, Ep, phi)
        hx, hy = to_cartesian(Hr, Hp, phi)
        if mode == :TE
            Camp[i]  = ey        # Ey（面外）
            Axamp[i] = hx        # Hx
            Azamp[i] = Hz        # Hz
        else
            Camp[i]  = hy        # Hy（面外）
            Axamp[i] = ex        # Ex
            Azamp[i] = Ez        # Ez
        end
    end
    clabel = mode == :TE ? "E_y" : "H_y"
    tlabel = mode == :TE ? "arrows: (H_z, H_x)" : "arrows: (E_z, E_x)"
    Cmax = maximum(abs.(Camp))
    Amax = maximum(sqrt.(abs.(Axamp).^2 .+ abs.(Azamp).^2))

    xq_idx = round.(Int, range(6, Nx-5, length=9))
    zq = range(0, 2*lam_g, length=17)

    anim = @animate for k in 0:nframes-1
        wt = 2π * k / nframes
        Cinst = [real(Camp[i] * exp(1im*(wt - beta*z)))
                 for i in 1:Nx, z in zs] ./ Cmax
        heatmap(zs .* 1e3, xs .* 1e3, Cinst,
            c=:RdBu, clim=(-1, 1), aspect_ratio=:equal,
            xlabel="z (mm)", ylabel="x (mm)",
            colorbar_title=" $(clabel) (normalized)",
            title=@sprintf("%s%d%d longitudinal (y=0), %s  (ωt = %.2fπ)",
                           mode, m, n, tlabel, 2k/nframes))
        Zq = Float64[]; Xq = Float64[]; U = Float64[]; V = Float64[]
        arrow_scale = 0.08 * 2*lam_g * 1e3 / Amax
        for z in zq, i in xq_idx
            pz = exp(1im*(wt - beta*z))
            push!(Zq, z*1e3); push!(Xq, xs[i]*1e3)
            push!(U, real(Azamp[i] * pz) * arrow_scale)
            push!(V, real(Axamp[i] * pz) * arrow_scale)
        end
        quiver!(Zq, Xq, quiver=(U, V), color=:black, linewidth=1.2)
    end
    gif(anim, fname, fps=18)
end

# ========= 実行 =========
make_cross_section_gif()
make_longitudinal_gif()