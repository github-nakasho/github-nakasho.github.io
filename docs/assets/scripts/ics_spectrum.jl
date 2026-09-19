using Plots
gr()

len = 100
w = range(0.001, 1.0, length=len)
fw = [w[i] * (1.0+w[i]+2w[i]*log(w[i])-2w[i]^2) for i in 1:len]
plot(w, fw, linewidth=3, label=false, xlabel="w", ylabel="f(w)")
savefig("ics_spectrum.png")