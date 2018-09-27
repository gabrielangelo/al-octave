dir = "teste_trabalho1/"
arquivo_A = "matriz1";
arquivo_b = "vetor1";
A = dlmread (strcat (dir, arquivo_A)); b = dlmread (strcat (dir, arquivo_b)); cols_b = columns (b);

if (cols_b > 1)
	multiples_entries (A, b);
else
	gauss_eli_lu(A,b);
endif

	
