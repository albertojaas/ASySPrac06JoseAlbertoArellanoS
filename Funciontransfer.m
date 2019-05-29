function [ Ft ] = Funciontransfer( a,b )
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]

close all
tam=size(a);
tami=size(b);
syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1);
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1);
end
Ft = edi/edd

end

