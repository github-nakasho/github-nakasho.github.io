using Plots

# set theta coordinate
thetamax = pi
thetamin = 0
ntheta = 100
thetas = range(thetamin, thetamax, length=ntheta)
# set parametars 
rg = 1
a = 0.45
# compute ergo sphere radius
xergos = zeros(Float64, ntheta)
zergos = zeros(Float64, ntheta)
xhorizons = zeros(Float64, ntheta)
zhorizons = zeros(Float64, ntheta)
for i in 1:ntheta
    rergo = (rg+sqrt(rg^2-4*a^2*cos(thetas[i])^2)) / 2
    xergos[i] = rergo * sin(thetas[i])
    zergos[i] = rergo * cos(thetas[i])
    rhorizon = (rg+sqrt(rg^2-4*a^2)) / 2
    xhorizons[i] = rhorizon * sin(thetas[i])
    zhorizons[i] = rhorizon * cos(thetas[i])
end
# make x < 0 region
xergos_final = [xergos; -reverse(xergos)]
zergos_final = [zergos; reverse(zergos)]
xhorizons_final = [xhorizons; -reverse(xhorizons)]
zhorizons_final = [zhorizons; reverse(zhorizons)]
# make ergosphere plot
plot(xergos_final, zergos_final, xlim=[-rg, rg], ylim=[-rg, rg], linewidth=3, label="ergosphere", legend=:bottomright, xlabel="x", ylabel="z", aspect_ratio=:equal)
plot!(xhorizons_final, zhorizons_final, linewidth=3, label="horizon")
savefig("ergo.png")
