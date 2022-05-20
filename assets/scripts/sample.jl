using Plots
gr()

# compute gravitational potential Phi
function Phi(M, Rz)
    R = Rz[1]
    z = Rz[2]
    r = sqrt(R ^ 2 + z ^ 2)
    rg = 0.01
    if r <= rg
        Phi = - prevfloat(typemax(Float64))
    else
        Phi = - M / (r-rg)
    end
    return Phi
end

# compute effective Psib (= Psi @ (Rb, 0))
function Psib(inputs)
    # decode from arguments
    Gamma = inputs[1]
    Tb = inputs[2]
    rhob = inputs[3]
    Rb = inputs[4]
    betab = inputs[5]
    M = inputs[6]
    # compute effective potential Psib
    Gamma1 = Gamma - 1
    K = Tb / rhob ^ Gamma1
    Csb2 = Gamma * K * rhob ^ Gamma1
    H = 2 * K / (betab*Rb^(2*Gamma1))
    vab2 = H * Rb ^ (2*Gamma1) * rhob ^ Gamma1
    first = - lz ^ 2 / ((2*a-2)*Rb^2)
    second = Phi(M, [Rb, 0])
    third = Csb2 / Gamma1
    forth = Gamma / (2*Gamma1) * vab2
    return first + second + third + forth
end

# set input parameters for torus
Rb = 5
a = 0
Tb = 0.01
rhob = 1
Gamma = 1 + 1 / 3
betab = 10 ^ 2
M = 1
lz = sqrt(M * Rb)
# set input parameter for corona
Tc = 5
rhoc0 = 10 ^ (-4)
# set the number of grids
nR = 100
nz = 200
# set (R, z) cylindrical coordinates
Rmin = 0.01
Rmax = 15.01
zmin = -7.5
zmax = 7.5
Rs = range(Rmin, Rmax, length=nR)
zs = range(zmin, zmax, length=nz)
# encode to torus inputs
inputs = [Gamma, Tb, rhob, Rb, betab, M]
Gamma1 = Gamma - 1
K = Tb / rhob ^ Gamma1
###### main loop #####
rhos = []
emags = []
for z in zs
    for R in Rs
        # compute density
        nume = Psib(inputs) - Phi(M, [R, z]) + lz ^ 2 * R ^ (2*a-2) / ((2*a-2)*Rb^(2*a))
        deno = Gamma * K * (1+(R/Rb)^(2*Gamma1)/betab) / Gamma1
        rho = (max(nume, 0)/deno) ^ (1/Gamma1)
        # add hydrostatic equilibrium compotent
        rhoc = rhoc0 * exp(-(Phi(M, [R, z])-Phi(M, [Rb, 0]))/Tc)
        append!(rhos, log10(rho+rhoc))
        # compute magnetic energy
        emag = K * rho ^ Gamma / betab * (R/Rb) ^ (2*Gamma1)
        append!(emags, log10(emag))
    end
end
##### main loop end #####
# make density contour
contour(Rs, zs, rhos, fill=true, linewidth=0, levels=20,  
        aspect_ratio=:equal, xlim=[Rmin, Rmax], ylim=[zmin, zmax], xlabel="R", ylabel="z", title="Log(Density)", extend="both")
savefig("density.png")
# make magnetic energy contour
contour(Rs, zs, emags, c=:ice, fill=true, linewidth=0, levels=20, clims=(-6, -5), 
        aspect_ratio=:equal, xlim=[Rmin, Rmax], ylim=[zmin, zmax], xlabel="R", ylabel="z", title="Log(Magnetic Energy)")
savefig("magnetic_energy.png")
