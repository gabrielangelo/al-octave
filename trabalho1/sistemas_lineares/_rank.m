function [resposta] = _rank (U, b)
	[m, n] = size(U); cont_por_linha = zeros(rows(U), 2); [mc, nc] = size(cont_por_linha); resposta=0;
	p = 0;
        valor = 0;
	for i=1:m 
		cont=0;
		for j=i:n
			if (U(i, j) != 0)
				cont++;
				cont_por_linha(i, 1) = cont;
			endif
			cont_por_linha(i, 2) = b(i,1);
		end
		if (cont_por_linha(i, 1) == m-p && cont_por_linha(i, 2) != 0)
                        valor++;
         	endif 
		if (cont_por_linha(i, 1) == 0 && cont_por_linha(i, 2) != 0)
			resposta = -1;
			break;
                endif
		p++;
	end
	disp ( cont_por_linha);	
	if (valor == m) 
		resposta = 1;
	endif
endfunction
