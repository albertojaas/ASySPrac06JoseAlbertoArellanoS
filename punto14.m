syms n;
tiempo=0:1:10;

a=punto9([6 5 1],[1 1],[2 1],[0.5],heaviside(n));
b=punto10([6 5 1],[2 0]);
c=punto11([6 5 1],[1 1],heaviside(n));
d=punto12([6 5 1],[1 1],[2 0],heaviside(n));

N=[12 22 -31 1];
D=[-12 2  8  2];
[Nz,Dz]=c2dm(N,D,1,'zoh');
y=dstep(Nz,Dz);


subplot(3,2,1)
stem(tiempo,subs(a,n,tiempo),'b','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta al Impulso')
subplot(3,2,2)
stem(tiempo,subs(b,n,tiempo),'r','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta a entrada cero')
subplot(3,2,3)
stem(tiempo,subs(c,n,tiempo),'y','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta a estado cero')
subplot(3,2,4)
stem(tiempo,subs(d,n,tiempo),'g','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta total')
subplot(3,2,[5 6])
plot(y,'.'); grid on;
xlabel('tiempo')
title('Respuesta al escalon con condiciones iniciales 0')