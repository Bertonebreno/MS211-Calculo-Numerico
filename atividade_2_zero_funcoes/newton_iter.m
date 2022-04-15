E = 1e-15;
next_point = 1.5;

point_value = 99999999;
iter = 0;
while abs(point_value) > E
    iter += 1
    next_point = next_point_newton(next_point);
    point_value = p(next_point)
endwhile