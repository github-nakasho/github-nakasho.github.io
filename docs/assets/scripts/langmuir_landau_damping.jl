using LaTeXStrings
using Plots
using SpecialFunctions
gr()

# set xs
len_x = 256
x_max = 5
x_min = 0
xs = range(x_min, x_max, length=len_x)
# set function
f(x) = exp(-0.5 / (x^2)) / x^3
# make plot
p = plot(xs, f.(xs), label=L"\frac{1}{k^3 \lambda_D^3} \exp (-\frac{1}{2k^2 \lambda_D^2})", linewidth=2, xlabel=L"k \lambda_D", ylabel=L"f(x)", legend=:topright)
savefig(p, "langmuir_landau_damping_01.png")