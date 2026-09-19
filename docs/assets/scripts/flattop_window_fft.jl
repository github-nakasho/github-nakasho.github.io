using FFTW
using LaTeXStrings
using Plots
gr()

len_t = 1024
tmax = 10.0
tmin = -10.0
ts = range(tmin, tmax, length=len_t)
tm = 20
dt = step(ts)
ak = [0.1881, 0.36923, 0.28702, 0.13077, 0.02488]

Wt = fill(0.0, len_t)
for i in 1:len_t
    for k in 0:4
        Wt[i] += ak[k+1] * cos(2 * pi * k * ts[i] / tm)
    end
end

Wfft = fft(ifftshift(Wt))
os = 2 * pi .* FFTW.fftfreq(len_t, 1.0/dt)
os_sorted = fftshift(os)
Wfft_sorted = fftshift(Wfft)
Wfft_result = real.(Wfft_sorted) .* dt ./ (2 * pi)

p1 = plot(ts, Wt, linewidth=3, xlabel=L"t", title=L"W(t)", ylims=(-0.25, 1.25), legend=false)
p2 = plot(ts, Wfft_result, linewidth=3, xlabel=L"\omega", title=L"\hat{W}(\omega)", xlims=(-1.0, 1.0), legend=false)
plt = plot(p1, p2, layout=(1, 2), size=(1200, 600))
savefig(plt, "flattop_window_fft.png")