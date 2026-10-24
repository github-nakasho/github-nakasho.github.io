using LaTeXStrings
using Plots
gr()

# set omega / omega0 -> omegas
len_omega = 256
omega_max = 10.0
omega_min = 0.1
omegas = logrange(omega_min, omega_max, length=len_omega)
eps = 0.1
ns = [2, 4, 6]
len_n = length(ns)
Tn = zeros(len_n, len_omega)

for i in 1:len_n
    n = ns[i]
    for j in 1:len_omega
        omega = omegas[j]
        if omega < 1.0
            Tn[i, j] = cos(n * acos(omega))
        else
            Tn[i, j] = cosh(n * acosh(omega))
        end
    end
end

G2 = 1.0 ./ (1.0 .+ eps .* Tn[1, :] .* im)
absG2 = abs.(G2)
dB_G2 = 20 * log10.(absG2)
argG2 = angle.(G2) .* 180 / pi
G4 = 1.0 ./ (1.0 .+ eps .* Tn[2, :] .* im)
absG4 = abs.(G4)
dB_G4 = 20 * log10.(absG4)
argG4 = angle.(G4) .* 180 / pi
G6 = 1.0 ./ (1.0 .+ eps .* Tn[3, :] .* im)
absG6 = abs.(G6)
dB_G6 = 20 * log10.(absG6)
argG6 = angle.(G6) .* 180 / pi

p1 = plot(omegas, dB_G2, linewidth=3, xlabel=L"\omega / \omega_0", ylabel=L"\vert G \vert \ (\mathrm{dB})", title="Bode diagram", label=L"n=2", xscale=:log10, left_margin=5Plots.mm, 
            xlim=[0.1, 5], ylim=[-0.4, 0.1])
p1 = plot!(omegas, dB_G4, linewidth=3, label=L"n=4", xscale=:log10)
p1 = plot!(omegas, dB_G6, linewidth=3, label=L"n=6", xscale=:log10)
plt = plot(p1, layout=(1, 1), size=(500, 300))
savefig(plt, "chebyshev_filter.png")