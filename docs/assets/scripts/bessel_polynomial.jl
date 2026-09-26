using LaTeXStrings
using Plots
gr()

# set omega / omega0 -> omegas
len_x = 100
x_max = 2
x_min = -2
xs = range(x_min, x_max, length=len_x)
ns = 0:5
y = zeros(length(ns), len_x)

for n in ns
    yn = zeros(len_x)
    for k in 0:n
        yn .+= factorial(n + k) ./ (factorial(n - k) * factorial(k)) .* (xs ./ 2) .^ k
    end
    y[n+1, :] = yn
end

p = plot(xs, y[1, :], linewidth=3, xlabel=L"x", ylabel=L"y_n(x)", title="Bessel polynomials", label=L"n=0", left_margin=5Plots.mm, ylim=[-1, 2])
p = plot!(xs, y[2, :], linewidth=3, label=L"n=1")
p = plot!(xs, y[3, :], linewidth=3, label=L"n=2")
p = plot!(xs, y[4, :], linewidth=3, label=L"n=3")
p = plot!(xs, y[5, :], linewidth=3, label=L"n=4")
p = plot!(xs, y[6, :], linewidth=3, label=L"n=5")
savefig(p, "bessel_polynomials.png")