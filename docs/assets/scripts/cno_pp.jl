using LaTeXStrings
using Plots
gr()

len = 256
T6s = range(5, 40, length=len)
rho = 100.0
X = 0.7
Z = 0.01
T9s = T6s * 1.0e-3
pps = exp.(-3.380 ./ T9s.^(1/3)) ./ T9s .^(2/3) * 2.4e+4 * rho * X^2
cnos = exp.(-15.228 ./ T9s.^(1/3)) ./ T9s .^(2/3) * 4.4e+25 * rho * X * Z

plt1 = plot(T6s, pps, linewidth=3, xlabel=L"T_6", ylabel=L"\log \ \epsilon", label=L"\epsilon (\mathrm{pp})", yscale=:log10, ylims=[10^0, 10^8], legend=:topleft)
plot!(T6s, cnos, linewidth=3, label=L"\epsilon (\mathrm{CNO})", yscale=:log10)
savefig(plt1, "cno_pp.png")
