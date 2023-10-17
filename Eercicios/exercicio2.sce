//Exercício 2
clear;
clc;

Ex = input('Entre com o valor de Ex: '); //Deformação normal em relação ao eixo x (microns)
Ey = input('Entre com o valor de Ey: '); //Deformação normal em relação ao eixo y (microns)
gamaXY = input('Entre com o valor de gamaXY: '); //Deformação de cisalhamento (microns)

c = (Ex + Ey)/2; //Centro do círculo de Mohr

r = sqrt((((Ex - Ey)/2)^2) + ((gamaXY/2)^2)); //Raio do círculo de Mohr

E1 = c + r; //Deformação normal máxima (microns)
E2 = c - r; //Deformação normal mínima (microns)

teta = (atand((gamaXY) / (Ex - Ey)))/2; //Ângulo teta (graus)

//Criação dos vetores do círculo
x1 = E2:abs(E2 - E1)/100:E1;
yp = sqrt(abs((r^2) - ((x1 - c).^2)));
yn = -yp;

plot(x1, yp, "r")
plot(x1, yn, "r")
plot([Ex, Ey], [-gamaXY / 2, gamaXY / 2])
plot([E2, E1], [0, 0], [0, 0], [-r, r])
title("Círculo de Mohr")
xlabel("Deformação específica (microns)")
ylabel("Deformação de Cisalhamento (microns)")
xgrid

xstring(c, 0, "C")
xstring(Ex, (gamaXY / 2), "Ex, -gamaXY/2")
xstring(Ey, (gamaXY / 2), "Ey, gamaXY/2")
xstring(E1, 0, "E1")
xstring(E2, 0, "E2")


