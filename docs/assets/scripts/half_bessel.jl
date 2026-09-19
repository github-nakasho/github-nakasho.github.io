using Plots
using SpecialFunctions

# set x coordinate
xmax = 15.0
xmin = 0.01
nx = 1000
xs = range(xmin, xmax, length=nx)
# initialize plot
p = plot()
# get half bessel function
ys = besselj.(-5/2, xs)
plot!(xs, ys, xlim=[xmin, xmax], ylim=[-1.5, 1.5], linewidth=3, label="-5/2", legend=:topright, xlabel="z", ylabel="Jν", )
# get half bessel function
ys = besselj.(-3/2, xs)
plot!(xs, ys, xlim=[xmin, xmax], linewidth=3, label="-3/2")
# get half bessel function
ys = besselj.(-1/2, xs)
plot!(xs, ys, xlim=[xmin, xmax], linewidth=3, label="-1/2")
# get half bessel function
ys = besselj.(1/2, xs)
plot!(xs, ys, xlim=[xmin, xmax], linewidth=3, label="1/2")
# get half bessel function
ys = besselj.(3/2, xs)
plot!(xs, ys, xlim=[xmin, xmax], linewidth=3, label="3/2")
# get half bessel function
ys = besselj.(5/2, xs)
plot!(xs, ys, xlim=[xmin, xmax], linewidth=3, label="5/2")
# make Newtonian plot
savefig(p, "half_bessel.png")
