function [ R_imp ] = R_impulso( a,b )

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
Ft = edi/edd;

R_imp = ilaplace(Ft)

hold on
title('Respuesta al impulso','FontWeight','bold','FontSize',16)
ezplot(R_imp)
xlabel('tiempo','FontWeight','bold','FontSize',16)
grid on
end

