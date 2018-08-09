function [determinado] e_determinado (U, b)
	A = montar_sistema (U, b)
	m = rows (A)
	ultima_linha = A (m, :)
	for i 
	
