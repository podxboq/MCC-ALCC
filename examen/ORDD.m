X = [0 1; 1 0] %[output:5acb6798]
Y = [0 -1i; 1i 0] %[output:8e4ec3b9]
Z = [1 0; 0 -1] %[output:247845a2]
I = eye(2) %[output:03e82525]
%%
X*Y-Y*X %[output:916275aa]
Y*Z-Z*Y %[output:6a120003]
Z*X - X*Z %[output:2342ed60]
%%
A = 4*I+2*X+Y-Z %[3 2-1i; 2+1i 5] %[output:30bc3c70]
trace(A) %[output:0e00abe6]
det(A) %[output:9a30d295]
4-sqrt(6) %[output:90ee005c]
4+sqrt(6) %[output:3fdce9e5]
eig(A) %[output:356b903c]


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:5acb6798]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"X","rows":2,"type":"double","value":[["0","1"],["1","0"]]}}
%---
%[output:8e4ec3b9]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"Y","rows":2,"type":"complex","value":[["0.0000 + 0.0000i","0.0000 - 1.0000i"],["0.0000 + 1.0000i","0.0000 + 0.0000i"]]}}
%---
%[output:247845a2]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"Z","rows":2,"type":"double","value":[["1","0"],["0","-1"]]}}
%---
%[output:03e82525]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"I","rows":2,"type":"double","value":[["1","0"],["0","1"]]}}
%---
%[output:916275aa]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":2,"type":"complex","value":[["0.0000 + 2.0000i","0.0000 + 0.0000i"],["0.0000 + 0.0000i","0.0000 - 2.0000i"]]}}
%---
%[output:6a120003]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":2,"type":"complex","value":[["0.0000 + 0.0000i","0.0000 + 2.0000i"],["0.0000 + 2.0000i","0.0000 + 0.0000i"]]}}
%---
%[output:2342ed60]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":2,"type":"double","value":[["0","2"],["-2","0"]]}}
%---
%[output:30bc3c70]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"A","rows":2,"type":"complex","value":[["3.0000 + 0.0000i","2.0000 - 1.0000i"],["2.0000 + 1.0000i","5.0000 + 0.0000i"]]}}
%---
%[output:0e00abe6]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"8"}}
%---
%[output:9a30d295]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"10"}}
%---
%[output:90ee005c]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"1.5505"}}
%---
%[output:3fdce9e5]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"6.4495"}}
%---
%[output:356b903c]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":2,"type":"double","value":[["1.5505"],["6.4495"]]}}
%---
