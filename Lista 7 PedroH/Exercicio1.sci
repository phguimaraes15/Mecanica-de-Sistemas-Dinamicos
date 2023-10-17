clear;
clc;

P = 2*1000;
E = 70*1000;

h1 = 10;
h2 = 50;

a1 = 100 * h1;
a2 = 10 * h2;

y1 = h1 / 2;
y2 = h1 + h2 / 2;

y_ = ((a1 * y1) + (a2*y2)) / (a1+a2);

d1 = abs(y_ - y1);
d2 = abs(y_ - y2);

i1 = ((100*(h1^3)) / 12) + (a1*(d1^2));
i2 = ((10*(h2^3)) / 12) + (a2*(d2^2));

i = i1 + i2;

teta = (P*(380^2)) / (2*E*i);

disp("(a) Inclinação:", teta, "rad");

DeslVert = -(P*(380^3)) / (3*E*i);

disp("(b) Deslocamento vertical:", DeslVert, "mm");
