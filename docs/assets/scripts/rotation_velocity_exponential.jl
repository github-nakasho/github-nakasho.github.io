using Plots
using SpecialFunctions
using LaTeXStrings
gr()


# define a circular velocity of exponential disk
function exponential_disk(y)
    return y.^2 .* (besseli.(0, y) .* besselk.(0, y) - besseli.(1, y) .* besselk.(1, y))
end

# set a
a = 1.0
# set array for y
ymin = 0.01
ymax = 5
len_y = 256
array_y = range(ymin, ymax, length=len_y)
# visualize circular velocity
plot(array_y, exponential_disk(array_y), linewidth=3, xlabel=L"y", ylabel=L"v_c^2", label=false)
savefig("rotation_velocity_exponential.png")