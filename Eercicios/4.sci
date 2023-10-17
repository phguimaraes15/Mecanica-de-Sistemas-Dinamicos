clear;
clc;

Tab = 58;
Tbd = 75;

E = 200000:2000:250000;

Lbd = sqrt(200^2 + 60^2);
Lab = sqrt(80^2 + 60^2);

DeltaLab = (Tab*Lab) ./ (E);
DeltaLbd = (Tbd*Lbd) ./ (E);

plot(E,DeltaLab,'g-',E,DeltaLbd,'r-');
title('Tensão última por diâmetros');
xlabel('E (MPa)');
ylabel('DeltaL (mm)');
legend('Haste AB', 'Haste BD');
xgrid;
