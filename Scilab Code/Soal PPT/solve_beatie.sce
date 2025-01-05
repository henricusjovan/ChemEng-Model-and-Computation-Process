clear
clc

//variabel
A0=136.2315
B0=0.05046
a=0.02617
b=0.0346
c=40000
R=0.08205
T=25+273
P=800

//get function
getd ('D:/CODE/Scilab/Soal PPT')
//guess
v0=0.003
//solve
v=fsolve(v0,beatie)

disp('Nilai v adalah ' + string(v))
