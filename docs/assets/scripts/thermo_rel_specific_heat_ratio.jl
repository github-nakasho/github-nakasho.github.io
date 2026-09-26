using LaTeXStrings
using Plots
using SpecialFunctions
gr()

len_T = 100
Tmax = 2.5
Tmin = -2.5
Ts = 10.0 .^ range(Tmin, Tmax, length=len_T)
oneTs = 1.0 ./ Ts
fifththird = fill(5.0/3.0, len_T)
forththird = fill(4.0/3.0, len_T)
gamma = 1.0 .+ 4.0 .* Ts .* besselk.(2, oneTs) ./ (3.0 .* besselk.(3, oneTs) .+ besselk.(1, oneTs) - 4.0 .* besselk.(2, oneTs))
h = 2.5 .* Ts .+ sqrt.(9.0/4.0 .* Ts .^ 2 .+ 1.0)
gamma_tm = (h .- 1.0) ./ (h .- 1.0 .- Ts)
plot(Ts, gamma, linewidth=3, xlabel=L"T_\ast", ylabel=L"\Gamma", label="Synge", xscale=:log10, legend=:right)
plot!(Ts, gamma_tm, linewidth=3, label="TM")
plot!(Ts, fifththird, linewidth=3, linestyle=:dash, label=false)
plot!(Ts, forththird, linewidth=3, linestyle=:dash, label=false)
savefig("thermo_dynamics_rel_01.png")