function [x] = gauss_eli_lu (A, b)
	[L, U, P] = lu_pivotamento(A)
	rank = _rank(U, y);
	if (rank == 1)
		y = L_substituicao (L, P*b);
		x = U_substituicao (U, y);
	elseif (rank == 0)
		x = solve_mult_sol (U, b);
	endif
endfunction
