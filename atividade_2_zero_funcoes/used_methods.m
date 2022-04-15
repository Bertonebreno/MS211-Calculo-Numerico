1;

function y = p(x)
    y = 816*x^3 - 3835*x^2 + 6000*x - 3125
endfunction

function dy = dp(x)
    dy = 3*816*x^2 - 2*3835*x + 6000
end

% inferior_limit < superior_limit
function [next_inferior_limit, next_superior_limit] = next_point_bisection(inferior_limit, superior_limit)
    
    inferior_limit_sign = sign(p(inferior_limit))

    intermediate_point = (inferior_limit + superior_limit) / 2
    intermediate_point_value = p((inferior_limit + superior_limit) / 2)
    intermediate_point_sign = sign(intermediate_point_value)

    if inferior_limit_sign == 0
        next_inferior_limit = inferior_limit
        next_superior_limit = superior_limit
        return
    end

    if intermediate_point_sign == inferior_limit_sign
        next_inferior_limit = intermediate_point
        next_superior_limit = superior_limit
    else
        next_inferior_limit = inferior_limit
        next_superior_limit = intermediate_point
    end
endfunction

function [current_point, next_point] = next_point_secant(last_point, current_point)
    current_point_value = p(current_point)
    last_point_value = p(last_point)

    angular_coef = (current_point_value - last_point_value) / (current_point - last_point)

    next_point = current_point - current_point_value/angular_coef
    current_point = last_point
end

function next_point = next_point_newton(current_point)
    current_point_value = p(current_point)
    current_point_derivative_value = dp(current_point)

    next_point = current_point - current_point_value/current_point_derivative_value
end