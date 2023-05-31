# 1 задача
function binpow(a::Float64, n::Float64)
    if (n == 0)
        return 1
    end
    if (n % 2 == 1)
        return binpow(a, n - 1) * a
    else
        b = binpow(a, n / 2)
        return b * b
    end
end


function non_rec_binpow(a::Int64, n::Int64)
    res = 1
    while n > 0
        if n % 2 != 0
            res *= a
        end
        a *= a
        n = div(n, 2)
    end
    return res
end



println(non_rec_binpow(2, 5))






# 6 задача
function newton(r::Function, x; epsilon=1e-8, num_max=10)
    dx = r(x)
    x += dx
    k = 1
    while abs(dx) > epsilon && k < num_max
        dx = r(x)
        x += dx
        k += 1
    end
    abs(dx) > epsilon && @warn("accuracy did not reached")
    return x
end

f(x) = 0
root = newton(f, 1.0)
println(root)

# 7 задача
function newton(r::Function, x; epsilon=1e-8, num_max=10)
    dx = r(x)
    x += dx
    k = 1
    while abs(dx) > epsilon && k < num_max
        dx = r(x)
        x += dx
        k += 1
    end
    abs(dx) > epsilon && @warn("accuracy did not reached")
    return x
end

f(x) = cos(x) - x
root = newton(f, 1.0)
println(root)

# 8 задача
function newton(r::Function, x; epsilon=1e-8, num_max=10)
    dx = r(x)
    x += dx
    k = 1
    while abs(dx) > epsilon && k < num_max
        dx = r(x)
        x += dx
        k += 1
    end
    abs(dx) > epsilon && @warn("accuracy did not reached")
    return x
end

f(x) = x^2 + 5x - 7
root = newton(f, 1.0)
println(root)