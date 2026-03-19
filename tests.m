format rational
%%
%[text] ## Solucion a los test antiguos
%[text] ### Test 1
z1 = (1-1i)^2 * 1i^3 + sqrt(2)*exp(3*pi*1i/4) %[output:1eb7f67d]
z2 = (2+2i) - 2*exp(3*pi*1i/2) %[output:45543fe1]
%%
%[text] Soluciones
%[text] ADBADDABAC
%%
result1 = 3*z2 - real((z1+1)/(z2-2)) %A 23/4 + 12i %[output:706d31ec]
result2 = -1i*imag(z2) + abs(z1*z2) %D 10*sqrt(2) - 4i %[output:1517b120]
result3 = z2/z1 - z1*(z2 + 2i) %B 59/5 + 73/5i %[output:6e4d67d5]
result4 = (-z1^2 - (8+3i)) / z1 %~DC %[output:193dc7f2]
base = -sqrt(3) + 1i;
result5 = exp(z2 * log(base)) %~AB %[output:4a32ba5f]
result6 = conj(z1 * z2^(-1)) %D %[output:4660c9fa]
result7_rad = angle(z1*z2)          %A %[output:25235500]
w = 1i*sqrt(3) + z1/z2 - (9/10 + 7/10*1i); %[output:8896d6b8]
result8 = sqrt(w)   %B %[output:6a2803d3]
p = [1, -2, 2, -4, 1, -2];  % coeficientes de mayor a menor grado
result9 = roots(p) %A %[output:6020a0ee]
denom = [1, 0, 1, 8, 0, 8];  % coeficientes de z^5+z^3+8z^2+8
result10 = roots(denom)   %C %[output:4755d88b]
%%
3*pi/4 %[output:2d0fb9bd]
%%
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:1eb7f67d]
%   data: {"dataType":"textualVariable","outputData":{"name":"z1","value":"-3.0000 + 1.0000i"}}
%---
%[output:45543fe1]
%   data: {"dataType":"textualVariable","outputData":{"name":"z2","value":"2.0000 + 4.0000i"}}
%---
%[output:706d31ec]
%   data: {"dataType":"textualVariable","outputData":{"name":"result1","value":"      23\/4      +   12i      \n"}}
%---
%[output:1517b120]
%   data: {"dataType":"textualVariable","outputData":{"name":"result2","value":"    2786\/197    -    4i      \n"}}
%---
%[output:6e4d67d5]
%   data: {"dataType":"textualVariable","outputData":{"name":"result3","value":"      59\/5      +   73\/5i    \n"}}
%---
%[output:193dc7f2]
%   data: {"dataType":"textualVariable","outputData":{"name":"result4","value":"      51\/10     +    7\/10i   \n"}}
%---
%[output:4a32ba5f]
%   data: {"dataType":"textualVariable","outputData":{"name":"result5","value":"      -1\/57332  +   17\/151887i\n"}}
%---
%[output:4660c9fa]
%   data: {"dataType":"textualVariable","outputData":{"name":"result6","value":"      -1\/10     -    7\/10i   \n"}}
%---
%[output:25235500]
%   data: {"dataType":"textualVariable","outputData":{"name":"result7_rad","value":"   -1065\/452   \n"}}
%---
%[output:8896d6b8]
%   data: {"dataType":"textualVariable","outputData":{"name":"result7_deg","value":"    -135       \n"}}
%---
%[output:6a2803d3]
%   data: {"dataType":"textualVariable","outputData":{"name":"result8","value":"     985\/1393   + 1079\/881i  \n"}}
%---
%[output:6020a0ee]
%   data: {"dataType":"textualVariable","outputData":{"name":"result9","value":"       2        +    0i      \n       1\/319988364 +    1i      \n       1\/319988364 -    1i      \n      -1\/319988448 +    1i      \n      -1\/319988448 -    1i      \n"}}
%---
%[output:4755d88b]
%   data: {"dataType":"textualVariable","outputData":{"name":"result10","value":"      -2        +    0i      \n       1        + 1351\/780i  \n       1        - 1351\/780i  \n       1\/28823037615171176 +    1i      \n       1\/28823037615171176 -    1i      \n"}}
%---
%[output:2d0fb9bd]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"    1065\/452   \n"}}
%---
