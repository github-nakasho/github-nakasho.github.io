using LaTeXStrings
using Plots
using Polynomials
using Printf


function calc_polar_position(x)
    omega1 = 1.0
    omega2 = 4.5
    omega3 = 5.0
    a1 = omega1 + omega2 + omega3
    a2 = omega2 * omega3 + omega3 * omega1 + omega1 * omega2
    a3 = omega1 * omega2 * omega3 * (1.0 + x)
    p = Polynomial([a3, a2, a1, 1.0])
    polars = roots(p)
    return (real(polars[1]), imag(polars[1])), (real(polars[2]), imag(polars[2])), (real(polars[3]), imag(polars[3]))
end

xmin = 0.0
xmax = 20.0
len_x = 128
xs = range(xmin, xmax, len_x)
Remin = -12.0
Remax = 3.0
Immin = -7.5
Immax = 7.5
trajectory1_x = zeros(0)
trajectory1_y = zeros(0)
trajectory2_x = zeros(0)
trajectory2_y = zeros(0)
trajectory3_x = zeros(0)
trajectory3_y = zeros(0)

a = Animation()
for x in xs
    position1, position2, position3 = calc_polar_position(x)
    append!(trajectory1_x, position1[1])
    append!(trajectory1_y, position1[2])
    append!(trajectory2_x, position2[1])
    append!(trajectory2_y, position2[2])
    append!(trajectory3_x, position3[1])
    append!(trajectory3_y, position3[2])
    label_string = string(L"\beta A_0 = " , @sprintf("%6.2f", x))
    p_gif = plot(trajectory1_x, trajectory1_y, linewidth=3, label=false)
    p_gif = plot!(trajectory2_x, trajectory2_y, linewidth=3, label=false)
    p_gif = plot!(trajectory3_x, trajectory3_y, linewidth=3, label=false)
    p_gif = plot!([position1[1], position2[1], position3[1]], [position1[2], position2[2], position3[2]], seriestype=:scatter, markersize=7, xlim=[Remin, Remax], ylim=[Immin, Immax], legend=:topleft, xlabel="Re", ylabel="Im", label=label_string, aspect_ratio=:equal)
    frame(a, p_gif)  
end
gif(a, "three_pole_amplifier.gif", fps=30)