clear;
clc;

P1 = 20;
P2 = 30;

a = 1;
b = 1.5;
c = 2.5;
L = a+b+c;

RA = ((P1*(b+c)) + P2*c)/L;
RB = P1 - P2 - RA;

dx = 0:0.01:a;
M = RA *dx;

dx = a:0.01:L;
M = (RA*dx) - (P1*(dx-a));

M_max1 = (RA*a);
M_max2 = (RA*(b));

subplot(2,1,1);
plot([0,0,a,a,a+b,a+b,L,L],[0,RA,RA,RA-P1,RA-P1,RA-P1-P2,RA-P1-P2,0], "g-",[0,L],[0,0],"b-","LineWidth",3);
xlabel("Comprimento(m)");
ylabel("Esforço cortante (KN)");
xgrid;

subplot(2,1,2);
plot([0,a,a+b,L],[0,M_max1, M_max2,0], "g-",[0,L],[0,0],"b-","LineWidth",3);
xlabel("Comprimento(m)");
ylabel("Momento Fletor(KN*m)");
xgrid;
