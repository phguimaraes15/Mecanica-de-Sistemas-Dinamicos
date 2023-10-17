clear;
clc;

Tbc = 400;       //Torque em bc em N*m
Tcd = 1200;      //Torque em cd em N*m
Tde = 2400;      //Torque em de em N*m
dbc = 0.046;     //Diâmetro da barra em bc em metros
dcd = 0.050;     //Diâmetro da barra em cd em metros
dde = 0.054;     //Diâmetro da barra em de em metros
Rbc = dbc/2;     //Raio da barra em bc em metros
Rcd = dcd/2;     //Raio da barra em cd em metros
Rde = dde/2;     //Raio da barra em de em metros

Jbc = (%pi*dbc^4)./32; //Momento de inércia polar para eixo com secção
                       //circular maciça em bc
Jcd = (%pi*dcd^4)./32; //Momento de inércia polar para eixo com secção
                       //circular maciça em cd
Jde = (%pi*dde^4)./32; //Momento de inércia polar para eixo com secção
                       //circular maciça em de

tmaxbc = ((Tbc*Rbc)./Jbc);  //Tenção de cisalhamento máximo bc
tmaxcd = ((Tcd*Rcd)./Jcd);  //Tenção de cisalhamento máximo cd
tmaxde = ((Tde*Rde)./Jde);  //Tenção de cisalhamento máximo de

disp ('Tbc = ',tmaxbc/1000000);
disp ('Tcd = ',tmaxcd/1000000);
disp ('Tde = ',tmaxde/1000000);
