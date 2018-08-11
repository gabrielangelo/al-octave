function [x] gauss_eli_lu (A, b)
	clc
	clear 
	[L, U, P] = lu_pivotamento(A)
	y = L_substituicao (L, b);
	rank = _rank(U, y);
	if (rank == 1)
		x = U_substituicao (U, y);
		disp(x);
	endif
endfunction
