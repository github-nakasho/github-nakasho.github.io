using LaTeXStrings
using Polynomials
using Plots
gr()


nt = 256
tmin = 5000
tmax = 25000
ts = range(tmin, tmax, length=nt)
rho = 1.0e-9
xsols = []
ysols = []
for t in ts
    coeff_1 = - 4.01e-9 * t ^ 1.5 / rho * exp(-1.578e+5/t)
    coeff_2 = - coeff_1
    coeff_3 = 1.0
    p = Polynomial([coeff_1, coeff_2, coeff_3])
    sols = roots(p)
    if sols[1] <= 1.0 && sols[1] >= 0.0
        append!(ysols, sols[1])
    else
        append!(ysols, sols[2])
    end   
    append!(xsols, 1-ysols[end])
end
plot(ts, ysols, lw=3, legend=:inside, xlabel="T [K]", ylabel="Fraction", label=L"\mathrm{H}^+")
plot!(ts, xsols, lw=3, label=L"\mathrm{H}^0")
savefig("saha_hydrogen.png")
