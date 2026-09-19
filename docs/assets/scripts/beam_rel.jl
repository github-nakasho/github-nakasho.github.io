using LaTeXStrings
using Plots
using SpecialFunctions
gr()

len_z = 100
zmax = 4.0
zmin = 0.01
zs = range(zmin, zmax, length=len_z)
z0 = 1.0
P0 = 1.0
Pext = P0 .* exp.(-zs ./ z0)
rho0 = 1.0
gamma = 5.0 / 3.0
Mdot = 1.0

sqrt_ratio_P = sqrt.(Pext ./ P0)
A = 1.0 ./ sqrt_ratio_P ./ sqrt.(1.0 .- sqrt_ratio_P)
print(A)
# plot(zs, v, linewidth=3, xlabel=L"z/z_0", label=L"v", foreground_color_text=false, legend=:topright)
# plot!(zs, A, linewidth=3, label=L"A")
# savefig("beam_nr.png")

