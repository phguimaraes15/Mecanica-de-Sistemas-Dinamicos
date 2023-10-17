//Alunos: Pedro Henrique de Souza Costa e Rian Pinas de Freitas
// Exercício 1
clear; clc;

Tu = 30:50; //MPa Tensão última

FS = 1.2; //Fator de Segurança

F1 = (125 + 125 - 60)*1000 //Força total sentido positivo de x. Und: N
F2 = 60000; //Força total sentido negativo de x. Und: N

Tadm = Tu / FS; // Tensão Admissível = Tensão última / Fator de segurança.

//A = (pi*d^2/4)
A1 = F1./Tadm;
A2 = F2./Tadm;

d1 = sqrt((4*A1)/%pi); //mm - Diâmetro 1
d2 = sqrt((4*A2)/%pi); //mm - Diâmetro 2

// Plotagem do gráfico:
plot(Tu,d1,Tu,d2)
title('Tensão última por diâmetros')
xlabel('Tensão última (MPa)')
ylabel('Diâmetro (mm)')
legend('Diâmetro 1', 'Diâmetro 2')
xgrid
