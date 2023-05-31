# 3 задача практика 2
function my_log(a, x, e)
    z = x
    t = 1
    y = 0
    #ИНВАРИАНТ:  x = z^t * a^y
    while z < 1 / a || z > a || t > e
        if z < 1 / a
            z *= a
            y += t
        elseif z > a
            z /= a
            y -= t
        elseif t > e
            t /= 2
            z *= z
        end
    end
    return y
end

println(my_log(7, 17, 0.00001))