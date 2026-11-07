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

# set length of beta0
len_beta0 = 50
array_beta0 = exp10.(range(-2, 5, length=len_beta0))
# set an array of a
array_a = [0.001, 0.01, 0.1]
len_a = length(array_a)
# initialize an array for curve of growth
growth = zeros(Float64, len_a, len_beta0)
for i in 1:len_a
    a = array_a[i]
    for j in 1:len_beta0
        beta0 = array_beta0[j]
        println("a = $a, beta0 = $beta0")
        # compute integration using QuadGK and curve of growth W*
        integral, error = quadgk(v -> g(a, beta0, v), 0, 500)
        growth[i, j] = beta0 * integral
    end
end

# visualize curve of growth
plt1 = plot(array_beta0, growth[1, :], linewidth=3, xlabel=raw"\beta_{0}", ylabel=raw"W^{*}", label="a = 0.001", scale=:log10, legend=:bottomright)
plot!(array_beta0, growth[2, :], linewidth=3, label=raw"a = 0.01")
plot!(array_beta0, growth[3, :], linewidth=3, label=raw"a = 0.1")
savefig(plt1, "spectral_line_formation_03.png")
