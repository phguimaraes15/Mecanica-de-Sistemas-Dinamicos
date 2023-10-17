clear;
clc;

T = 1000*1000

dab = 56;     //Diâmetro da barra em ab em milimetros
dcd = 42;     //Diâmetro da barra em cd em milimetros
dc = 80;      //Diâmetro engrenagem
db = 200;     //Diâmetro engrenagem

Tab = (T*db)/dc     //Torque em cd em N*mm

Rab = dab/2;     //Raio da barra em ab em milimetros
Rcd = dcd/2;     //Raio da barra em cd em milimetros

Jab = (%pi*dab^4)./32; //Momento de inércia polar para eixo com 
                       //secção circular vazada em ab
Jcd = (%pi*dcd^4)./32; //Momento de inércia polar para eixo com 
                       //secção circular vazada em cd
                                  

tmaxab = ((Tab*Rab)./Jab);  //Tenção de cisalhamento máximo ab
tmaxcd = ((T*Rcd)./Jcd);  //Tenção de cisalhamento máximo cd

disp ('Tab = ',tmaxab);
disp ('Tcd = ',tmaxcd);
