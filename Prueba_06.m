syms t
%Funciontransfer( [2,3,1],[3,1]);
%R_impulso( [2,3,1],[3,1]);
%laplace2015a([2 3 1],[0],[3,1],[0],heaviside(t),10)
%R_entrada0([2 3 1],[3 1],[1 2],[0 0])
%R_estado0([2 3 1],[3 1],cos(t)*heaviside(t))
R_total([2 3 1],[3 1],[1 2],[0 0],cos(t)*heaviside(t))