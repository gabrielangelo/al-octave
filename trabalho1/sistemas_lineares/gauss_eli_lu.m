function [x] = gauss_eli_lu (A, b)
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
endfunction
