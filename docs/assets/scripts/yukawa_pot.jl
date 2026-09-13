using Plots
gr()

len = 100
r = range(0.1, 2.0, length=len)
coulomb = 1.0 ./ r
yukawa = exp.(-r) ./ r
plot(r, coulomb, linewidth=3, xlabel="r", ylabel="Potential", label="Coulomb")
plot!(r, yukawa, linewidth=3, label="Yukawa")
savefig("yukawa_pot_02.png")