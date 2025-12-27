using SpecialPolynomials
using Plots
gr()

# set z-coordinate
len_z = 200
min_z = -5.0
max_z = 5.0
array_z = range(min_z, max_z, length=len_z)
# set empty plot
plt = plot()
for n in 0:4
    # make Hermite polynomial basis for specific n
    h = Basis(Hermite, n)
    # compute wavefunction of 1-d harmonic oscillator
    psi = 1.0 / sqrt(sqrt(pi)*2^n*factorial(n)) .* h.(array_z) .* exp.(-array_z.^2 / 2)
    # make string for plot label
    index = "n = " * string(n)
    # compute Hermite polynomial and make plots
    plot!(plt, array_z, psi, linewidth=3, xlims=(min_z, max_z), ylims=(-1.0, 1.0), xlabel="z", label=index)
end
# save plot figure
savefig("hermite_02.png")
