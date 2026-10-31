using LaTeXStrings
using Plots
gr()


num_nu = 200
Qs = [1.0, 1.05, 2.0]
for Q in Qs
    print(Q)
    nus = range(sqrt(1-1/Q^2), 1.5, length=num_nu)
    plus = 2 ./ Q^2 .* (1.0 .+ real.(sqrt.(1.0 .- Q^2 .* Complex.(1.0 .- nus.^2))))
    minus = 2 ./ Q^2 .* (1.0 .- real.(sqrt.(1.0 .- Q^2 .* Complex.(1.0 .- nus.^2))))
    plus_label = "Q=" * string(Q) * ", ST"
    minus_label = "Q=" * string(Q) * ", LT"
    plot!(plus, nus, linewidth=2, xlabel=L"k/k_T", ylabel=L"\nu", xlims=(0.0, 5.0), ylims=(0.0, 1.4), label=plus_label)
    plot!(minus, nus, linewidth=2, xlabel=L"k/k_T", ylabel=L"\nu", label=minus_label)
end
plot!([0.0, 5.0], [1.0, 1.0], linestyle=:dash, label=false)
savefig("density_wave_dispersion_relation.png")