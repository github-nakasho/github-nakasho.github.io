using Plots
using LaTeXStrings
gr()


# define a circular velocity of exponential disk
function kuzmin(a, R)
    return R.^2 ./ (R.^2 .+ a^2).^1.5
end

# set a
a = 1.0
# set array for y
Rmin = 0
Rmax = 5
len_R = 256
array_R = range(Rmin, Rmax, length=len_R)
# visualize circular velocity
plot(array_R, kuzmin(a, array_R), linewidth=3, xlabel=L"R", ylabel=L"v_c^2", label=false)
savefig("rotation_velocity_kuzmin.png")