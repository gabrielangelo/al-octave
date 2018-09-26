function [red] = det_triu (matrix)
	_diag = diag (matrix);
	m = rows (_diag);
	red = 1;
	for i=1:m
		red = _diag(i, 1)*red;
	end
endfunction	
