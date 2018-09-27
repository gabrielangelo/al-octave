function multiples_entries (A, b)
	# basicamente uma extensão de gauss_eli_lu considerando múltiplas entradas (vetores b)
	# https://github.com/gabrielangelo/al-octave/blob/master/trabalho1/sistemas_lineares/gauss_eli_lu.m
	cols_b = columns (b);
	[L, U, P] = LU_pivot (A);
	[lin_a, cols_a] = size (A);
	for j=1:cols_b
		#pega vetor b(:, j)
		_b = b(:, j);
		y = L_substituicao (L,P*_b);
		rank = _rank (U, y);
		if (rank == lin_a)
			x = U_substituicao (U, y);
			printf ('solução vetor %d\n', j);
                	disp (x);
                	disp ("\n");
		elseif (rank < lin_a && rank > -1)
			x = solve_mult_sol (U, y);
		elseif (rank == -1)	
			disp ("solução inconsistente");
		endif
	end
endfunction
				
			
			
