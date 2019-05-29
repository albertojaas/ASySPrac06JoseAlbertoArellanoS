function [ R_Estado_0 ] = R_estado0( a,b,xi )
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

R_imp = Ft*laplace(xi);
R_Estado_0 = ilaplace(R_imp)

title('Respuesta Estado 0','FontWeight','bold','FontSize',16)
ezplot(R_Estado_0)
xlabel('tiempo','FontWeight','bold','FontSize',16)
grid on
end





