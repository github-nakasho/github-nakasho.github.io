using Plots
gr()


# compute effective force
function effective_force(x, y)
    q = 0.5
    alpha = 1.0 / (1.0+q)
    beta = q / (1.0+q)
    dist1 = ((x-beta)^2 + y^2)^1.5
    dist2 = ((x+alpha)^2 + y^2)^1.5
    fx = - alpha * (x-beta) / dist1 - beta * (x+alpha) / dist2 + x
    fy = - alpha * y / dist1 - beta * y / dist2 + y
    return fx, fy
end

# compute function f
function f(u)
    x = u[1]
    y = u[2]
    fx, fy = effective_force(x, y)
    return [u[3], u[4], fx+2*u[4], fy-2*u[3]]
end

# compute k1
function func_k1(u, h)
    return f(u) * h
end

# compute k2
function func_k2(u, k1, h)
    return f(u+0.5*k1) * h
end

# compute k3
function func_k3(u, k2, h)
    return f(u+0.5*k2) * h
end

# compute k4
function func_k4(u, k3, h)
    return f(u+k3) * h
end

# compute y
function rk4(u, h)
    k1 = func_k1(u, h)
    k2 = func_k2(u, k1, h)
    k3 = func_k3(u, k2, h)
    k4 = func_k4(u, k3, h)
    return u + (k1+2*k2+2*k3+k4) / 6
end

# set initial condition
x1 = -0.24
y1 = 0.0
vx1 = -0.01
vy1 = 0.0
# set input parameter
h = 0.001
N = 10001
##### main loop for Runge-Kutta #####
uvec = zeros(Float64, (N, 4))
uvec[1, 1] = x1
uvec[1, 2] = y1
uvec[1, 3] = vx1
uvec[1, 4] = vy1
for i in 1:N-1
    uvec[i+1, :] = rk4(uvec[i, :], h)
end

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
xmin = -1.0
xmax = -0.2
ymin = -0.3
ymax = 0.3
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
pot_min = -5
pot_max = -1.3


# convert uvect to X, Y
X = []
Y = []
for i in 1:N
    append!(X, uvec[i, 1])
    append!(Y, uvec[i, 2])
end

T = 1500
a = Animation()
for i in 1:15:N
    if i <= T
        t_start = 1
        t_end = i
    else
        t_start = i - T
        t_end = i
    end
    N_plot = t_end - t_start
    p_gif = plot(X[t_start:t_end], Y[t_start:t_end], linewidth=5, linez=range(0.0, 1.0, length=T), 
                    c=:dense, label=false, legend=:none, aspect_ratio=:equal, xlim=[xmin, xmax], ylim=[ymin, ymax], xlabel="X", ylabel="Y")
    # p_gif = contour!(xs, ys, map(x->ifelse(x>pot_min ,x ,pot_min), psis), linewidth=1, levels=20, clims=(pot_min, pot_max),  
    #                 label=false, legend=:none)
    p_gif = scatter!([X[t_end]], [Y[t_end]], markersize=7, color=:black, label="test particle", legend=:topright)
    p_gif = scatter!([-2/3], [0], markersize=7, color=:white, label="binary star")
    p_gif = scatter!([-0.24], [0], markersize=7, color=:black, markershape=:cross, label="L1 point")
    frame(a, p_gif)
end
gif(a, "roche_trajectory.gif", fps=30)