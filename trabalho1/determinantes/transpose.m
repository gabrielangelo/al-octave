% Function used by calculate transpose of a matrix 
% without use transpose() built-in function;
% This function is not being used, but will be in the future;

function [B] = transp(A)
    [l c] = size(A);
    B = zeros(c,l);
    for i = 1:l
        for j = 1:c
            B(j,i) = A(i,j)
        end
    end
end