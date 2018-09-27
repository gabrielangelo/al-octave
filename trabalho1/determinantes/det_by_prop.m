function [det] = det_by_prop(A)
    #disp(A)
    m = length(A);
    y = 0;
    % checking if the matrix it's a square matrix, 
    % if not a square matrix, display a message
    if size(A,1)~=size(A,2)
        warn_msg = "this is not a square matrix";
        disp(warn_msg);
    % checking if the matrix it's 2x2 and executing the calculation of determinant
    elseif (m == 2)
        det = A(1,1) * A(2,2)-A(2,1) * A(1,2);
    % for others cases there not fit the two validations before, this piece of code
    % apply the calculation of determinant based on Det(A) = (-1)^s*Det(U) formula;
    % and this code is using the LU decomposition from "sistemas_lineares" module
    else
	run("../sistemas_lineares/LU_pivot.m");
        [L, U, P, cont_perm] = LU_pivot(A);
        #disp("U matrix: "), 
	#disp(U);
        main_diag = diag(U);
        #disp("Main diagonal: ") , disp(main_diag)
        det = (-1)^cont_perm * (prod(main_diag));
        #disp("Determinant value: ");
	#disp(det);
    endif
endfunction
