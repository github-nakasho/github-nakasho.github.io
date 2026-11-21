using LaTeXStrings
using Plots
gr()

len = 256
Es = range(0.01, 50, length=len)
maxwell = exp.(-Es ./ 10.0)
tunnel = exp.(-1.0 ./ sqrt.(Es ./ 10.0))
gamow = maxwell .* tunnel

plt1 = plot(Es, maxwell, linewidth=3, xlabel="E", label=L"e^{-E/k_B T}", xticks=false, yticks=false)
plot!(Es, tunnel, linewidth=3, label=L"e^{-\zeta/\sqrt{E}}")
plot!(Es, gamow, linewidth=3, label=L"e^{-E/k_B T-\zeta/\sqrt{E}}")

plt2 = plot(Es, maxwell, linewidth=3, xlabel="E", label=L"e^{-E/k_B T}", yscale=:log10, ylims=[0.1, 1.0], xticks=false, yticks=false, legend=:right)
plot!(Es, tunnel, linewidth=3, label=L"e^{-\zeta/\sqrt{E}}", yscale=:log10)
plot!(Es, gamow, linewidth=3, label=L"e^{-E/k_B T-\zeta/\sqrt{E}}", yscale=:log10)

plt = plot(plt1, plt2, layout=(1, 2), size=(800, 300))
savefig(plt, "gamow_peak.png")
