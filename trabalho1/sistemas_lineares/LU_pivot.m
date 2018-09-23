function [L, U, P] = LU_pivot(A)
    [m, n] = size(A); L=eye(n); P=eye(n); U=A; h=m;
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
        for j=k+1:m
            L(j,k)=U(j,k)/U(k,k);
            U(j,k:n)=U(j,k:h)-L(j,k)*U(k,k:h);
        end
        pause;
    end
end
