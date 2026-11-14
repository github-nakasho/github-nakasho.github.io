include("./const.jl")

using Plots
gr()


# compute function f
function f(u, zeta, zc)
    try
        return [u[2], -2.0*u[2]/zeta-(u[1]^2-1.0/zc^2)^1.5]
    catch
        return [0.0, 0.0]
    end
end

# compute k1
function func_k1(u, d, zeta, zc)
    return f(u, zeta, zc) * d
end

# compute k2
function func_k2(u, k1, d, zeta, zc)
    return f(u+0.5*k1, zeta, zc) * d
end

# compute k3
function func_k3(u, k2, d, zeta, zc)
    return f(u+0.5*k2, zeta, zc) * d
end

# compute k4
function func_k4(u, k3, d, zeta, zc)
    return f(u+k3, zeta, zc) * d
end

# compute y
function rk4(u, d, zeta, zc)
    k1 = func_k1(u, d, zeta, zc)
    k2 = func_k2(u, k1, d, zeta, zc)
    k3 = func_k3(u, k2, d, zeta, zc)
    k4 = func_k4(u, k3, d, zeta, zc)
    return u + (k1+2*k2+2*k3+k4) / 6.0
end

# set initial condition
zcs = 10.0 .^ range(0.1, 2, length=50)
# set input parameter
d = 0.001
N = 10000
Ms = []
Rs = []
for zc in zcs
    q = sqrt(1.0-1.0/zc^2)
    zeta_c = 0.00001
    phi_c = 1.0 - q^3 / 6.0 * zeta_c^2 + q^4 / 40.0 * zeta_c^4
    dphi_c = 0.0
    ##### main loop for Runge-Kutta #####
    uvec = zeros(Float64, (N, 2))
    uvec[1, 1] = phi_c
    uvec[1, 2] = dphi_c
    for i in 1:N-1
        zeta = i * d
        uvec[i+1, :] = rk4(uvec[i, :], d, zeta, zc)
    end

    # convert uvec to phi, dphi
    phi = []
    dphi = []
    for i in 1:N
        if uvec[i, 1] <= 1.0 / zc
            break
        end
        append!(phi, uvec[i, 1])
        append!(dphi, uvec[i, 2])
    end

    len_phi = size(phi)[1]
    zeta1 = len_phi * d
    dphi1 = dphi[len_phi]

    M = 9.0 / (64*pi*mp^2) * (2.0*h*c/(3.0*G))^1.5 * (-zeta1^2*dphi1)
    append!(Ms, M/Msun)
    R = sqrt(6.0*h^3/(c*G)) / (8.0*pi*me*mp) * zeta1 / zc
    append!(Rs, R/10^5)
end

# make plot
plot(Rs, Ms, linewidth=3, xlabel="R [km]", ylabel="M / Msun", xscale=:log10, ylims=[0.0, 1.5], legend=false)
# output plot
savefig("chandra.png")
