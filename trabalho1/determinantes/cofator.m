function [ output ] = cofator( A,i,j )
    [m,n]=size(A);
 
% here is the implementation of cofactor concept;
% create a new matrix by eleminating the row and column in which the element is presente;
% COFACTOR MATRIX
 
    row = 1;
    col = 1;
    for i1 = 1:m
        for j1 = 1:n
            if(i1~=i && j1~=j)
                new(row,col) = A(i1,j1);
                col = col+1;
            end
        end
        
        if(col~=1)
        row = row+1;
        end

        col = 1;
    end
    output = det_by_cofat(new);

end