function [val] = _det (matrix)
	[L, U, P, cont_perm] = LU_pivot (matrix);
	det_u = det_triu (U);
	disp("propriedade determinante triangular U -> produto dos elementos das diagonais");
	det_p = (-1)^cont_perm*det_u;
	disp ("propriedade determinante matriz de troca -> matriz P (-1)^s * det(U)");
	det_l= det_triu (L); 
	disp("propriedade determinante triangular L -> produto dos elementos das diagonais");
	val = det_p* det_triu (L) * det_l;
endfunction
