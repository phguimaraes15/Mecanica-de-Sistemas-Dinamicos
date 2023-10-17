clear
clc

fatorSeguranca = 1.2;
sigma = 30:50; //MPa
sigmaF = sigma/fatorSeguranca; //MPa
Fab = 60000; //N
Fbc = 190000; //N
Aab = Fab ./ sigmaF; //mm²
Abc = Fbc ./ sigmaF; //mm²

d1 = sqrt(4*Aab/%pi); //mm
d2 = sqrt(4*Abc/%pi); //mm

plot(sigma,d2,'b-',sigma,d1,'g-');
legend('diametro 1','diametro 2');
title('tensao ultima x diametros');
xlabel('tensao ultima (MPa)');
ylabel('diametro (mm)');
xgrid;
