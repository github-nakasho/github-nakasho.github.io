using Plots
gr()


# compute effective potential
function compute_density(boa, x, y)
    y2boa2 = y^2 + boa^2
    nume = x^2 + (1+3*sqrt(y2boa2)) * (1+sqrt(y2boa2))^2
    deno = (x^2+(1+sqrt(y2boa2))^2)^2.5 * y2boa2^1.5
    return boa^2 * nume / deno
end

# set the number of grids
nx = 256
ny = 256
# set (x, y) cartesian coordinates
xmin = -6
xmax = 6
ymin = -1.5
ymax = 1.5
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
# set input parameter 
boa = 0.2
###### main loop #####
densities = []
for y in ys
    for x in xs
        # compute effective potential
        density = log10(compute_density(boa, x, y))
        append!(densities, density)
    end
end
##### main loop end #####
# make density contour
density_min = -3.0
density_max = 0.5
contour(xs, ys, map(x->ifelse(x>density_min ,x ,density_min), densities), linewidth=0, levels=10, clims=(density_min, density_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel="R", ylabel="z", title="Log(density)")
savefig("miyamoto_nagai_density_02.png")
