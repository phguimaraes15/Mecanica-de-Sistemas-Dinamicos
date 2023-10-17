clear;
clc;

To = 20:1:50;        //Torque inicial em Nm
G = 80 * 10^9;       //N/m2
Lab = 0.6;           //Comprimento ab em m
Lcd = 0.9;           //Comprimento cd em m

dab = 0.018;         //Diâmetro da barra em ab em metros 
dcd = 0.024;         //Diâmetro da barra em cd em metros
db = 0.04;           //Diâmetro engrenagem b
dc = 0.112;          //Diâmetro engrenagem c

Jab = (%pi*dab^4)./32; //Momento de inércia polar para eixo com 
Jcd = (%pi*dcd^4)./32; //Momento de inércia polar para eixo com 

tetaab = (To * Lab)./(Jab*G);            //Angulo de torção ab
tetacd = (To * dc* Lcd)./(Jcd*G*db);     //Angulo de torção cd

plot (To,tetaab,'k.');
plot (To,tetacd,'k*');
legend('Ângulo AB','Ângulo CD');
title('Torque vs Ângulo de torção');
xlabel('Torque (N.m)');
ylabel('Ângulo(rad)');
