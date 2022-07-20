using LinearAlgebra
using Plots
gr()


mutable struct Ball
    v::Float64
    x::Float64
    v_history::Array{Float64, 1}
    x_history::Array{Float64, 1}
    mass::Float64
    radius::Float64

    function Ball(v, x, m, radius)
        v_history = Float64[]
        x_history = Float64[]
        push!(x_history, x)
        push!(v_history, v)
        return new(v, x, v_history, x_history, m, radius)
    end
end

function update!(ball::Ball, x, v)
    ball.x = x
    ball.v = v
    push!(ball.x_history, x)
    push!(ball.v_history, v)
    return 
end

function get_xv(ball::Ball)
    return ball.x, ball.v
end

function get_xv(ball::Ball, i)
    return ball.x_history[i], ball.v_history[i]
end

function ball_collision_time(small::Ball, large::Ball)
    t = (small.x+small.radius-(large.x-large.radius)) / (large.v-small.v)
end

function wall_collision_time(small::Ball)
    t = - (small.x-small.radius) / small.v
end

function collision_time(small::Ball, large::Ball)
    t_ball = ball_collision_time(small, large)
    t_wall = wall_collision_time(small)
    t = ifelse(t_ball>t_wall && t_wall>0.0, t_wall, t_ball)
    return t
end

function check_collision!(small::Ball, large::Ball, timeseries)
    r = large.mass / small.mass
    x, v = get_xv(small)
    X, V = get_xv(large)
    told = timeseries[end]
    if v > V
        t = collision_time(small, large)
        x += t * v
        X += t * V
        V_next = (2v+(r-1)V) / (r+1)
        v_next = ((1-r)v+2r*V) / (r+1)
        collision = true
        update!(small, x, v_next)
        update!(large, X, V_next)
        push!(timeseries, told+t)
        return collision
    elseif v < 0
        t = wall_collision_time(small)
        x += t * v
        X += t * V
        collision = true
        update!(small, x, -v)
        update!(large, X, V)
        push!(timeseries, told+t)
        return collision
    else
        collision = false
        return collision
    end    
end

function make_anime(small::Ball, large::Ball, timeseries, N)
    anim = Animation()
    ts = range(0.00001, timeseries[end]+0.5, length=100)
    thetas = range(0, 2pi, length=100)
    xcirc = small.radius * cos.(thetas)
    ycirc = small.radius * sin.(thetas)
    Xcirc = large.radius * cos.(thetas)
    Ycirc = large.radius * sin.(thetas)
    for t in ts
        ith = searchsortedfirst(timeseries, t) - 1
        t0 = timeseries[ith]
        x, v = get_xv(small, ith)
        X, V = get_xv(large, ith)
        dt = t - t0
        x += v * dt
        X += V * dt
        count = ith - 1
        plt = plot(x.+xcirc, ycirc, label="count=$count pi=$(count/10^N)", linewidth=3, xlims=(0, 5), ylims=(-1, 1), aspect_ratio=1)
        plt = plot!(X.+Xcirc, Ycirc, label=nothing, linewidth=3, xlims=(0, 5), ylims=(-1, 1), aspect_ratio=1)
        frame(anim, plt)
    end
    gif(anim, "test_$(N).gif", fps=15)
end

function ballcollision(N)
    v0 = 0.0
    V0 = -1.0
    m = 1
    M = m * 100^N
    radius_small = 0.1
    radius_large = 0.1 * 100^(N/3)
    X0 = 2 + radius_large
    x0 = 1
    smallball = Ball(v0, x0, m, radius_small)
    largeball = Ball(V0, X0, M, radius_large)
    timeseries = Float64[]
    push!(timeseries, 0.0)
    collision = true
    count = 0
    while collision
        collision = check_collision!(smallball, largeball, timeseries)
        if collision
            count += 1
        end
    end
    make_anime(smallball, largeball, timeseries, N)
    return count / 10^N
end

ballcollision(2)