## Método de Gauss-Jordan
Este módulo trata da obtenção da inversa de uma matriz usando método de Gauss-Jordan.

## Funcionalidades 
* gauss_jordan_elimination: Calcula a inversa de uma matriz invertível usando o método de Gauss-Jordan.
```
$ >> # Seja a matriz m1:
  #	 2   1   1   0
  #	 4   3   3   1
  #	 8   7   9   5
  #	 6   7   9   8
$ >> inv = gauss_jordan_elimination (m1)
matrix =

   2   1   1   0   1   0   0   0
   4   3   3   1   0   1   0   0
   8   7   9   5   0   0   1   0
   6   7   9   8   0   0   0   1

inv =

   2.2500e+00  -7.5000e-01  -2.5000e-01   2.5000e-01
  -3.0000e+00   2.5000e+00  -5.0000e-01  -2.2204e-16
  -5.0000e-01  -1.0000e+00   1.0000e+00  -5.0000e-01
   1.5000e+00  -5.0000e-01  -5.0000e-01   5.0000e-01

```
