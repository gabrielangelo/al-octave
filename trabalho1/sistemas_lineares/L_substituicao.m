function [y] = L_substituicao (L, b)
	n = length( b );
	y = zeros( n, 1 );
	for i=1:n
   		y(i) = b(i) - L(i, :)*y;
	end
endfunction
