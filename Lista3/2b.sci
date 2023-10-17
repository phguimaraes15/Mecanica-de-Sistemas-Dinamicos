clear; 
clc;

Tbc = 400;       //Torque em bc em N*m

tmaxbc = 77.6;  //Tenção de cisalhamento máximo da barra, descoberta na letra a

dbc = ((Tbc*16)./(%pi*tmaxbc))^(1/3);  //Diâmetro da barra em bc 
                                       //Isolando J na fórmula T = (tmax/R) * J
                                       // e depois isolando d em 
                                       //J = (pi/32)*(d^4) e, assim então, 
                                       //substituindo uma fórula na outra, 
                                       //lembrando que R = d/2, encontramos
                                       //d = raiz cúbica((T*16)/(pi*tmax)).

disp (dbc*10);
