function [x] = gauss_eli_lu (A, b)
	if (!istriu(A))
		[L, U, P] = LU_pivot(A);
		y = L_substituicao (L, P*b);
		rank = _rank(U, y);	
		if (rank == rows (U))
			disp (y);
			x = U_substituicao (U, y);
		elseif (rank < rows (U) && rank > -1)
			x = solve_mult_sol (U, y);
		elseif (rank == -1)
			disp("solução inconsistente");
		endif
	else
		x = U_substituicao  (A, b);
	endif
endfunction
