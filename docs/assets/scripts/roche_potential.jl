using Plots
gr()


# compute effective potential
function Effective_pot(a, b, x, y)
    dist1 = sqrt((x-b)^2+y^2)
    dist2 = sqrt((x+a)^2+y^2)
    return - a / dist1 - b / dist2 - 0.5 * (x^2 + y^2)
end

# set the number of grids
nx = 200
ny = 200
# set (x, y) cartesian coordinates
xmin = -2.0
xmax = 2.0
ymin = -2.0
ymax = 2.0
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
# set input parameter 
q = 0.5
# compute alpha and beta
alpha = 1.0 / (1.0 + q)
beta = q / (1.0 + q)
###### main loop #####
psis = []
for y in ys
    for x in xs
        # compute effective potential
        psi = Effective_pot(alpha, beta, x, y)
        append!(psis, psi)
    end
end
##### main loop end #####
# make density contour
pot_min = -4.0
pot_max = -1.3
contour(xs, ys, map(x->ifelse(x>pot_min ,x ,pot_min), psis), linewidth=0, levels=20, clims=(pot_min, pot_max), fill=true, 
        aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel="X", ylabel="Y", title="Effective potential")
savefig("roche_pot.png")
