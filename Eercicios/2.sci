clear
clc


FatorSeguranca=2.5;
TensaoU= 1:0.5:20 ; 
SigmaF= TensaoU/FatorSeguranca; 

Fcf=(20000*250) / 400;
Acf= Fcf ./ (SigmaF*2);


plot(TensaoU,Acf);
xlabel('Tensão Última (MPa)');
ylabel('Sessão transversal (mm²)');
xgrid;
