function [x] = L_substituicao (L, y)
	n = length( y );
	y = zeros( y, 1 );
	for i=1:n
   		x(i) = y(i) - L(i, :)*x;
	end 
endfunction
