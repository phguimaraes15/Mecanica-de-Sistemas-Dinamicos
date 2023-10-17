//Alunos: Pedro Henrique de Souza Costa e Rian Pinas de Freitas
// Exercício 3
clear; clc;

Eab = 210000; //MPa - Elasticidade da barra AB

A = 50; //mm^2 - para todas as seções transversais

Lab = 0:0.001:0.014; //mm - Variação de comprimento AB

P = (Lab*A*Eab*250)/(380*200); // Isolando a Força da Equação de Elasticidade, DeltaL = FL/AE, podemos encontrar o valor de F (que é o nosso P). Sabendo que a aplicação da força vai depender das hastes BC, AB e CE, ao colocarmos seus valores na fórmula, obteremos o valor da força P.

plot(Lab,P)
title('Variação de P')
xlabel('Delta L (mm)')
ylabel('P (N)')
xgrid
