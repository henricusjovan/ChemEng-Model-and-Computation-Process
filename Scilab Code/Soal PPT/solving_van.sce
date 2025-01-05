clear
clc

//memanggil function
getd ('D:/CODE/Scilab/Soal PPT')
//data
P=70
T=215
R=0.08314
a=1.463
b=0.0394
//guess
V0=1
//solving
V=fsolve(V0,van)

disp('Nilai V adalah ', V)
