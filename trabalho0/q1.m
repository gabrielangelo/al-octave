function q1 () 
	load vector1; 
	load vector2;
	
	disp ('soma:\n');
	_sum = vector1 + vector2;
	disp(_sum);
	disp ('subtração')
	_sub = vector1 - vector2;
	disp (_sub);
	
	printf('multiplicação por escalar\n');
	mpe = vector1(2)*vector1;
	disp (mpe);

	disp ('produto escalar\n');
	pe = dot(vector1,vector2);
	disp ( pe); 	
	
	disp ('produto vetorial\n');
	pv = cross(vector1, vector2);
	disp (pv);
	
	disp ('Norma\n');
	_norm = norm(vector2);
	disp (_norm);
endfunction
