function [x] = solve_mult_sol (U, b)
	[new_U, new_b, vars] = break_matrix (U, b); 
	n = columns (U);
	x = zeros (n, 1); 
	disp (new_U);
	new_x = U_substituicao (new_U, new_b); 
	disp(new_x);
	cols_vars = columns (vars); 
	for j=1:cols_vars
		p = vars (1, j);
    		x(p, 1) = new_x (j, 1); 
	end     
endfunction