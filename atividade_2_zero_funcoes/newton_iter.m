format long
function y = p(x)
    y = 816*x^3 - 3835*x^2 + 6000*x - 3125;
endfunction
function dy = dp(x)
    dy = 2448*x^2 - 7670*x + 6000;
end
E = 1e-15;
initial_point = 1.5;
iter = 0;
root = 25/17;
while abs(p(initial_point)) > E
    iter += 1;
    new_point = initial_point - p(initial_point) / dp(initial_point);
    error = (new_point - root) / (initial_point - root)^2;
    disp(error)
    initial_point = new_point;
endwhile
iter
initial_point