files = files = dir(strcat(pwd, "/teste_trabalho1"))
for i=3:length (files)
	matrix = load strcat("matriz", num2str(i-2));
	vector = load strcat("vector", num2str(i-2));
	gauss_eli_lu(matrix,vector);
end 	
