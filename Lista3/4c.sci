clear;
clc;

tmaxab = 50 //Tenção de cisalhamento máximo ab em MPa
tmaxcd = 50 //Tenção de cisalhamento máximo cd em MPa

dab = 56;     //Diâmetro da barra em ab em milimetros
dcd = 42;     //Diâmetro da barra em cd em milimetros
dint = 30;    //Diâmetro interno 
dc = 80;      //Diâmetro engrenagem c
db = 200;     //Diâmetro engrenagem b

Rab = dab/2;     //Raio da barra em ab em milimetros
Rcd = dcd/2;     //Raio da barra em cd em milimetros

Jab = (%pi*(dab^4 - dint^4))./32; //Momento de inércia polar para eixo com 
Jcd = (%pi*(dcd^4 - dint^4))./32; //Momento de inércia polar para eixo com 

Tab = (tmaxab*Jab*db)/(dc*Rab);     //Torque em ab em N*mm
Tcd = (tmaxcd*Jcd)/Rcd;             //Torque em cd em N*mm

disp (Tcd/1000);       //Torque em cd em N*m
