clear;
clc;

F = 10;

A = 30;
L = 100;

R2 = (F*A) / L;
R1 = F - R2;

dx = 0:0.01:A;
M = R1 * dx;

dx = A:0.01:L;
M = (R1*dx) - (F*(dx-A));

M_max = R1*A;

subplot(2,1,1);
plot([0,0,A,A,L,L],[0,R1,R1,-R2,-R2,0], "g-", [0,L],[0,0],"b-","LineWidth",3);
xlabel("Comprimento(m)");
ylabel("Esforço cortante (KN)");
xgrid;

subplot(2,1,2);
plot([0,A,L],[0,M_max,0], "g-",[0,L],[0,0],"b-","LineWidth",3);
xlabel("Comprimento(m)");
ylabel("Momento Fletor(KN*m)");
xgrid;
