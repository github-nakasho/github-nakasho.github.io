using LaTeXStrings
using Plots
using SpecialFunctions
gr()

# set zetas
len_zeta = 256
zeta_max = 5
zeta_min = -5
zetas = range(zeta_min, zeta_max, length=len_zeta)
# define Faddeeva function
w(z) = erfcx(-im * z)
# define plasma dispersion function
Z(z) = im * sqrt(pi) * w(z)
# compute real part & imaginary part
ReZ = real.(Z.(zetas))
ImZ = imag.(Z.(zetas))

# make plot
p = plot(zetas, ReZ, label=L"\mathrm{Re}(Z)", linewidth=2, xlabel=L"x", ylabel=L"Z(x)", legend=:topright)
plot!(p, zetas, ImZ, label=L"\mathrm{Im}(Z)", linewidth=2)
hline!(p, [0.0], color=:gray, linestyle=:dot, label=false)
savefig(p, "plasma_dispersion_function.png")