function [y] = determinante(A)
m = length(A);
y = 0;

if(m == 2)
    y = A(1,1) * A(2,2)-A(2,1) * A(1,2);

elseif size(A,1)~=size(A,2)
    warn_msg = "matrix not square; no proper determinant";
    disp(warn_msg);

else
    for i=1:m
        y = y+((-1) ^ (1+i)) * A(1,i) * cofator(A,1,i);
end
end
end 