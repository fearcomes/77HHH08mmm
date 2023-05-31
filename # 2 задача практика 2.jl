# 2 задача практика 2
function non_rec_binpow(a::Float64, n::Float64)
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

function fib_num(n::Float64)
    first_num = (1 + sqrt(5)) / 2
    second_num = (1 - sqrt(5)) / 2
    divider = sqrt(5)

    ans = (non_rec_binpow(first_num, n) - non_rec_binpow(second_num, n)) / divider
    return ans
end

print(fib_num(6.0))