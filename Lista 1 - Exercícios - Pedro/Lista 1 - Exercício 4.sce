//Alunos: Pedro Henrique de Souza Costa e Rian Pinas de Freitas
// Exercício 4
clear; clc;

Tab = 58; //MPa - Tensão normal na haste AB
Tbd = 75; //MPa - Tensão normal na haste BD

E = 200000:2000:250000; // MPa - Módulo de Elasticidade.

Lbd = sqrt(200^2 + 60^2); //mm - Comprimento da haste BD (Triangulo quadrado)
Lab = sqrt(80^2 + 60^2); //mm - Comprimento da haste AB (Triangulo quadrado)

DeltaLab = (Tab*Lab)./(E); //mm - O deltaL, tanto para a haste AB quanto para
DeltaLbd = (Tbd*Lbd)./(E); //mm - a haste BD é calculado pela fórmula
                           // DeltaL = FL/EA. Como temos a Tensão normal das
                           //Hastes e sabemos que a tensão normal é
                           // Força / Área podemos substituir a tensão normal
                           // na fórmula do DeltaL e teremos que
                           // DeltaL = Tn*L/E. Assim, calculamos o deltaL
                           // para cada uma das hastes e plotamos o gráfico.

plot(E,DeltaLab,E,DeltaLbd)
title('Tensão última por diâmetros')
xlabel('E (MPa)')
ylabel('DeltaL (mm)')
legend('Haste AB', 'Haste BD')
xgrid
