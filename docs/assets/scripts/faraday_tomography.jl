using LaTeXStrings
using FFTW
using Plots
gr()

min_phi = 0.0
max_phi = 25.0
len_phi = 5000
phis = range(min_phi, max_phi, length=len_phi)
amp1 = 0.02
mean1 = 9.0
disp1 = 3.0
g1 = amp1 * exp.(-(phis.-mean1).^2/(2*disp1^2))
amp2 = 0.1
mean2 = 22.0
disp2 = 0.1
g2 = amp2 * exp.(-(phis.-mean2).^2/(2*disp2^2))
g = g1 + g2
plot(phis, g, linewidth=3, xlabel=L"\phi", ylabel=L"F(\phi)", label="")
savefig("faraday_tomography_graph_gauss.png")

fft_g = fft(g)
stokes_q = real(fft_g)
stokes_u = imag(fft_g)
lamb2s = 1.0 ./ phis
plot(lamb2s, stokes_q, linewidth=3, xlabel=L"\lambda^2", label="Q", xlims=[0.5, 4.0], ylims=[-1.0, 1.0])
plot!(lamb2s, stokes_u, linewidth=3, xlabel=L"\lambda^2", label="U")
savefig("faraday_tomography_graph_QU.png")
