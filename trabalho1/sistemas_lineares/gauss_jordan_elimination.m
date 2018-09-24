
function [matrix] = gauss_jordan_elimination(matrix)

 [row,col] = size(matrix);

  m = 1;
  n = 1;
  
  while (m <= row) && (n <= col)
     [j,i] = max(abs(matrix(m:row,n)));
     i = i+m-1;
     if (j <= 0)
        matrix(m:row,n) = 0;
        n = n + 1;
     else
        matrix([m i],n:col) = matrix([i m],n:col);
        temp = matrix(m,n:col)/matrix(m,n);    
        matrix(:,n:col) = matrix(:,n:col) - matrix(:,n)*temp;
        matrix(m,n:col) = temp;
        m = m + 1;
        n = n + 1;
     end
  end
  
endfunction