function [x] = gauss_eli_lu (A, b)
	is_triu = istriu(A);
	is_tril = istril(A);
	if (!is_triu || !is_tril)
		[L, U, P] = LU_pivot(A);
		y = L_substituicao (L, P*b);
		rank = _rank(U, y);	
		if (rank == rows (U))
			x = U_substituicao (U, y);
		elseif (rank < rows (U) && rank > -1)
			x = solve_mult_sol (U, y);
		elseif (rank == -1)
			disp("solução inconsistente");
		endif
	elseif (is_triu)
		x = U_substituicao  (A, b);
	elsif (is_tril)
		x = L_substituicao (A, b);
	endif
endfunction
