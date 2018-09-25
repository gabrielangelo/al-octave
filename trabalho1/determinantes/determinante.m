function [y] = determinante(A)
m = length(A);
y = 0;

if size(A,1)~=size(A,2)
    warn_msg = "essa nao eh uma matriz quadrada";
    disp(warn_msg);

elseif (m == 2)
    y = A(1,1) * A(2,2)-A(2,1) * A(1,2);
else
    for i=1:m
        y = y+((-1) ^ (1+i)) * A(1,i) * cofator(A,1,i);
end
end
end 