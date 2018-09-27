# função que determina se um sistema linear Ux=b tem solução trivial(resp=1), indeterminada(resp < rows(U) && resp >0) ou inconsistente(resp=-1)
function [resp] = _rank (U, b)
	[m, n] = size (U); check_matrix = zeros (m, 1);
	resp = 0;
	# coef_position -> número da i-ésima linha não nula
	# check_matrix -> vetor com o mesmo número de linhas de U, em que cada linha corresponde ao coef_position
	for i=1:m
		for j=1:n
			coef_position = 0;
			if(U(i, j) != 0)
				coef_position+=i;
				check_matrix(i, 1) = coef_position;
				break;
			endif
		end
		if (check_matrix(i,1) == 0 && b(i, 1) != 0 )
			resp=-1;
			break
		endif
		if (check_matrix(i, 1) == i)
			resp+=1;
		else 
			resp -= 1;
		endif
	end
endfunction

	
