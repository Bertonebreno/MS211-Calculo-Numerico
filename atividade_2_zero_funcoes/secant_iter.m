format long

function y = p(x)
    y = 816*x^3 - 3835*x^2 + 6000*x - 3125;
endfunction

E = 1e-15
old_point = 1
current_point = 2
root = 5/3

iter = 0
while abs(p(current_point)) > E 
    iter += 1;

    ang = (p(current_point) - p(old_point)) / (current_point - old_point);

    next_point = current_point - p(current_point)/ang;

    error = (current_point - root) / (old_point - root);
    disp(error)

    old_point = current_point;
    current_point = next_point;
endwhile

iter
current_point