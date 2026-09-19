using LaTeXStrings
using Plots
gr()


nmax = 100
xs = range(0.1, 1.0, length=nmax)
omega = 1.0 ./ xs
plus = (1.0+1.0/sqrt(2)) ./xs
minus = (1.0-1.0/sqrt(2)) ./xs
y = 2.0
omegap = fill(y, nmax)
plot(xs, omega, linewidth=2, label=L"\Omega", xlabel="R", ylabel=L"Pattern speed")
plot!(xs, plus, linewidth=2, label=L"\Omega + \kappa / 2")
plot!(xs, minus, linewidth=2, label=L"\Omega - \kappa / 2")
plot!(xs, omegap, linewidth=2, linestyle=:dash, label=L"\Omega_p")
scatter!((1.0/y, y), markersize=7, color=:black, label=false)
scatter!(((1.0+1.0/sqrt(2))/y, y), markersize=7, color=:black, label=false)
scatter!(((1.0-1.0/sqrt(2))/y, y), markersize=7, color=:black, label=false)
plot!(annotations=(1.0/y, y+0.2, ("CR", 10, 0.0, :bottom)))
plot!(annotations=((1.0+1.0/sqrt(2))/y, y+0.2, ("OLR", 10, 0.0, :bottom)))
plot!(annotations=((1.0-1.0/sqrt(2))/y, y+0.2, ("ILR", 10, 0.0, :bottom)))
savefig("kinematic_density_wave.png")