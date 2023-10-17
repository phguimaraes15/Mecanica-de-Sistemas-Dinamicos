//Alunos: Pedro Henrique de Souza Costa e Rian Pinas de Freitas
// Exercício 2
clear; clc;

Tu = 1:0.5:20; //MPa da Tensão última

FS = 2.5; //Fator de Segurança

Tadm = Tu / FS; //MPa - Tensão admissível

// Momentos em B = 0
Fcf = (20000*250)/(400*2); //MPa - Força entre os pontos C e F, como existem duas hastes, a força acaba sendo aliviada por cada haste.

A = Fcf./Tadm; //mm^2 Area da barra

plot(Tu,A)
title('Variação da seção transversal nas hastes CF')
xlabel('Tensão última (MPa)')
ylabel('Seção Transversal (mm^2)')
xgrid
