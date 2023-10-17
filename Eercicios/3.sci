clear
clc

Eab = 210000;
A = 50; 
delta = 0:0.001:0.014;
p = (delta*A*Eab*250)/(380*200); 

plot(delta,p,'b-');
ylabel('P (N)');
xlabel('Delta L (mm)');
xgrid;
