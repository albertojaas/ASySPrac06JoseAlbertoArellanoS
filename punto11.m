function [Respuesta_Estado0] = R_estado0Dis(a,b,xi)
close all
tam=size(a);
tami=size(b);
syms y(n) n z Y(z) x(n) X(z) Yy fp;
syms edd edi
edd=0;
edi=0;
ciy=[0 0];
cix=[0];

for i=1:tam(2)
   yd(i)=y(n+tam(2)-i);
   edd=edd+ a(i)*ztrans(yd(i));   
end


for i=1:tami(2)
   xd(i)=x(n+tami(2)-i);
   edi=edi+ b(i)*ztrans(xd(i));   
end


edd=subs(edd,ztrans(y(n),n,z), Y(z));
edi=subs(edi,ztrans(x(n),n,z), X(z));

for j=1:tami(2)-1
edi=subs(edi,x(tami(2)-1-j),cix(j));
end

for j=1:tam(2)-1
edd=subs(edd,y(tam(2)-1-j),ciy(j));
end

edi=subs(edi,X(z), ztrans(xi));
edd=collect(edd,Y(z));
edd=subs(edd,Y(z),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);
h=partfrac(edd);
Respuesta_Estado0=iztrans(h);



% figure (1)
% hFig = figure(1);
% set(hFig, 'Position', [0 0 900 900])
% axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);
tiempo=0:1:10;
stem(tiempo,subs(Respuesta_Estado0,n,tiempo),'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta a estado cero')

end