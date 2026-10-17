using QuadGK
using Plots
gr()


# define the integrand funciton for Voigt function H (a, v)
function f(a, v, x)
    return exp(-(a*x+x^2/4)) * cos(v*x)
end

# define the integrand function for curve of growth W*
function g(a, beta0, v)
    # compute integration for Voigt function H(a, v) using quadgk
    integral, error = quadgk(x -> f(a, v, x), 0, 10)
    H = integral / sqrt(pi)
    return H / (1+beta0*H)
end


# set y
len_y = 200
y = LinRange(-1.0, 1.0, len_y)
# set epsilon
eps = 0.6
# compute first term, second term and G
deno = pi * (1-eps/3)
first = 2 * (1-eps) * sqrt.(1 .- y.^2) ./ deno
second = 0.5 * pi * eps * (1 .- y.^2) ./ deno
G = first .+ second
# visualize G
plt1 = plot(y, G, linewidth=3, xlabel=raw"\Delta \lambda / \Delta \lambda_L", label="G")
plt1 = plot!(y, first, linewidth=3, label="first term")
plt1 = plot!(y, second, linewidth=3, label="second term")
savefig(plt1, "rotation_and_stellar_wind_03.png")
