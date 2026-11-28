using Plots
gr()

len = 200
omega = range(0.0, 4.0, length=len)
omega_0 = 2.0
gamma = 1.0
lorentz = gamma / (2pi) ./ ((omega .- omega_0).^2 .+ (gamma/2)^2)
gaussian = 1.0 .* exp.(-(omega .- omega_0).^2 ./ 0.2)

absorption = zeros(Float64, len)
for i = 1:len
    if gaussian[i] > lorentz[i]
        absorption[i] = gaussian[i]
    else
        absorption[i] = lorentz[i]
    end
end

plot(omega, lorentz, linewidth=3, linestyle=:dash, xlabel="ω", ylabel="Line Profile", label="Damping profile")
plot!(omega, gaussian, linewidth=3, linestyle=:dash, label="Doppler profile")
plot!(omega, absorption, linewidth=3, label="Final profile")
savefig("absorption_line_coeff_03.png")
