function T = rctrap (f, a, b, n)
% Entrada - f es el integrando introducido como cadena de
% caracteres 'f'
% - a y b son los limites superior e inferior de integracion
% - n es el numero de veces para recursion
% Salida - T es la lista de la regla trapezoidal recursiva
M = 1;
h = b - a;
T = zeros(1, n+1);
T(1) = h * (feval(f, a) + feval(f, b)) / 2;
for j = 1:n
  M = 2 * M;
  h = h / 2;
  s = 0;
  for k = 1:M/2
    x = a + h * (2 * k - 1);
    s = s + feval(f, x);
 endfor
 T(j+1) = T(j) / 2 + h * s;
 endfor
endfunction