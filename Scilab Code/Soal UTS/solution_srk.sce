clear
clc

//variabel
P=15 //bar
T=180+273 //Kelvin
A0=0.42748
B0=0.08664
w=0.098
Tc=305.4 //Kelvin
Pc=48.8 //bar
R=0.08314
//get function
getd ('D:/CODE/Scilab/Soal UTS')
//guess
v0=1
//solve
v=fsolve(v0,srk)

disp('Nilai v = ' + string(v))

//mencari nilai z
Z=(P*v)/(R*T)

disp('Nilai z = ' + string(Z))
