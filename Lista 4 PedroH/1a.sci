clear;
clc;

X = 150; 
Y = 30; 
Tensaoxy = -80; 

M = (X + Y)/2; 

S1 = M + sqrt(((X - Y)/2)^2 + (Tensaoxy)^2 ); 
S2 = M - sqrt(((X - Y)/2)^2 + (Tensaoxy)^2 ); 

teta = (atand(Tensaoxy/((X - Y)/2)))/2;

printf('Tmax = %.1f MPa\n', S1);
printf('Tmin = %.1f MPa\n', S2);
printf('Teta = %.1f graus', teta);
