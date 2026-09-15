using QuadGK
using Plots
gr()


# define the integrand funciton for Voigt function
function f(a, v, x)
    return exp(-(a*x+x^2/4)) * cos(v*x)
end

# define a function for computing residual flux
function residual_flux(beta, bratio)
    one_onebeta = 1 / (1+beta)
    return (sqrt(3) + one_onebeta * bratio) / (bratio+sqrt(3))
end


# set array for beta0
array_beta0 = [10^0, 10^1, 10^2, 10^3, 10^4]
# get length of beta0
len_beta0 = length(array_beta0)
# set array for B1/B0
array_bratio = [1.0, 2.0, 3.0]
# get length of bratio
len_bratio = length(array_bratio)
# set a
a = 10^(-3)
# set length of v
len_v = 100
# set array for v
array_v = range(0.0, 7.0, length=len_v)
# initialize an array for residual flux
residual = zeros(Float64, len_bratio, len_beta0, len_v)
for i in 1:len_bratio
    for j in 1:len_beta0
        beta0 = array_beta0[j]
        for k in 1:len_v
            v = array_v[k]
            # compute integration using quadgk
            integral, error = quadgk(x -> f(a, v, x), 0, 100)
            # put the integration result into voigt array
            voigt = integral/sqrt(pi)
            beta = beta0 * voigt
            bratio = array_bratio[i]
            residual[i, j, k] = residual_flux(beta, bratio)
        end
    end
end
# visualize residual flux
plt1 = plot(array_v, residual[1, 1, :], linewidth=3, xlabel="v", ylabel="Residual flux", label=raw"\beta_{0} = 1", ylim=(0.0, 1.1), title="B1/B0=1", margin=Plots.Measures.Length(:mm, 5.0))
plot!(array_v, residual[1, 2, :], linewidth=3, label=raw"\beta_{0} = 10")
plot!(array_v, residual[1, 3, :], linewidth=3, label=raw"\beta_{0} = 10^{2}")
plot!(array_v, residual[1, 4, :], linewidth=3, label=raw"\beta_{0} = 10^{3}")
plot!(array_v, residual[1, 5, :], linewidth=3, label=raw"\beta_{0} = 10^{4}")

plt2 = plot(array_v, residual[2, 1, :], linewidth=3, xlabel="v", label=raw"\beta_{0} = 1", ylim=(0.0, 1.1), title="B1/B0=2", margin=Plots.Measures.Length(:mm, 5.0))
plot!(array_v, residual[2, 2, :], linewidth=3, label=raw"\beta_{0} = 10")
plot!(array_v, residual[2, 3, :], linewidth=3, label=raw"\beta_{0} = 10^{2}")
plot!(array_v, residual[2, 4, :], linewidth=3, label=raw"\beta_{0} = 10^{3}")
plot!(array_v, residual[2, 5, :], linewidth=3, label=raw"\beta_{0} = 10^{4}")

plt3 = plot(array_v, residual[3, 1, :], linewidth=3, xlabel="v", label=raw"\beta_{0} = 1", ylim=(0.0, 1.1), title="B1/B0=3", margin=Plots.Measures.Length(:mm, 5.0))
plot!(array_v, residual[3, 2, :], linewidth=3, label=raw"\beta_{0} = 10")
plot!(array_v, residual[3, 3, :], linewidth=3, label=raw"\beta_{0} = 10^{2}")
plot!(array_v, residual[3, 4, :], linewidth=3, label=raw"\beta_{0} = 10^{3}")
plot!(array_v, residual[3, 5, :], linewidth=3, label=raw"\beta_{0} = 10^{4}")

plt = plot(plt1, plt2, plt3, layout=(1, 3), size=(1100, 300))

savefig(plt, "spectral_line_formation_02.png")
