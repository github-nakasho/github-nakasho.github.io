using Plots

# compute Newtonian gravitational potential
function Psi(r, ell)
    return - 1 / r + ell ^ 2 / (2*r^2)
end

# compute pseudo Newtonian gravitaional potential
function PsiPN(r, ell)
    rg = 1
    if r <= rg
        PhiPN = - prevfloat(typemax(Float64))
    else
        PhiPN = - 1 / (r-rg) + ell ^ 2 / (2*r^2)
    end
    return PhiPN
end

# compute fully GR gravitational potential
function PsiGR(r, ell)
    rg = 1
    PhiGR = (1-rg/r) * (1+ell^2/(2*r^2)) - 1
    return PhiGR
end

# set r coordinate
rmax = 20.01
rmin = 0.01
nr = 1000
rs = range(rmin, rmax, length=nr)
# set angular momentum
ell = sqrt(6)
# get potential values
psi = Psi.(rs, ell)
psipn = PsiPN.(rs, ell)
psigr = PsiGR.(rs, ell)
# set Schwartzschild radius for plot
rg1 = [1, 1]
rg2 = [-0.5, 0.5]
# make Newtonian plot
plot(rs, psi, xlim=[rmin, rmax], ylim=[-0.3, 0.1], linewidth=3, label="Newtonian", legend=:bottomright, xlabel="r", ylabel="Ψ")
plot!(rs, psipn, linewidth=3, label="Pseudo Newtonian")
plot!(rs, psigr, linewidth=3, label="Fully GR")
plot!(rg1, rg2, linestyle=:dot, linewidth=2, label="")
savefig("effective_pot.png")
