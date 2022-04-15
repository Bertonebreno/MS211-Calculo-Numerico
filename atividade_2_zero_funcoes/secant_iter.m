E = 1e-15
current_point = 1
next_point = 2

point_value = 99999999
iter = 0
while abs(point_value) > E
    iter += 1
    [current_point, next_point] = next_point_secant(current_point, next_point)
    point_value = p(next_point)
endwhile