
using HarmonicOrthogonalPolynomials
using PlotlyJS
using SpecialPolynomials


function R(n, l, r)
    L = factorial(n) * basis(Laguerre{2l+1}, n-l-1)
    Lvalues = L(2r/n)
    Nnl = sqrt((2.0/n)^3*factorial(n-l-1)/(2n*factorial(n+l)^3))
    return Nnl * Lvalues * (2r/n)^l * exp(-r/n)
end

Y(l, m, theta, phi) = sphericalharmonicy(l, m, theta, phi)

# set the number of grids
nx = 30
xmin = -15.0
xmax = 15.0
ny = 20
ymin = -10.0
ymax = 0.0
nz = 60
zmin = -20.0
zmax = 20.0
xs = range(xmin, xmax, length=nx)
ys = range(ymin, ymax, length=ny)
zs = range(zmin, zmax, length=nz)

n = 3
l = 2
m = 0

xp, yp, zp = mgrid(xs, ys, zs)
probp = zeros((nx, ny, nz))

for k in 1:nz
    for j in 1:ny
        for i in 1:nx
            x = xp[i, j, k]
            y = yp[i, j, k]
            z = zp[i, j, k]
            r = sqrt(x*x+y*y+z*z)
            theta = acos(z/r)
            phi = sign(y) * acos(x/sqrt(x*x+y*y))
            prob = abs2(R(n, l, r)*Y(l, m, theta, phi))
            xp[i, j, k] = x
            yp[i, j, k] = y
            zp[i, j, k] = z
            probp[i, j, k] = prob
        end
    end
end

probmax = findmax(probp)[1]
probp /= probmax

layout = Layout(scene_camera = attr(
    up=attr(x=0, y=0, z=1),
    center=attr(x=0, y=0, z=0),
    eye=attr(x=2.0, y=2.0, z=0.1)
))
p = plot(volume(x=xp[:], y=yp[:], z=zp[:], 
                value=probp[:], isomin=0.1, isomax=1.0, opacity=0.15, surface_count=21, 
                colorscale=:Cividis), layout)
savefig(p, "spherical.png")

