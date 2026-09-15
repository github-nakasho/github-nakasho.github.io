using FFTW
using LaTeXStrings
using Plots
gr()

len_t = 4096
tmax = 200.0
tmin = -200.0
ts = range(tmin, tmax, length=len_t)
sigma = 1.0
dt = step(ts)

Wt = fill(0.0, len_t)
for i in 1:len_t
    Wt[i] = exp(- ts[i] ^ 2 / (2.0 * sigma ^ 2)) / (sqrt(2 * pi) * sigma)
end

Wfft = fft(ifftshift(Wt))
os = 2 * pi .* FFTW.fftfreq(len_t, 1.0/dt)
os_sorted = fftshift(os)
Wfft_sorted = fftshift(Wfft)
Wfft_result = real.(Wfft_sorted) .* dt ./ (2 * pi)

p1 = plot(ts, Wt, linewidth=3, xlabel=L"t", title=L"W(t)", xlims=(-5, 5), ylims=(-0.25, 0.5), legend=false)
p2 = plot(ts, Wfft_result, linewidth=3, xlabel=L"\omega", title=L"\hat{W}(\omega)", xlims=(-50, 50), ylims=(-0.1, 0.2), legend=false)
plt = plot(p1, p2, layout=(1, 2), size=(1200, 600))
savefig(plt, "tophat_window_fft.png")