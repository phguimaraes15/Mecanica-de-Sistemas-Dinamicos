clear;
clc;

tmax = 45:0.1:55;  //Tenção de cisalhamento máximo 
dext = 75;         //Diâmetro externo da barra vazada em milimetros
dint = 55;         //Diâmetro interno da barra vazada em milimetros
Rext = dext/2;        //Raio externo da barra em milimetros

J = (%pi*(dext^4 - dint^4))./32;    //Momento de inércia polar para eixo com 
                                    //secção circular vazada

T = ((tmax*J)./Rext);  //Torque

plot(tmax,T/1000000,'b-');
title('Torque X Tenção de cisalhamento');
xlabel('Tenção de cisalhamento (MPa)');
ylabel('Torque (N*mm)');
xgrid;
