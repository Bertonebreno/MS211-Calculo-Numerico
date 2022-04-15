E = 1e-15;
inferior_limit = 1;
superior_limit = 2;

point_value = 99999999;
iter = 0;
while abs(point_value) > E
    iter += 1
    [inferior_limit, superior_limit] = next_point_bisection(inferior_limit, superior_limit);
    point_value = p((inferior_limit + superior_limit)/2)
endwhile