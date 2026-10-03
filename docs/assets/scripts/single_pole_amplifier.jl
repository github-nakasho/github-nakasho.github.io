using LaTeXStrings
using Plots
using Printf


function calc_polar_position(x)
    omega0 = 1.0
    polar_x = - omega0 * (1.0 + x)
    polar_y = 0.0
    return (polar_x, polar_y)
end

xmin = 0.0
xmax = 5.0
len_x = 64
xs = range(xmin, xmax, len_x)
Remin = -5.0
Remax = 5.0
Immin = -5.0
Immax = 5.0
trajectory_x = zeros(0)
trajectory_y = zeros(0)

a = Animation()
for x in xs
    position = calc_polar_position(x)
    append!(trajectory_x, position[1])
    append!(trajectory_y, position[2])
    label_string = string(L"\beta A_0 = " , @sprintf("%6.2f", x))
    p_gif = plot(trajectory_x, trajectory_y, linewidth=3, label=false)
    p_gif = scatter!(position, markersize=7, xlim=[Remin, Remax], ylim=[Immin, Immax], legend=:topright, xlabel="Re", ylabel="Im", label=label_string, aspect_ratio=:equal)
    frame(a, p_gif)  
end
gif(a, "single_pole_amplifier.gif", fps=30)