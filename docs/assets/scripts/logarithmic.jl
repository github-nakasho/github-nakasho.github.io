using Plots
using LaTeXStrings
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
c1 = contour(xs, ys, map(x->ifelse(x>density_min ,x ,density_min), densities), linewidth=0, levels=10, clims=(density_min, density_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel=L"R/R_c", ylabel=L"z/R_c", title=L"\mathrm{Log}(\rho_\mathrm{L}), q = 0.95")

# set (x, y) cartesian coordinates
xmin = -15
xmax = 15
ymin = -6
ymax = 6
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
# set input parameter 
q = 0.7
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
c2 = contour(xs, ys, map(x->ifelse(x>density_min ,x ,density_min), densities), linewidth=0, levels=10, clims=(density_min, density_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel=L"R/R_c", ylabel=L"z/R_c", title=L"\mathrm{Log}(\rho_\mathrm{L}), q = 0.7")

l = @layout [a{0.7h}; b{0.3h}]

plot(c1, c2, layout=l)
savefig("log_density.png")
