clear all;
clc
close all;
% Matrix determinant
menu1 = menu('Choose the determinant calculator: ','By Cofactor','By Properties');
switch (menu1)
    case 1
    count = 1;
    while count <= 5
        path_folder = "../sistemas_lineares/teste_trabalho1/"
        num = int2str(count);
        matrix = strcat("matriz",num);
        path_file = strcat(path_folder,matrix);
        A = dlmread (path_file);
        run("det_by_cofat.m");
        [y] = det_by_cofat(A);
        disp(y)
        count = count + 1;
    endwhile

    case 2
    count = 1;
    while count <= 5
        path_folder = "../sistemas_lineares/teste_trabalho1/"
        num = int2str(count);
        matrix = strcat("matriz",num);
        path_file = strcat(path_folder,matrix);
        A = dlmread (path_file);
        run("det_by_prop.m");
        det_by_prop(A);
        count = count + 1;
    endwhile
    otherwise
        disp("Invalid Option")
endswitch