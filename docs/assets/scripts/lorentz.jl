using Plots
gr()

len = 200
omega = range(0.0, 4.0, length=len)
omega_0 = 2.0
gamma = 1.0
lorentz = gamma / (2pi) ./ ((omega .- omega_0).^2 .+ (gamma/2)^2)
plot(omega, lorentz, linewidth=3, xlabel="ω", ylabel="I(ω)", label=false)
savefig("absorption_line_coeff_01.png")
