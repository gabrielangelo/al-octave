# função que seleciona as colunas pivores de uma matriz U para resolução 
function [new_mat, new_b, vars] = break_matrix (U, b)
	# new_mat é a matriz correspondente a junção das colunas de pivôs e sempre será quadrada
	[m, n] = size(U); new_mat = zeros (m, 1);  new_mat(:,1) = U(:, 1);
	vars = ones (1, 1); 
	for i=2:m
		for j=2:n
			# seleciona primeiro pivo (U(i, j) != 0)
			if (U(i, j) != 0 && j <= n) 
				# adiciona a coluna a new_mat
				new_mat = [new_mat, U(:,j)];
				# adiciona j (numero de coluna/xn) que corresponde a ordem do e-nésimo coeficiente (variáveis básicas)
				vars = [vars, j];
				break;
			elseif ((i == m && j == n) && ( (U(i, j) == 0 && b(i, :) == 0) || (U(i, j) != 0 && b(i, :) == 0) ) )
				#caso a última linha for nula, a linha é removida e new_mat sempre será uma matriz quadrada
				new_mat (i, :) = [];
				break;
			endif
		end
	end
	[m, n] = size (new_mat);
	# new_b será o novo vetor do sistema new_matx=new_b para resolução das variávels 
	new_b = b(1:m, 1);
endfunction

