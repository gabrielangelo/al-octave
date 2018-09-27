dir = "../sistemas_lineares/teste_trabalho1/";
arquivo_A = dlmread (strcat (dir, arquivo_A));
inv = gauss_jordan_elimination (arquivo_A)
disp (inv);

