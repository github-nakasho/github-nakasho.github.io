using QuadGK
using Plots
gr()


# define the integrand funciton for Voigt function
function f(a, v, x)
    return exp(-(a*x+x^2/4)) * cos(v*x)
end

# set array for a
array_a = [1, 0.1, 0.01, 0.001]
# get length of array_a
len_a = length(array_a)
# set length of v
len_v = 100
# set array for v
array_v = range(0.0, 7.0, length=len_v)
# initialize an array for Voigt function
voigt = zeros(Float64, len_a, len_v)
for i in 1:len_a
    a = array_a[i]
    for j in 1:len_v
        v = array_v[j]
        # compute integration using quadgk
        integral, error = quadgk(x -> f(a, v, x), 0, 100)
        # put the integration result into voigt array
        voigt[i, j] = log10(integral/sqrt(pi))
    end
end
# visualize Voigt function for each a
plot(array_v, voigt[1, :], linewidth=3, xlabel="v", ylabel="Log(Voigt function)", label="a=1.0")
plot!(array_v, voigt[2, :], linewidth=3, label="a=0.1")
plot!(array_v, voigt[3, :], linewidth=3, label="a=0.01")
plot!(array_v, voigt[4, :], linewidth=3, label="a=0.001")
savefig("absorption_line_coeff_04.png")
