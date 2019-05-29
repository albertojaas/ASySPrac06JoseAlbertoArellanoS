function [Z2] = punto9(a,b,ciy,cix,xi)
syms  Z1 n;
Z1=problema8(a,b,ciy,cix,xi);
Z2= iztrans(Z1);


tiempo=0:1:10;
stem(tiempo,subs(Z2,n,tiempo),'b','LineWidth',2)
title('Respuesta al Impulso ','FontWeight','bold','FontSize',16)
grid on
end