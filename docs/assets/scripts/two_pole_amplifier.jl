using LaTeXStrings
using Plots
using Printf


function calc_polar_position(x)
    omega1 = 0.5
    omega2 = 4.5
    polar1 = - (omega1 + omega2) / 2 + sqrt((omega1 - omega2) ^ 2 / 4 - omega1 * omega2 * x + 0im)
    polar2 = - (omega1 + omega2) / 2 - sqrt((omega1 - omega2) ^ 2 / 4 - omega1 * omega2 * x + 0im)
    return (real(polar1), imag(polar1)), (real(polar2), imag(polar2))
end

xmin = 0.0
xmax = 5.0
len_x = 64
xs = range(xmin, xmax, len_x)
Remin = -5.0
Remax = 5.0
Immin = -5.0
Immax = 5.0
trajectory1_x = zeros(0)
trajectory1_y = zeros(0)
trajectory2_x = zeros(0)
trajectory2_y = zeros(0)

a = Animation()
for x in xs
    position1, position2 = calc_polar_position(x)
    append!(trajectory1_x, position1[1])
    append!(trajectory1_y, position1[2])
    append!(trajectory2_x, position2[1])
    append!(trajectory2_y, position2[2])
    label_string = string(L"\beta A_0 = " , @sprintf("%6.2f", x))
    p_gif = plot(trajectory1_x, trajectory1_y, linewidth=3, label=false)
    p_gif = plot!(trajectory2_x, trajectory2_y, linewidth=3, label=false)
    p_gif = plot!([position1[1], position2[1]], [position1[2], position2[2]], seriestype=:scatter, markersize=7, xlim=[Remin, Remax], ylim=[Immin, Immax], legend=:topright, xlabel="Re", ylabel="Im", label=label_string, aspect_ratio=:equal)
    frame(a, p_gif)  
end
gif(a, "two_pole_amplifier.gif", fps=30)