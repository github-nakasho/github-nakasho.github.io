include("./const.jl")

using Plots


# compute integrand function
function f(hnu, x, inputs)
    M, Mdot, Rin = inputs
    T0 = (3*G*M*Mdot/(8*pi*sb*Rin^3))^0.25
    Teff = T0 * ((1.0-1.0/sqrt(x))/x^3)^0.25
    return x / (exp(hnu/(kb*Teff))-1.0)
end

# compute flux using trapezoidal rule
function calc_flux(xs, hnus, inputs)
    fluxs = []
    nx = length(xs)
    for hnu in hnus
        sum = 0.0
        for i in 1:nx-1
            sum += (xs[i+1]-xs[i]) * (f(hnu, xs[i+1], inputs)+f(hnu, xs[i], inputs)) / 2.0 
        end
        flux = 4 * pi * hnu^3 / (h*c)^2 * sum  
        push!(fluxs, flux)  
    end
    return fluxs
end

# set range of x (=R/Rin)
xout = 1.0e+4
xin = 1.001
nx = 100000
xs = range(xin, xout, length=nx)
# set range of hnu
hnumax = 2
hnumin = -6
hnnu = 100
hnus = 10.0 .^ range(hnumin, hnumax, length=hnnu) * keV
# set common variables
M = 1.4 * Msun
Mdot = 1.0e-9 * Msun / yr
# set Black Hole Rin
Rin_BH = 2.0 * G * M / c^2
# convert to array
inputs = [M, Mdot, Rin_BH]
# compute flux
fluxs_BH = calc_flux(xs, hnus, inputs)
# corresponds to value lower threshold
fluxs_BH = map(x -> ifelse(x>eps(Float64),x,eps(Float64)), fluxs_BH)
# convert erg to keV
hnus_kev = hnus / keV
##### set xticks for plot start #####
xlab, xval = Float64[], Float64[]
for i in 1:10
    for j in hnumin:hnumax
        push!(xval, i*10.0^j)
        if i == 1
            push!(xlab, 10.0^j)
        end
    end
end
###### set xticks for plot end ######
# make plot for BH
plot(hnus_kev, fluxs_BH, linewidth=3, label="Black Hole", legend=:topleft, xlabel="hν [keV]", ylabel="flux", scale=:log10, 
        xlims=[hnus[1], hnus[hnnu]]/keV, ylims=[1.0e-5, 1.0e+8], xticks=(xval, xlab))
# set Neutron Star Rin
Rin_NS = 1.0e+6
# convert to array
inputs = [M, Mdot, Rin_NS]
# compute flux
fluxs_NS = calc_flux(xs, hnus, inputs)
# correspond to value lower threshold
fluxs_NS = map(x -> ifelse(x>eps(Float64),x,eps(Float64)), fluxs_NS)
# make plot for NS
plot!(hnus_kev, fluxs_NS, linewidth=3, label="Neutron Star")
# set White Dwarf Rin
Rin_WD = 1.0e+9
# convert to array
inputs = [M, Mdot, Rin_WD]
# compute flux
fluxs_WD = calc_flux(xs, hnus, inputs)
# correspond to value lower threshold
fluxs_WD = map(x -> ifelse(x>eps(Float64),x,eps(Float64)), fluxs_WD)
# make plot for WD
plot!(hnus_kev, fluxs_WD, linewidth=3, label="White Dwarf")
# output plot
savefig("standard_disk_spectrum.png")