clear;
clc;

sigmaX = 10;
sigmaY = 40;
Txy = 50;

sigmaM = (sigmaX + sigmaY)/2;

sigma1 = sigmaM + sqrt(((sigmaX - sigmaY)/2)^2 + (Txy)^2 );
sigma2 = sigmaM - sqrt(((sigmaX - sigmaY)/2)^2 + (Txy)^2 );

teta = (atand(Txy/((sigmaX - sigmaY)/2)))/2;

printf('Tmax = %.1f MPa\n', sigma1);
printf('Tmin = %.1f MPa\n', sigma2);
printf('Teta = %.1f graus', teta);
