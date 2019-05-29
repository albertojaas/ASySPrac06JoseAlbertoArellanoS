function [Respuesta_Entrada0] = R_entrada0Dis(a,ciy)
close all
tam=size(a);
syms y(n) n Y(z) Yy;
syms edd;
edd=0;

for i=1:tam(2)
   yd(i)=y(n+tam(2)-i);
   edd=edd+ a(i)*ztrans(yd(i));   
end

edd=subs(edd,ztrans(y(n),n,z), Y(z));

for j=1:tam(2)-1
edd=subs(edd,y(tam(2)-1-j),ciy(j));
end

edd=collect(edd,Y(z));
edd=subs(edd,Y(z),Yy);
eq1=edd==0;
edd=solve(eq1, Yy);
Respuesta_Entrada0=simplify(iztrans(edd));

% figure (1)
% hFig = figure(1);
% set(hFig, 'Position', [0 0 900 900])
% axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);
tiempo=0:1:10;
stem(tiempo,subs(Respuesta_Entrada0,n,tiempo),'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta a entrada cero','FontWeight','bold','FontSize',16)

end