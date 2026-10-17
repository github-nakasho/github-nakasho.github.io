using LaTeXStrings
using Plots
gr()


# set array for beta
array_beta = [0.5, 0.8, 1.0, 2.0, 3.0]
len_beta = length(array_beta)
# set length of r
len_r = 100
# set array for r
array_r = range(1.0, 5.0, length=len_r)
plt = plot()
for beta in array_beta
    array_v = (1.0 .- 1.0 ./ array_r) .^ beta
    plot!(array_r, array_v, xlabel=L"r/R_\ast", ylabel=L"v/v_\infty", linewidth=2, label=L"\beta="*string(beta))
end
plot(plt)
savefig("beta_law.png")