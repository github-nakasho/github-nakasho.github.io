using LaTeXStrings
using Polynomials
using Plots
using Roots
gr()


z0 = 1
zp = 2
zpp = 1
me = 9.11e-28
mp = 1.67e-24
kb = 1.38e-16
h = 6.63e-27
ev = 1.6e-12
chi0 = 24.587
chip = 54.416
nhe = 1.0e-8 / (4*mp)
nt = 1000
tmin = 10000
tmax = 70000
ts = range(tmin, tmax, length=nt) / 11600
xsols = []
ysols = []
zsols = []
a = 2.0 * zp / z0 * (125*10^13/(2pi))^1.5 / nhe
b = 2.0 * zpp / zp * (125*10^13/(2pi))^1.5 / nhe
for t in ts
    cp = t ^ 1.5 * exp(-chi0/t) * a
    cpp = t ^ 1.5 * exp(-chip/t) * b
    coeff_1 = - cp * cpp ^ 2 / cp / cpp
    coeff_2 = (2.0 + cpp) * cp * cpp / cp / cpp
    coeff_3 = - cp / cp / cpp
    coeff_4 = (4.0 * cpp - cp) / cp / cpp
    p = Polynomial([coeff_1, coeff_2, coeff_3, coeff_4])
    dp = derivative(p)
    zsol = find_zero((p, dp), 0.0, Roots.Newton(), maxiters=1000)
    append!(zsols, zsol)
    ysol = 2 * zsol ^ 2 / (cpp - zsol)
    append!(ysols, ysol)
    xsol = 1.0 - ysol - zsol
    append!(xsols, xsol)
end
ts *= 11600
plot(ts, zsols, lw=3, label=L"\mathrm{He}^{++}", legend=:right, xlabel="T [K]", ylabel="Fraction")
plot!(ts, ysols, lw=3, label=L"\mathrm{He}^+")
plot!(ts, xsols, lw=3, label=L"\mathrm{He}^0")
savefig("saha_helium.png")
