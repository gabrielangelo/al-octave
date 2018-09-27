function [x] = solve_mult_sol (U, b)
	# retorna o sistema para resolução do sistema correspondente das variáveis básicas 
	[new_U, new_b, vars] = break_matrix (U, b); 
	n = columns (U);
	# vetor base de múltiplas soluções
	x = zeros (n, 1); 
	new_x = U_substituicao (new_U, new_b); 
	cols_vars = columns (vars); 
	for j=1:cols_vars
		# realiza a substitição no vetor solução levando em consideração o valor do e-nésimo termo xn 
		p = vars (1, j);
    		x(p, 1) = new_x (j, 1); 
	end     
endfunction
