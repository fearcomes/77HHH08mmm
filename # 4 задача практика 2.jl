# 4 задача практика 2
function bisection_method(f, a, b, tol)

    while (b - a) / 2 > tol
        c = (a + b) / 2
        if f(c) == 0
            return c
        elseif f(a) * f(c) < 0
            b = c
        else
            a = c
        end
    end
    return (a + b) / 2
end

f(x) = x^2 - 2
a = 0
b = 2
tol = 1e-6
x = bisection_method(f, a, b, tol)
println(x)