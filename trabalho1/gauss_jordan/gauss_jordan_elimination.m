%Elimina��o Gauss-Jordan para matrizes quadradas 
%Este m�todo reduz uma matriz a sua forma reduzida escalonada por linhas, 
%e retorna a inversa da matriz inserida.
function [inv] = gauss_jordan_elimination(matrix) 
  %Verifica se a matriz � quadrada, caso n�o seja, a fun��o n�o pode continuar
  if (rows(matrix) != columns(matrix))
      disp("matriz deve ser quadrada!");
      return 
  endif
  #run ("../determinantes/det_by_prop.m");
 
  #if (det_by_prop (matrix) == 0)
  #	disp ("matrix � singular");
  #	return;
  #endif

  matrix = [matrix eye(rows (matrix), columns (matrix))]
  [row,col] = size(matrix);
  m = 1;
  n = 1;
  %row e col s�o respectivamente as linhas e colunas da matriz
  %m e n s�o os contadores para podermos iterar pela matriz
  %loop por toda a matriz
	while (m <= row) && (n <= col)
        %Aqui encontramos o valor (j) e a posi��o (i) do maior valor da coluna n 
     		[j,i] = max(abs(matrix(m:row,n)));
    	 	i = i+m-1;
     		if (j <= 0)
            %Neste caso a coluna � insignificante, ent�o a zeramos
        		matrix(m:row,n) = 0;
        		n = n + 1;
     		else
            %trocamos as linhas de m & i de posi��o
        		matrix([m i],n:col) = matrix([i m],n:col);
            %dividimos a linha do piv� pelo elemento na linha m coluna n
        		temp = matrix(m,n:col)/matrix(m,n);    
            %subtrai multiplos da linha do piv� de acordo com as outras linhas
        		matrix(:,n:col) = matrix(:,n:col) - matrix(:,n)*temp;
        		matrix(m,n:col) = temp;
        		m = m + 1;
        		n = n + 1;
		    endif
	end
	inv = matrix(:, [col/2 + 1:col])
endfunction
