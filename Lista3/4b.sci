clear;
clc;

Tcd = 1000*1000;      
dc = 80;              //Diâmetro engrenagem
db = 200;             //Diâmetro engrenagem
Tab = (Tcd*db)/dc;    

tmaxab = 60        //Tenção de cisalhamento máximo ab
tmaxcd = 60        //Tenção de cisalhamento máximo cd

dbc = ((Tcd*16)./(%pi*tmaxcd))^(1/3); //Diâmetro da barra em bc 
dab = ((Tab*16)./(%pi*tmaxab))^(1/3); //Isolando J na fórmula T = (tmax/R) * J

disp ('dab = ',dab);
disp ('dcd = ',dbc);
