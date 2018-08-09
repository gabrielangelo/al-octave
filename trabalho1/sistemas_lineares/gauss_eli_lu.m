function [x] gauss (A, b)
	clc
	clear 
	[L, U, P] = lu_pivotamento(A)
	y = L_substituicao (L, b)
	x = U_substituicao (U, y)
	disp(x)
endfunction
