using Plots
using SpecialFunctions
using Printf

# compute gas density of standard disk
function standard_disk(t, R)
  return R^(-0.25) / t * exp(-(R^2+1)/t) * besseli(0.25, 2*R/t)
end

# set R coordinate
Rmax = 2.0
Rmin = 0.0
nR = 200
Rs = range(Rmin, Rmax, length=nR)
# set t
tmax = 2.0
tmin = 0.01
nt = 200
ts = range(tmin, tmax, length=nt)
# initialize animation frame
a = Animation()
# set zero vector for filling image
density0 = zeros(nR)
##### main loop for gif animation start #####
for t in ts
  # get gas density
  density = standard_disk.(t, Rs)
  # set label for plot
  label_string = string("t = " , @sprintf("%6.2f", t))
  # make plot
  p_gif = plot(Rs, density, fillrange=density0, fillalpha=0.25, xlim=[Rmin, Rmax], ylim=[0, 1.2], linewidth=3, legend=:topright, xlabel="R", ylabel="Σ", label=label_string)
  # convert to animation frame
  frame(a, p_gif)
end
###### main loop for gif animation end ######
# convert animation frame to gif
gif(a, "standard_disk.gif", fps=30)


# set time step list
ts = [0.05, 0.15, 0.25, 0.35, 0.45, 0.55, 0.65]
# set the number of time step
nstep = length(ts)
# make color palette
color_list = reshape(range(colorant"purple", stop=colorant"green", length=nstep), 1, nstep);
# initialize array of densities and labels
densities = []
for n in 1:nstep
  # get gas density
  density = standard_disk.(ts[n], Rs)
  # add to array
  push!(densities, density)
end
# make plot
p_snap = plot(Rs, densities, linecolor=color_list, xlim=[Rmin, Rmax], ylim=[0, 1.2], linewidth=3, legend=:topright, xlabel="R", ylabel="Σ", label=false)
# save plot
savefig(p_snap, "standard_disk_03.png")
