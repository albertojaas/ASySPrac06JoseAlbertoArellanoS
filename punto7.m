syms t;
a=R_impulso([2 2 1],[2 1],[1 1],[0],exp(-t).*heaviside(t));
b=R_entrada0([2 2 1],[0 1]);
c=R_estado0([2 2 1],[2 1],exp(-t).*heaviside(t));
d=R_total([2 2 1],[2 1],[0 1],exp(-t).*heaviside(t));

s=tf('s');
g=(2*s^4+12*s^3+21*s^2+21*s+12)/(s^5+3*s^4+6*s^3+8*s^2+8*s+4);
t=0:0.01:10;

subplot(3,2,1)
fplot(a,[0, 5],'b','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta al Impulso')
subplot(3,2,2)
fplot(b,[0, 5],'r','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta a entrada cero')
subplot(3,2,3)
fplot(c,[0, 5],'y','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta a estado cero')
subplot(3,2,4)
fplot(d,[0, 5],'g','LineWidth',2); grid on;
xlabel('tiempo')
title('Respuesta total')
subplot(3,2,[5 6])
step(g,t); grid on;
xlabel('tiempo')
title('Respuesta al escalon con condiciones iniciales 0')