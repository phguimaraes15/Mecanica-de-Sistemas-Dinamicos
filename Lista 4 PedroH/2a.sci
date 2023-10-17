clear;
clc;
ex = 50;
ey = 300;
gama = 1530;
raio = sqrt((((ex-ey)/2)^2) + ((gama/2)^2));
c = (ex+ey)/2;
e1 = c+raio;
e2 = c-raio;
teta = (atand((gama)/(ex-ey)))/2;
x1 = e2:abs(e2-e1)/100:e1;
yp = sqrt(abs((raio^2)-((x1-c).^2)));
yn = -yp;
plot(x1,yp,"r");
plot(x1,yn,"r");
plot([ex,ey],[-gama/2,gama/2]);
plot([e2,e1],[0,0],[0,0],[-raio,raio]);
title("Circulo de Mohr");
ylabel("Deformacao cisalhamento");
xlabel("deformacao especifica");
xstring(c,0,"C");
xstring(ex,(-gama/2),"(epsilon_x),-gama/2)");
xstring(ey,(gama/2),"(epsilon_y),gama/2)");
xstring(e2,0,"e2");
xstring(e1,0,"e1");
xgrid;
