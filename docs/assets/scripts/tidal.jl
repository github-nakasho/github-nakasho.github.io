using Plots

# set the number of the vectors
len = 16 + 1
# set angles of the starting point of the vectors 
theta1 = range(0.0, 2pi, length=len)
# set the radius
r1 = 1.0
# compute the coordinates of the starting point
x1 = r1 * cos.(theta1)
y1 = r1 * sin.(theta1)
# set the coefficient
k = 0.5
# compute the first term of tidal force
first_x = - k * x1
first_y = - k * y1
# compute the second term of tidal force
second_x = 3 * k * cos.(theta1)
second_y = zeros(Float64, len)
# compute first + second
total_x = first_x + second_x
total_y = first_y + second_y
# set angles for drawing circle
theta2 = range(0.0, 2pi, length=256)
x2 = cos.(theta2)
y2 = sin.(theta2)
# make plot 
plt1 = plot(x2, y2, c=:black, legend=false)
plt1 = quiver!(x1, y1, quiver=(first_x, first_y), aspect_ratio=:equal, xlims=(-3, 3), ylims=(-1.5, 1.5), c=0, title='1')
plt2 = plot(x2, y2, c=:black, legend=false)
plt2 = quiver!(x1, y1, quiver=(second_x, second_y), aspect_ratio=:equal, xlims=(-3, 3), ylims=(-1.5, 1.5), c=1, title='2')
plt3 = plot(x2, y2, c=:black, legend=false)
plt3 = quiver!(x1, y1, quiver=(total_x, total_y), aspect_ratio=:equal, xlims=(-3, 3), ylims=(-1.5, 1.5), c=2, title='3')
plot(plt1, plt2, plt3)
# save figure
savefig("tidal_01.png")
