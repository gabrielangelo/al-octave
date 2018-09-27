# Decomposição LU com pivotamento parcial para matrizes quadradas e retangulares 
# Este algoritmo tem as seguintes referências: 
#	http://www4.ncsu.edu/~kksivara/ma505/handouts/lu-pivot.pdf
#	http://shannon.ir/Bookme/Scientific%20Computing%20with%20MATLAB%20and%20Octave.pdf

function [L, U, P, cont_perm] = LU_pivot(A)
    # P_aux -> guarda a última matriz de pivotamento
    # h -> variável que guarda o números de linhas usado no slice da colunas da matriz U, 
    # essa variável é alterada para n(numeros de colunas) caso a matriz seja retangular
    # count_perm -> conta o número de matrizes de pivotamento calculadas no laço.

    [m, n] = size(A); L=eye(n); P=eye(n); P_aux = P; U=A; h=m; cont_perm = 0;
    if ( m < n)
	L = eye (m);
	P = eye (m);
	h = n;
    endif
    for k=1:m-1
        pivot=max(abs(U(k:m,k)));
        for j=k:m
            if(abs(U(j,k))==pivot)
                ind=j;
                break;
            endif
        end
        U([k,ind],k:h)=U([ind,k],k:h);
        L([k,ind],1:k-1)=L([ind,k],1:k-1);
        P([k,ind],:)=P([ind,k],:);
	if (!isequal (P_aux, P))
		cont_perm++;
		P_aux = P;
	endif
 
        for j=k+1:m
            L(j,k)=U(j,k)/U(k,k);
            U(j,k:n)=U(j,k:h)-L(j,k)*U(k,k:h);
        end
        #pause;
    end
end
