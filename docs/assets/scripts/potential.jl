using Plots

# compute Newtonian gravitational potential
function Phi(r)
    return - 1 / r 
end

# compute pseudo Newtonian gravitaional potential
function PhiPN(r)
    rg = 1
    if r <= rg
        PhiPN = - prevfloat(typemax(Float64))
    else
        PhiPN = - 1 / (r-rg)
    end
    return PhiPN
end

# compute fully GR gravitational potential
function PhiGR(r)
    rg = 1
    if r <= rg
        PhiGR = - prevfloat(typemax(Float64))
    else 
        PhiGR = log(1-rg/r)
    end
    return PhiGR
end

# set r coordinate
rmax = 5.01
rmin = 0.01
nr = 1000
rs = range(rmin, rmax, length=nr)
# get potential values
phi = Phi.(rs)
phipn = PhiPN.(rs)
phigr = PhiGR.(rs)
# set Schwartzschild radius for plot
rg1 = [1, 1]
rg2 = [-5, 0]
# make Newtonian plot
plot(rs, phi, xlim=[0, 5], ylim=[-5, 0], linewidth=3, label="Newtonian", legend=:bottomright, xlabel="r", ylabel="Φ")
plot!(rs, phipn, linewidth=3, label="Pseudo Newtonian")
plot!(rs, phigr, linewidth=3, label="Fully GR")
plot!(rg1, rg2, linestyle=:dot, linewidth=2, label="")
savefig("potential.png")
