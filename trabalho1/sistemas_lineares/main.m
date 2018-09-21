#files = files = dir(strcat(pwd, "/teste_trabalho1"))
#matrix = load strcat("matriz", num2str(i-2)); vector = load strcat("vector", num2str(i-2));

arquivo_A = "matriz1";
arquivo_b = "vetor1";
A = dlmread (arquivo_A); b = dlmread (arquivo_b); cols_b = columns (b);

if (cols_b > 1)
	multiplas_entradas (A, b);
else
	gauss_eli_lu(A,b);
endif
end 	
