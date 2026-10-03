using LaTeXStrings
using Plots
gr()


function calc_transfer_function(zeta, xs)
    absG = 1.0 ./ sqrt.((1.0 .- xs .^ 2) .^ 2 .+ 4.0 .* zeta ^ 2 .* xs .^ 2)
    argG = - atan.(2.0 .* zeta .* xs, 1.0 .- xs .^ 2)
    return absG, rad2deg.(argG)
end

len_x = 512
xmax = 10.0
xmin = 0.1
xs = logrange(xmin, xmax, length=len_x)
zetas = [0.01, 0.2, 0.5, 1.0]
n_zetas = length(zetas)
color_list = reshape(range(colorant"deepskyblue", stop=colorant"orange", length=n_zetas), 1, n_zetas);
p1 = plot()
p2 = plot()
for n in 1:n_zetas
    absG, argG = calc_transfer_function(zetas[n], xs)
    dB_G = 20 .* log10.(absG)
    plot!(p1, xs, dB_G, linecolor=color_list[n], xlim=[xmin, xmax], linewidth=3, legend=:topright, xlabel=L"\omega / \omega_0", ylabel=L"\vert G \vert \ (\mathrm{dB})", label=L"\zeta="*string(zetas[n]), xscale=:log10, left_margin=5Plots.mm)
    plot!(p2, xs, argG, linecolor=color_list[n], xlim=[xmin, xmax], linewidth=3, legend=:topright, xlabel=L"\omega / \omega_0", ylabel=L"\mathrm{arg}(G) \ (\mathrm{degree})", label=L"\zeta="*string(zetas[n]), xscale=:log10, left_margin=5Plots.mm)
end
plt = plot(p1, p2, layout=(2, 1), size=(500, 700))
savefig(plt, "bode_diagram_LRC.png")