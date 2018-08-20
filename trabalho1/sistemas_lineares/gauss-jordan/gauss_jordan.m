%WIP
%TODO: funcionalizar, integrar ao main
matrix = [2 1 1 0
4 3 3 1
8 7 9 5
6 7 9 8];

[row,col] = size(matrix);

for j=1 : row-1
    for z=2:row
        if matrix(j,j)==0
            t=matrix(1,:);matrix(1,:)=matrix(z,:);
            matrix(z,:)=t;
        end
    end
    for i=j+1:row
        matrix(i,:)=matrix(i,:)-matrix(j,:)*(matrix(i,j)/matrix(j,j));
    end
end

for j=row:-1:2
    for i=j-1:-1:1
        matrix(i,:)=matrix(i,:)-matrix(j,:)*(matrix(i,j)/matrix(j,j));
    end
end

for s=1:row
    matrix(s,:)=matrix(s,:)/matrix(s,s);
    x(s)=matrix(s,col);
end
disp('matrix in reduced row echelon form:');
matrix
x'