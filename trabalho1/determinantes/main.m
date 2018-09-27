clear all;
clc
close all;
% Create a menu to choose between two ways to calculate determinants;
menu1 = menu('Choose the determinant calculator: ','By Cofactor','By Properties');

% switch -> case to handle the chosen option
switch (menu1)
    %this first option is calculate determinant by cofactor matrix
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
    % this second option is calculate the determinant using the properties
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
        % this is to handle if the user input an invalid option
        disp("Invalid Option")
endswitch