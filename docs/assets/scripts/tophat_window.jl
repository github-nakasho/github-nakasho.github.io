using LaTeXStrings
using Plots
gr()

len_t = 256
tmax = 2.0
tmin = -2.0
ts = range(tmin, tmax, length=len_t)
T = 2
Wt = fill(0.0, len_t)
for i in 1:len_t
    if abs(ts[i]) <= T / 2
        Wt[i] = 1.0
    end
end

len_o = 256
omax = 5.0
omin = -5.0
os = range(omin, omax, length=len_o)
Wo = fill(0.0, len_o)
for i in 1:len_o
    Wo[i] = T / (2 * pi) * sinc(os[i] * T / 2)
end

p1 = plot(ts, Wt, linewidth=3, xlabel=L"t", title=L"W(t)", ylims=(-0.5, 1.5), legend=false)
p2 = plot(os, Wo, linewidth=3, xlabel=L"\omega", title=L"\hat{W}(\omega)", ylims=(-0.125, 0.325), legend=false)
plt = plot(p1, p2, layout=(1, 2), size=(1200, 600))
savefig(plt, "tophat_window.png")