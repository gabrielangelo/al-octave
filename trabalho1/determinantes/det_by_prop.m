run("../sistemas_lineares/LU_pivot.m")

function [Det] = det_by_prop(A)
disp(A)
m = length(A);
y = 0;

if size(A,1)~=size(A,2)
    warn_msg = "essa nao eh uma matriz quadrada";
    disp(warn_msg);

elseif (m == 2)
    y = A(1,1) * A(2,2)-A(2,1) * A(1,2);

else
    [L, U, P, cont_perm] = LU_pivot(A);
    disp("U matrix: "), disp(U)
    main_diag = diag(U);
    disp("Main diagonal: ") , disp(main_diag)
    Det = (-1)^cont_perm * (prod(main_diag));
    disp("Determinant value: ") , disp(Det)
end