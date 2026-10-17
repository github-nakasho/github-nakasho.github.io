using Plots


function momentum(kappa, x)
  return x^3 - kappa * x
end

function H(kappa, x)
  p = momentum(kappa, x)
  return p * x + kappa / 2 * x^2 - x^4 / 4
end


# set x coordinate
xmax = 2.0
xmin = -2.0
nx = 100
xs = range(xmin, xmax, length=nx)
# set parameter kappa
kappa = 2.0
Hs = H.(kappa, xs)
ps = momentum.(kappa, xs)
# make plot
plot(ps, Hs, linewidth=3, xlabel="p", ylabel="H", aspect_ratio=:equal, label=false)
savefig("classical_time_crystal.png")
