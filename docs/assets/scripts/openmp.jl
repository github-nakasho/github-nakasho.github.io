using Base.Threads
using BenchmarkTools
@show nthreads()

function heavycalc(i)
    c = 0.0
    for j in 1:1000
        c += cos(i*j)
    end
    return c
end

function test()
    n = 100
    a = ones(Float64, n)
    Threads.@threads for i in 1:n
        a[i] = heavycalc(i)
    end
    return sum(a)
end

a = test()
println(a)
@btime test()