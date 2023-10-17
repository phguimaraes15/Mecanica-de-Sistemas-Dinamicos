clear;
clc;

T = 4.5:0.1:5.5;  //Torque
d = 0.075;     //Diâmetro da barra em metros
R = d/2;       //Raio da barra em metros

J = (%pi*d^4)./32; //Momento de inércia polar para eixo com secção circular

tmax = ((T*R)./J);  //Tenção de cisalhamento máximo

plot(T,tmax/1000,'b-');
title('Tenção de cisalhamento X Torque');
xlabel('Torque (KN*m)');
ylabel('Tenção de cisalhamento (MPa)');
xgrid;
