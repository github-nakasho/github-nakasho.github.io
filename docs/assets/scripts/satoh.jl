using Plots
gr()


# compute effective potential
function compute_density(boa, x, y)
    z2b2 = y^2 + boa^2
    S = sqrt(x^2 + y^2 + (1+2*sqrt(z2b2)))
    return boa^2 / (S^3*z2b2) * (1/sqrt(z2b2)+ 3*(1-(x^2+y^2)/S^2))
end

# set the number of grids
nx = 256
ny = 256
# set (x, y) cartesian coordinates
xmin = -30
xmax = 30
ymin = -20
ymax = 20
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
# set input parameter 
boa = 10
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
density_min = -5.5
density_max = -1.5
contour(xs, ys, map(x->ifelse(x>density_min ,x ,density_min), densities), linewidth=0, levels=10, clims=(density_min, density_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel="R", ylabel="z", title="Log(density)")
savefig("satoh_density_02.png")
