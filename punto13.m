clc
clear all
close all

N=[12 22 -31 1];
D=[-12 2  8  2];
[Nz,Dz]=c2dm(N,D,1,'zoh');
y=dstep(Nz,Dz);
plot(y,'.')
grid on;