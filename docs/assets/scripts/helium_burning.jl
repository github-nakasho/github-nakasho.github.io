using DifferentialEquations
using LaTeXStrings
using Plots

function helium!(du, u, p, t)
    rho = 1.0e+4
    T9 = 0.15
    mp = 1.673e-24
    MeV = 1.0e+6 * 1.602e-12
    Q3a = 7.275 * MeV 
    Qa12 = 7.162 * MeV
    Qa16 = 4.734 * MeV
    c3a = 30.6e+8 * rho^2 / Q3a * exp(-4.4027/T9) / T9^3
    ca12 = 1.0e+25 * rho / Qa12 * exp(-32.12/T9^(1/3)-(0.286*T9)^2) / T9^2
    ca16 = 6.7e+26 * rho / Qa16 * exp(-39.757/T9^(1/3)-(0.631*T9)^2) / T9^(2/3)
    du[1] = -4 * mp * (0.5*c3a*u[1]^3 + ca12*u[1]*u[2] + ca16*u[1]*u[3])
    du[2] = 12 * mp * (c3a*u[1]^3/6 - ca12*u[1]*u[2])
    du[3] = 16 * mp * (ca12*u[1]*u[2] - ca16*u[1]*u[3])
    du[4] = 20 * mp * ca16 * u[1] * u[3]
end

yr = pi * 10^7
u0 = [1.0; 0.0; 0.0; 0.0]
tspan = (0.0, 5.0e+7*yr)
prob = ODEProblem(helium!, u0, tspan)
sol = solve(prob)
plt = plot(sol.t/yr, sol', label=[L"X_4" L"X_{12}" L"X_{16}" L"X_{20}"], lw=3, 
            ylims=(1e-10, 1.0), yscale=:log10, xlims=(1e+2, 1e+8), xscale=:log10, 
            legend=:bottomleft, xlabel="t [yr]", ylabel="Mass fraction")
savefig(plt, "helium_burning.png")