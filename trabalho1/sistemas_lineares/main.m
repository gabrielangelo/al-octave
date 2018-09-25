#files = files = dir(strcat(pwd, "/teste_trabalho1"))
#matrix = load strcat("matriz", num2str(i-2)); vector = load strcat("vector", num2str(i-2));

arquivo_A = "matriz1";
arquivo_b = "vetor1";
A = dlmread (arquivo_A); b = dlmread (arquivo_b); cols_b = columns (b);

do_gauss_jordan = false; % modificar a flag para fazer ou não a eliminação gauss-jordan

if (cols_b > 1)
	multiples_entries (A, b);
else
	gauss_eli_lu(A,b);
endif

if (do_gauss_jordan == true)
  rref = gauss_jordan_elimination(A);
  disp('matrix in reduced row echelon form:');
  disp(rref);
end 	
