using LaTeXStrings
using Plots
gr()

# set omega / omega0 -> omegas
len_omega = 256
omega_max = 100.0
omega_min = 0.01
omegas = logrange(omega_min, omega_max, length=len_omega)
pole2 = [exp(im * pi * (0.5 + (2*k-1)/(2*2))) for k in 1:2]
G2 = 1.0 ./ ((im .* omegas .- pole2[1]) .* (im .* omegas .- pole2[2]))
pole3 = [exp(im * pi * (0.5 + (2*k-1)/(2*3))) for k in 1:3]
G3 = 1.0 ./ ((im .* omegas .- pole3[1]) .* (im .* omegas .- pole3[2]) .* (im .* omegas .- pole3[3]))
pole4 = [exp(im * pi * (0.5 + (2*k-1)/(2*4))) for k in 1:4]
G4 = 1.0 ./ ((im .* omegas .- pole4[1]) .* (im .* omegas .- pole4[2]) .* (im .* omegas .- pole4[3]) .* (im .* omegas .- pole4[4]))
absG2 = abs.(G2)
dB_G2 = 20 * log10.(absG2)
argG2 = angle.(G2) .* 180 / pi
absG3 = abs.(G3)
dB_G3 = 20 * log10.(absG3)
argG3 = angle.(G3) .* 180 / pi
absG4 = abs.(G4)
dB_G4 = 20 * log10.(absG4)
argG4 = angle.(G4) .* 180 / pi

p1 = plot(omegas, dB_G2, linewidth=3, xlabel=L"\omega / \omega_0", ylabel=L"\vert G \vert \ (\mathrm{dB})", title="Bode diagram", label=L"n=2", xscale=:log10, left_margin=5Plots.mm, 
            xlim=[0.1, 10], ylim=[-20, 0])
p1 = plot!(omegas, dB_G3, linewidth=3, label=L"n=3", xscale=:log10)
p1 = plot!(omegas, dB_G4, linewidth=3, label=L"n=4", xscale=:log10)
plt = plot(p1, layout=(1, 1), size=(500, 300))
savefig(plt, "butterworth.png")