using LaTeXStrings
using Plots
using SpecialFunctions
gr()

# set omega / omega0 -> omegas
len_x = 256
x_max = 4
x_min = -4
xs = range(x_min, x_max, length=len_x)

p1 = plot(xs, erf.(xs), label="erf(x)", lw=3)
plot!(p1, xs, erfc.(xs), label="erfc(x)", lw=3)
hline!(p1, [0, 1, 2], c=:gray, label="")
plot(p1, xlabel=L"x")
savefig(p1, "error_function_01.png")

len_x2 = 256
x2_max = 5
x2_min = 0.001
xs2 = range(x2_min, x2_max, length=len_x2)

p2 = plot(xs2, erfcx.(xs2), label="erfcx(x)", lw=3, ylims = (0.0, 1.1))
plot!(p2, xs2, 1.0 ./ (xs2 .* sqrt(pi)), c=:gray, label=L"1 / (\sqrt{\pi} x)")
plot(p2, xlabel=L"x")
savefig(p2, "error_function_02.png")

p3 = plot(xs2, erfi.(xs2), label="erfi (x)", lw=3, yscale=:log10, xlabel=L"x")
savefig(p3, "error_function_03.png")

p4 = plot(xs, dawson.(xs), label=L"F (x)", lw=3, xlabel=L"x")
savefig(p4, "error_function_04.png")

faddeeva(z) = erfcx(-im * z)
p5 = plot(xs, real.(faddeeva.(xs)), label=L"\mathrm{Re} (w)", lw=3)
plot!(p5, xs, imag.(faddeeva.(xs)), label=L"\mathrm{Re} (w)", lw=3)
plot!(p5, xlabel=L"x")
savefig(p5, "error_function_05.png")

len_y = 256
y_max = 4
y_min = -4
ys = range(y_min, y_max, length=len_y)
W  = [abs(faddeeva(xr + im * yr)) for yr in ys, xr in xs]
heatmap(xs, ys, W, c = :inferno, clims = (0, 5),
        xlabel = L"\mathrm{Re}(z)", ylabel = L"\mathrm{Im}(z)",
        title = L"|w(z)|", aspect_ratio=:equal)
contour!(xs, ys, W, levels = [0.2, 0.4, 0.6, 0.8, 1.0],
         c = :white, lw = 0.8, colorbar_entry = false)
hline!([0], c = :white, ls = :dash, lw = 1, label = "")
savefig("error_function_06.png")