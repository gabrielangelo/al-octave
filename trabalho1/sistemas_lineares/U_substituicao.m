# referências: http://mathfaculty.fullerton.edu/mathews/n2003/backsubstitutionmod.html
function [ x ] = U_substituicao (U,b)
	n = length( b );
	x = zeros( n, 1 );
	for i=n:-1:1
   		x(i) = ( b(i) - U(i, :)*x )/U(i, i);
	end
endfunction
