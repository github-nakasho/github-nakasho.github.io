using LaTeXStrings
using Plots
gr()


function impedance_function(Q, xs)
    z = (1.0 .+ Q ^ 2 .* xs .* im) ./ (1 .- Q ^ 2 .* xs .^ 2 .+ xs .* im)
    return abs.(z)
end

Qs = [0.0, 0.6, 0.8, 0.9, 1.0]
len = 256
xs = logrange(0.1, 10.0, length=len)
nstep = length(Qs)
color_list = reshape(range(colorant"purple", stop=colorant"green", length=nstep), 1, nstep);
impedances = []
plt = plot()
for n in 1:nstep
    impedance = impedance_function(Qs[n], xs)
    plot!(xs, impedance, linecolor=color_list[n], xlim=[0.1, 10.0], ylim=[0, 1.6], linewidth=3, legend=:topright, xlabel=L"\omega R C", ylabel=L"\vert \mathcal{Z} \vert /R", label=L"Q="*string(Qs[n]), xscale=:log10)
end
plot(plt)
savefig("series_parallel_resonance_06.png")
