using Plots
gr()


# compute effective potential
function compute_density(a, b, x, y)
    nume = a * x^2 + (a+3*sqrt(y^2+b^2)) * (a+sqrt(y^2+b^2))^2
    deno = (x^2+(a+sqrt(y^2+b^2))^2)^2.5 * (y^2+b^2)^1.5
    return b^2 * nume / deno
end

# set the number of grids
nx = 256
ny = 256
# set (x, y) cartesian coordinates
xmin = -1.5
xmax = 1.5
ymin = -0.5
ymax = 0.5
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
# set input parameter 
a = 1.0
b = 0.2
###### main loop #####
densities = []
for y in ys
    for x in xs
        # compute effective potential
        density = log10(compute_density(a, b, x, y))
        append!(densities, density)
    end
end
##### main loop end #####
# make density contour
density_min = -0.5
density_max = 0.75
contour(xs, ys, map(x->ifelse(x>density_min ,x ,density_min), densities), linewidth=0, levels=10, clims=(density_min, density_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel="R", ylabel="z", title="Log(density)")
savefig("miyamoto_nagai_density_02.png")
