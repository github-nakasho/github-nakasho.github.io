using Plots
gr()


# define the two-power density model
function two_power(alpha, beta, a, r)
    return 1.0 ./ ((r./a).^alpha .* (1.0.+r./a).^(beta-alpha))
end

# set array for mu
mu_min = 0.0
mu_max = 1.0
mu_len = 256
mu_array = range(mu_min, mu_max, length=mu_len)
A_array = 3.0 .* (1.0 .+ mu_array) ./ (4.0 .+ mu_array .+ mu_array.^2)
beta_array = (1.0 .- sqrt.(1.0 .- A_array.^2)) ./ A_array
print(beta_array)
# visualize Voigt function for each a
# plot(array_r, two_power(1.0, 4.0, a, array_r), linewidth=3, xscale=:log10, yscale=:log10, xlabel="Log r", ylabel="Log density", label="Hernquist")
# plot!(array_r, two_power(2.0, 4.0, a, array_r), linewidth=3, label="Jaffe")
# plot!(array_r, two_power(1.0, 3.0, a, array_r), linewidth=3, label="NFW")
# savefig("two_power_density.png")