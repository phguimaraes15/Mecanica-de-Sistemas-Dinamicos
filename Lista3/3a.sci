clear;
clc;

Tab = 15;      //Torque em ab em N*m
Tbc = 45;      //Torque em bc em N*m
Tcd = 135;      //Torque em cd em N*m
Tde = 15;      //Torque em de em N*m

dab = 0.010;     //Diâmetro da barra em ab em metros
dbc = 0.015;     //Diâmetro da barra em bc em metros
dcd = 0.020;     //Diâmetro da barra em cd em metros
dde = 0.025;     //Diâmetro da barra em de em metros

Rab = dab/2;     //Raio da barra em ab em metros
Rbc = dbc/2;     //Raio da barra em bc em metros
Rcd = dcd/2;     //Raio da barra em cd em metros
Rde = dde/2;     //Raio da barra em de em metros

Jab = (%pi*dab^4)./32; //Momento de inércia polar para eixo com secção
Jbc = (%pi*dbc^4)./32; //Momento de inércia polar para eixo com secção
Jcd = (%pi*dcd^4)./32; //Momento de inércia polar para eixo com secção
Jde = (%pi*dde^4)./32; //Momento de inércia polar para eixo com secção

tmaxab = ((Tab*Rab)./Jab);  //Tenção de cisalhamento máximo ab
tmaxbc = ((Tbc*Rbc)./Jbc);  //Tenção de cisalhamento máximo bc
tmaxcd = ((Tcd*Rcd)./Jcd);  //Tenção de cisalhamento máximo cd
tmaxde = ((Tde*Rde)./Jde);  //Tenção de cisalhamento máximo de

//disp ('Tab = ',tmaxab/1000000);
//disp ('Tbc = ',tmaxbc/1000000);
disp ('Tcd = ',tmaxcd/1000000); 
