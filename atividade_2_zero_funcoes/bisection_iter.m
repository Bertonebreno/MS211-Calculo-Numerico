format long

function y = p(x)
    y = 816*x^3 - 3835*x^2 + 6000*x - 3125;
endfunction

root = 25/17

E = 1e-15
inferior_limit = 1
superior_limit = 2

previous_point = 1.5
intermediate_point_value = p(previous_point)

inferior_limit_signal = sign(p(inferior_limit))
superior_limit_signal = sign(p(superior_limit))

iter = 0
while abs(intermediate_point_value) > E
    iter += 1;

    intermediate_point = (inferior_limit + superior_limit) / 2;
    intermediate_point_value = p(intermediate_point);
    intermediate_point_sign = sign(intermediate_point_value);

    if intermediate_point_sign == inferior_limit_signal
        inferior_limit = intermediate_point;
    else
        superior_limit = intermediate_point;
    endif

    error = (intermediate_point - root)/(previous_point - root);
    disp(error)
    previous_point = intermediate_point;
endwhile

iter
intermediate_point
p(intermediate_point)