## sistemas lineares 

Este módulo trata da resolução de sistemas lineares usando decomposição LU com pivotamento parcial.

## funcionalidades 
* Decomposição lu com pivotamento parcial -> LU_pivot.m; <br>
calcula o a decomposição P*L*U:  
```
$ >> A = magic(3)
$ >> [L, U, P] = LU_pivot (A);
```
* Substituição na matriz L(cálculo de y) e U (cálculo de x) -> L_substituicao.m e U_substituicao.m;
```
# Este fluxo considera que U seja uma matriz triangular inferior ( Sistema com solução trivial )
$ >> b = transpose (eye ( rows (1, rows (A)) # A  sendo uma matriz qualquer 
$ >> y = L_substituicao (L,P*b)
$ >> x = U_substituicao (U, y)
```
* _rank : sendo A a matriz de coeficientes de entrada. Determina se um sistema tem solução consistente (
_rank = rows (A)), consistente indeterminada (rows (A) > _rank > 0)  ou inconsistente (_rank == -1).
```
$ >> # consiserando a matriz A:    
     #        2   0   2   0
     #        0   2   2   4
     #        0   0   0   0
$ >> b = transpose( [1, 0, 0] )
$ >> sol = _rank (A, b)
$ >> sol 
ans = 1 # solução inconsistente
$ >> # sendo a matriz U
#   8.00000   7.00000   9.00000   5.00000
#   0.00000   1.75000   2.25000   4.25000
#   0.00000   0.00000  -0.85714  -0.28571
#   0.00000   0.00000   0.00000   0.66667
$ >> y = transpose( [4, 1, -1.7143, 2] )
$ >> sol = _rank (U, y)
$ >> sol
ans = 4
$ >> # seja a matriz A do exemplo anterior
$ >> y = transpose ([2, 0, 1])
$ >> sol = _rank (A, y)
$ >> sol 
ans = -1

```

* solve_mult_sol: Resolve sistemas com solução indeterminada (rows (A) > _rank > 0 )
```
$ >> #seja a matriz A do exemplo anterior
$ >> y1 = transpose ([2, 4, 0])
$ >> x = solve_mult_sol (A, y1)
$ >> x 
ans =
   1
   2
   0
   0
```
* multiples_entries: Calcula o sistema linear Ax = bm, com bm sendo um conjunto de vetores 
  ```
  $ >> seja a matriz m1 do exemplo anterior e o conjunto de vetores bm =     
                    1   0   0   0
                    0   1   0   0
                    0   0   1   0
                    0   0   0   1
  $ >>  multiples_entries (m1, bm )
  solução vetor 1
   2.25000
  -3.00000
  -0.50000
   1.50000


  solução vetor 2
  -0.75000
   2.50000
  -1.00000
  -0.50000


  solução vetor 3
  -0.25000
  -0.50000
   1.00000
  -0.50000


  solução vetor 4
   2.5000e-01
   3.8065e-16
  -5.0000e-01
   5.0000e-01
#### Obs: Grande maioria dos métodos acima (Menos multiples_entries) são usados no método gauss_eli_lu <br> que calcula qualquer solução de um sistema linear com solução qualquer (Consistente, indeterminado ou inconsistente).
 
