using Plots
gr()

len = 200
omega = range(0.0, 6.0, length=len)
gamma = 0.5
rayleigh = omega.^4 ./ ((omega.^2 .- 1).^2 .+ gamma * omega.^2)
plot(omega, rayleigh, linewidth=3, xlabel=raw"\omega", ylabel=raw"\sigma (\omega) / \sigma_{T}", label=false)
savefig("rayleigh.png")