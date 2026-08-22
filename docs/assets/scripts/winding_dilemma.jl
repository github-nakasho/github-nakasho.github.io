using Plots


# compute position of particle
function position(R, t, p)
    x = R .* cos.(t./R.+p)
    y = R .* sin.(t./R.+p)
    return (x, y)
end


# set the number of particles
num_particles = 500
# set the plot range 
xmax = 0.5
ymax = 0.5
# set the radius of particles
radius1 = range(xmax, 0.1, length=num_particles)
phase1 = fill(pi/2, num_particles)
radius2 = range(0.1, xmax, length=num_particles)
phase2 = fill(3pi/2, num_particles)

# set time span
delta_t = 0.01
# set max steps
max_n = 300

# main loop for time evolution
a = Animation()
for n in 0:max_n
    t = n * delta_t
    (X1, Y1) = position(radius1, t, phase1)
    (X2, Y2) = position(radius2, t, phase2)
    plot1 = plot(X1, Y1, xlims=(-xmax, xmax), ylims=(-ymax, ymax), linewidth=3, legend=false, aspect_ratio=:equal)
    plot!(plot1, X2, Y2, xlims=(-xmax, xmax), ylims=(-ymax, ymax), linewidth=3)
    frame(a, plot1)
end
# convert animation frame to gif
gif(a, "winding_dilemma.gif", fps=30)
