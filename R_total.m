function [ R_T ] = R_total( a,b,ciy,cix,xi )
RE = R_estado0( a,b,xi );
REE = R_entrada0( a,b,ciy,cix);
R_T = RE + REE

title('Respuesta Total','FontWeight','bold','FontSize',16)
ezplot(R_T)
xlabel('tiempo','FontWeight','bold','FontSize',16)
grid on
end

