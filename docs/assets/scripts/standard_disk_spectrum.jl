using Plots


# compute effective temperature
function Teffs(M, Mdot, Rin, x)
    G = 6.67 * 10^(-8)
    SB = 5.67 * 10^(5)
    return (3*G*M*Mdot/(8*pi*SB*(Rin*x)^3)*(1.0-sqrt(1.0/x)))^(0.25)
end

function f(Teff, hnu, x)
    h = 6.63 * 10^(-27)
    c = 3.0 * 10^(10)
    kb = 1.38 * 10^(-16)
    return x / (exp(hnu*kev/(kb*Teff))-1.0)
end

function calc_flux(M, Mdot, Rin, xs, hnus)
    h = 6.63 * 10.0^(-27)
    c = 3.0 * 10.0^(10)    
    Teff = Teffs.(M, Mdot, Rin, xs)
    fluxs = []
    nx = length(xs)
    for hnu in hnus
        sum = 0.0
        for i in 1:nx-1
            sum += (xs[i+1]-xs[i]) * (f(Teff[i+1], hnu, xs[i+1])+f(Teff[i], hnu, xs[i])) / 2.0 
        end
        flux = 4 * pi * hnu^3 / (h*h*c*c) * sum  
        push!(fluxs, flux)  
    end
    return fluxs
end

# set x
xout = 10.0^4
xin = 1.0
nx = 100000
xs = range(xin, xout, length=nx)
# set frequency
kev = 1.6 * 10^(-9)
hnumax = 1
hnumin = -7
nhnu = 100
hnus = 10 .^ range(hnumin, hnumax, length=nhnu) * kev
# set accretion disk parameters
Msun = big(1.99*10^(33))
yr = 365 * 24 * 60 * 60
M = 1.4 * Msun
Mdot = 10^(-9) * Msun / yr
# compute fluxs for BH
G = 6.67 * 10^(-8)
c = 3.0 * 10^(10)
# compute fluxs for BH
Rin = 4.2 * 10^5
fluxs = calc_flux(M, Mdot, Rin, xs, hnus)
fluxs = map(x -> ifelse(x>eps(Float64),x,eps(Float64)), fluxs)
# make plot for BH
plot(hnus/kev, fluxs, linewidth=3, label="Black Hole", legend=:topleft, xlabel="hν [keV]", ylabel="Flux", scale=:log10, xlim=[10.0^hnumin, 10.0^hnumax], ylim=[10.0^(-8), 10.0^5])
# compute fluxs for NS
Rin = 10^6
fluxs = calc_flux(M, Mdot, Rin, xs, hnus)
fluxs = map(x -> ifelse(x>eps(Float64),x,eps(Float64)), fluxs)
# make plot for NS
plot!(hnus/kev, fluxs, linewidth=3, label="Neutron Star")
# compute fluxs for WD
Rin = 10^9
fluxs = calc_flux(M, Mdot, Rin, xs, hnus)
fluxs = map(x -> ifelse(x>eps(Float64),x,eps(Float64)), fluxs)
# make plot for WD
plot!(hnus/kev, fluxs, linewidth=3, label="White Dwarf")
savefig("standard_disk_spectrum.png")