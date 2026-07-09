using LaTeXStrings
using Plots
gr()

# set omega / omega0 -> omegas
len_omega = 256
omega_max = 100.0
omega_min = 0.01
omegas = logrange(omega_min, omega_max, length=len_omega)
omega0 = 1.0
CR = 1.0
G = 1.0 ./ (1.0 .+ CR .* omega0 .* im .* (omegas .- 1.0 ./ omegas))
absG = abs.(G)
dB_G = 20 * log10.(absG)
argG = angle.(G) .* 180 / pi

p1 = plot(omegas, dB_G, linewidth=3, xlabel=L"\omega / \omega_0", ylabel=L"\vert G \vert \ (\mathrm{dB})", title="Bode diagram", legend=false, xscale=:log10, left_margin=5Plots.mm)
p2 = plot(omegas, argG, linewidth=3, xlabel=L"\omega / \omega_0", ylabel=L"\mathrm{arg}(G) \ (\mathrm{degree})", legend=false, xscale=:log10, ylims=[-90.0, 90.0], left_margin=5Plots.mm)
plt = plot(p1, p2, layout=(2, 1), size=(500, 700))
savefig(plt, "bode_diagram_bandpass.png")