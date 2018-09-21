function [new_mat, new_b, vars] = break_matrix (U, b)
	[m, n] = size(U); new_mat = zeros (m, 1);  new_mat(:,1) = U(:, 1);
	vars = ones (1, 1); 
	for i=2:m
		for j=2:n
			if (U(i, j) != 0 && j <= n) 
				new_mat = [new_mat, U(:,j)];
				vars = [vars, j];
				break;
			elseif (i == m && j == n && ( (U(i, j) == 0 && b(i, :) == 0) || (U(i, j) != 0 && b(i, :) == 0) ) )
				new_mat (i, :) = [];
				break;
			endif
		end
	end
	[m, n] = size (new_mat);
	new_b = b(1:m, 1);
endfunction

