function q2 ()
    load matrix1; 
    load matrix2; 
    if (columns(matrix1) != rows(matrix2))
        disp ('dimensões incompatíveis');
    else 
        mul_result = matrix1*matrix2;
	transp = transpose(mul_result);
	save resultadoq2.mat transp;
	disp ('arquivo resultadoq2.mat criado !')
    endif
endfunction
