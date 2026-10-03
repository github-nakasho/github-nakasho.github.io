using Plots
using LaTeXStrings
using SpecialFunctions
using Roots
using Printf
gr()

# ========= 物理定数 =========
c0   = 2.998e8
mu0  = 4π * 1e-7
eps0 = 1 / (mu0 * c0^2)
eta0 = sqrt(mu0 / eps0)

# ========= 導波管とモードの設定 =========
a_in  = 4.0e-3    # 内導体半径 [m]
b_out = 12.0e-3   # 外導体半径 [m]
mode  = :TE       # :TEM, :TE, :TM
m, n  = 1, 1      # 方位角・動径モード指数 (TEMでは無視)
f     = 12.0e9    # 周波数 [Hz]

om = 2π * f
k0 = om / c0

# ---- ベッセル導関数 ----
dbesselj(m, x) = 0.5 * (besselj(m-1, x) - besselj(m+1, x))
dbessely(m, x) = 0.5 * (bessely(m-1, x) - bessely(m+1, x))

# ---- 分散方程式の左辺 ----
function dispersion(kc)
    if mode == :TM
        return besselj(m, kc*b_out) * bessely(m, kc*a_in) -
               bessely(m, kc*b_out) * besselj(m, kc*a_in)
    else  # :TE
        return dbesselj(m, kc*b_out) * dbessely(m, kc*a_in) -
               dbessely(m, kc*b_out) * dbesselj(m, kc*a_in)
    end
end

# ---- 第 n 根を探す ----
function find_kc(n)
    kc = 1.0 / b_out          # 掃引開始
    dk = 0.5 / b_out
    count = 0
    while count < n
        while dispersion(kc) * dispersion(kc + dk) > 0
            kc += dk
        end
        root = find_zero(dispersion, (kc, kc + dk))
        count += 1
        count == n && return root
        kc = root + dk
    end
end

if mode == :TEM
    kc, fc, beta = 0.0, 0.0, k0
else
    kc   = find_kc(n)
    fc   = c0 * kc / (2π)
    @assert f > fc @sprintf("f = %.2f GHz < fc = %.2f GHz です", f/1e9, fc/1e9)
    beta = sqrt(k0^2 - kc^2)
end
lam_g = 2π / beta
@printf("mode = %s, kc·a = %.3f, fc = %.2f GHz, λg = %.2f mm\n",
        string(mode), kc*a_in, mode == :TEM ? 0.0 : fc/1e9, lam_g*1e3)

# ---- 動径関数とその導関数 ----
if mode == :TM
    Ya, Ja = bessely(m, kc*a_in), besselj(m, kc*a_in)
    Rfun(rho)  = besselj(m, kc*rho)*Ya - bessely(m, kc*rho)*Ja
    dRfun(rho) = dbesselj(m, kc*rho)*Ya - dbessely(m, kc*rho)*Ja  # d/d(kcρ)
elseif mode == :TE
    dYa, dJa = dbessely(m, kc*a_in), dbesselj(m, kc*a_in)
    Rfun(rho)  = besselj(m, kc*rho)*dYa - bessely(m, kc*rho)*dJa
    dRfun(rho) = dbesselj(m, kc*rho)*dYa - dbessely(m, kc*rho)*dJa
end

# ========= 電磁場の複素振幅（円筒座標成分） =========
function field_amplitudes(rho, phi)
    if mode == :TEM
        Erho = 1.0 / rho + 0.0im
        Hphi = Erho / eta0
        return Erho, 0.0im, 0.0im, 0.0im, Hphi, 0.0im
    end
    R  = Rfun(rho)
    dR = dRfun(rho)
    if mode == :TE
        Erho =  1im*om*mu0*m/(kc^2*rho) * R  * sin(m*phi)
        Ephi =  1im*om*mu0/kc           * dR * cos(m*phi)
        Ez   =  0.0 + 0.0im
        Hrho = -1im*beta/kc             * dR * cos(m*phi)
        Hphi =  1im*beta*m/(kc^2*rho)   * R  * sin(m*phi)
        Hz   =  R * cos(m*phi) + 0.0im
    else  # :TM
        Erho = -1im*beta/kc             * dR * cos(m*phi)
        Ephi =  1im*beta*m/(kc^2*rho)   * R  * sin(m*phi)
        Ez   =  R * cos(m*phi) + 0.0im
        Hrho = -1im*om*eps0*m/(kc^2*rho)* R  * sin(m*phi)
        Hphi = -1im*om*eps0/kc          * dR * cos(m*phi)
        Hz   =  0.0 + 0.0im
    end
    return Erho, Ephi, Ez, Hrho, Hphi, Hz
end

to_cartesian(Fr, Fp, phi) = (Fr*cos(phi) - Fp*sin(phi),
                             Fr*sin(phi) + Fp*cos(phi))

# ========= ① 断面図GIF（円環領域） =========
function make_cross_section_gif(; fname="coax_cross.gif", nframes=36)
    N  = 141
    xs = range(-b_out, b_out, length=N)
    ys = range(-b_out, b_out, length=N)

    EX = zeros(ComplexF64, N, N); EY = zeros(ComplexF64, N, N)
    EZ = zeros(ComplexF64, N, N)
    inside = falses(N, N)
    for (j, x) in enumerate(xs), (i, y) in enumerate(ys)
        rho = hypot(x, y)
        (a_in <= rho <= b_out) || continue      # 円環マスク
        inside[i, j] = true
        phi = atan(y, x)
        Er, Ep, Ez, _, _, _ = field_amplitudes(rho, phi)
        EX[i, j], EY[i, j] = to_cartesian(Er, Ep, phi)
        EZ[i, j] = Ez
    end
    Emax = maximum(sqrt.(abs.(EX).^2 .+ abs.(EY).^2 .+ abs.(EZ).^2))

    # 矢印格子（円環内のみ）
    Xq = Float64[]; Yq = Float64[]
    EXq = ComplexF64[]; EYq = ComplexF64[]
    for rho in range(1.15a_in, 0.9b_out, length=5),
        phi in range(0, 2π*(1 - 1/24), length=24)
        Er, Ep, _, _, _, _ = field_amplitudes(rho, phi)
        ex, ey = to_cartesian(Er, Ep, phi)
        push!(Xq, rho*cos(phi)*1e3); push!(Yq, rho*sin(phi)*1e3)
        push!(EXq, ex); push!(EYq, ey)
    end
    arrow_scale = 0.13 * b_out * 1e3 / Emax

    th = range(0, 2π, length=200)
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
            title=@sprintf("coax %s%s  (ωt = %.2fπ)", string(mode),
                           mode == :TEM ? "" : "$(m)$(n)", 2k/nframes))
        plot!(b_out .* cos.(th) .* 1e3, b_out .* sin.(th) .* 1e3,
              color=:white, linewidth=2, label=false)
        plot!(a_in .* cos.(th) .* 1e3, a_in .* sin.(th) .* 1e3,
              color=:white, linewidth=2, label=false)
        u = real.(EXq .* ph) .* arrow_scale
        v = real.(EYq .* ph) .* arrow_scale
        quiver!(Xq, Yq, quiver=(u, v), color=:white, linewidth=1.2)
    end
    gif(anim, fname, fps=18)
end

# ========= ② 縦断面図GIF（x-z面, y=0） =========
function make_longitudinal_gif(; fname="coax_long.gif", nframes=36)
    Nx = 121
    xs = range(-b_out, b_out, length=Nx)
    zs = range(0, 2*lam_g, length=161)

    Camp  = zeros(ComplexF64, Nx)
    Axamp = zeros(ComplexF64, Nx)
    Azamp = zeros(ComplexF64, Nx)
    valid = falses(Nx)
    for (i, x) in enumerate(xs)
        rho = abs(x)
        (a_in <= rho <= b_out) || continue
        valid[i] = true
        phi = x >= 0 ? 0.0 : Float64(π)
        Er, Ep, Ez, Hr, Hp, Hz = field_amplitudes(rho, phi)
        ex, ey = to_cartesian(Er, Ep, phi)
        hx, hy = to_cartesian(Hr, Hp, phi)
        if mode == :TE
            Camp[i], Axamp[i], Azamp[i] = ey, hx, Hz
        elseif mode == :TM
            Camp[i], Axamp[i], Azamp[i] = hy, ex, Ez
        else  # TEM: カラー=Hφ(面外), 矢印=(Ez=0, Ex) → 電場は純横方向
            Camp[i], Axamp[i], Azamp[i] = hy, ex, 0.0im
        end
    end
    clabel = mode == :TE ? "E_y" : "H_y"
    Cmax = maximum(abs.(Camp[valid]))
    Amax = maximum(sqrt.(abs.(Axamp[valid]).^2 .+ abs.(Azamp[valid]).^2))

    xq_idx = [i for i in round.(Int, range(3, Nx-2, length=13)) if valid[i]]
    zq = range(0, 2*lam_g, length=17)

    anim = @animate for k in 0:nframes-1
        wt = 2π * k / nframes
        Cinst = [valid[i] ?
                 real(Camp[i] * exp(1im*(wt - beta*z))) / Cmax : NaN
                 for i in 1:Nx, z in zs]
        heatmap(zs .* 1e3, xs .* 1e3, Cinst,
            c=:RdBu, clim=(-1, 1), aspect_ratio=:equal,
            xlabel="z (mm)", ylabel="x (mm)",
            colorbar_title=" $(clabel) (normalized)",
            title=@sprintf("coax %s longitudinal  (ωt = %.2fπ)",
                           string(mode), 2k/nframes))
        Zq = Float64[]; Xq = Float64[]; U = Float64[]; V = Float64[]
        arrow_scale = 0.07 * 2*lam_g * 1e3 / Amax
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

make_cross_section_gif()
make_longitudinal_gif()