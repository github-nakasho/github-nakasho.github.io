using Plots
gr()


# compute effective potential
function compute_density(q, x, y)
    nume = (2*q^2+1) + x^2 + (2-1.0/q^2) * y^2
    deno = (1+x^2+y^2/q^2)^2
    return nume / deno / q^2
end

# set the number of grids
nx = 256
ny = 256
# set (x, y) cartesian coordinates
xmin = -10
xmax = 10
ymin = -10
ymax = 10
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
# set input parameter 
q = 0.95
###### main loop #####
densities = []
for y in ys
    for x in xs
        # compute effective potential
        density = log10(compute_density(q, x, y))
        append!(densities, density)
    end 
end
##### main loop end #####
# make density contour
density_min = -3
density_max = 1
contour(xs, ys, map(x->ifelse(x>density_min ,x ,density_min), densities), linewidth=0, levels=10, clims=(density_min, density_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel="R", ylabel="z", title="Log(density)")
savefig("log_density_095.png")
