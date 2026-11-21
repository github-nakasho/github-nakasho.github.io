using Plots
gr()


# define the two-power density model
function two_power(alpha, beta, a, r)
    return 1.0 ./ ((r./a).^alpha .* (1.0.+r./a).^(beta-alpha))
end

# set a
a = 1.0
# set array for r
rmin = -3
rmax = 3
len_r = 256
array_r = 10.0 .^ range(rmin, rmax, length=len_r)
# visualize Voigt function for each a
plot(array_r, two_power(1.0, 4.0, a, array_r), linewidth=3, xscale=:log10, yscale=:log10, xlabel="Log r", ylabel="Log density", label="Hernquist")
plot!(array_r, two_power(2.0, 4.0, a, array_r), linewidth=3, label="Jaffe")
plot!(array_r, two_power(1.0, 3.0, a, array_r), linewidth=3, label="NFW")
savefig("two_power_density.png")