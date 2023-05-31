# 5 задача практика номер 2
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

f(x) = cos(x) - x
a = 0
b = 1
tol = 1e-6
println(bisection_method(f, a, b, tol))