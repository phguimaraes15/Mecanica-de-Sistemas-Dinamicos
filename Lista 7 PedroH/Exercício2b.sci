clear;
clc;

P = 10;

A = 500;
L = 3*A;

RA = (P*2*A + P*A)/L;
RB = 2*P - RA;

dx = 0:0.01:A;
M = RA *dx;

dx = A:0.01:L;
M = (RA*dx) - (P*(dx-A));

M_max = (RA*A)/1000;

subplot(2,1,1);
plot([0,0,A,A,2*A,2*A,L,L],[0,RA,RA,RA-P,RA-P,-RB,-RB,0], "g-",[0,L],[0,0],"b-","LineWidth",2);
xlabel("Comprimento(mm)");
ylabel("Esforço cortante (KN)");
xgrid;

subplot(2,1,2);
plot([0,A,2*A,L],[0,M_max, M_max,0], "g-",[0,L],[0,0],"b-","LineWidth",3);
xlabel("Comprimento(mm)");
ylabel("Momento Fletor(N*mm)");
xgrid;
