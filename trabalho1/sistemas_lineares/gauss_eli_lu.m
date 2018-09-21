function [x] = gauss_eli_lu (A, b)
	[L, U, P] = LU_pivot(A);
	cols_b = columns (b);
	rank = _rank(U, b);	
	if (cols_b == 1)
		if (rank == rows (U))
			disp (L);
			disp (U);
			y = L_substituicao (L, P*b);
			x = U_substituicao (U, y);
		elseif (rank < rows (U) && rank > -1)
			x = solve_mult_sol (U, b);
		endif
	else
		x = mult_entradas (A, b);
	endif
endfunction
