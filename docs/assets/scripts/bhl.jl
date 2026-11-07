using LaTeXStrings
using Plots
gr()


# compute nu for dnu/dxi = 0 (+)
function compute_nu_p(alpha, xi)
    try return 0.5 + sqrt(0.25 - (xi - 1) / (alpha * xi^2))
    catch e
        if isa(e, DomainError)
            return NaN    
        else 
            rethrow(e)
        end
    end
end

# compute nu for dnu/dxi = 0 (-)
function compute_nu_m(alpha, xi)
    try return 0.5 - sqrt(0.25 - (xi - 1) / (alpha * xi^2))
    catch e
        if isa(e, DomainError)
            return NaN    
        else 
            rethrow(e)
        end
    end
end

# set the number of grids
nxi = 512
# set (xi, nu) cartesian coordinates
ximin = 0.01
ximax = 10.0
numin = -1.0
numax = 1.0
xis = range(ximin, ximax, length=nxi)
# set input parameter 
alphas = [1.1, 0.9]
###### main loop #####
solps = []
solms = []
for alpha in alphas
    for xi in xis
        # compute effective potential
        solp = compute_nu_p(alpha, xi)
        append!(solps, solp)
        solm = compute_nu_m(alpha, xi)
        append!(solms, solm)
    end 
end
solps_final = reshape(solps, nxi, 2)
solms_final = reshape(solms, nxi, 2)
##### main loop end #####
# make plot
subplt1 = plot(xis, solps_final[:, 1], ylims=(-1.0, 1.0), label=false, xlabel=L"\xi", ylabel=L"\nu", title=L"\alpha > 1", c=1, lw=3, fillrange=0.5, fillalpha=0.2)
plot!(xis, solms_final[:, 1], label=false, c=1, lw=3, fillrange=0.5, fillalpha=0.2)
plot!(annotations=(7.5, 0.5, (L"\frac{d\nu}{d\xi}>0", 10, 0.0)))
plot!(annotations=(7.5, -0.5, (L"\frac{d\nu}{d\xi}<0", 10, 0.0)))
subplt2 = plot(xis, solps_final[:, 2], ylims=(-1.0, 1.0), label=false, xlabel=L"\xi", ylabel=L"\nu", title=L"\alpha < 1", c=1, lw=3, fillrange=0.5, fillalpha=0.2)
plot!(xis, solms_final[:, 2], label=false, c=1, lw=3, fillrange=0.5, fillalpha=0.2)
plot!(annotations=(7.5, 0.5, (L"\frac{d\nu}{d\xi}>0", 10, 0.0)))
plot!(annotations=(7.5, -0.5, (L"\frac{d\nu}{d\xi}<0", 10, 0.0)))
plt = plot(subplt1, subplt2, layout=(1, 2), size=(900, 450))
savefig(plt, "bhl.png")
