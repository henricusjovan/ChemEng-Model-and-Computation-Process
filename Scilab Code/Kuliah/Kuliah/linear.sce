clear
clc

getd('D:/CODE/Scilab/Kuliah')
//karena ada 2 tebakan yaitu x dan y maka dibuat matriks
X0=[1;1]
x=fsolve(X0,coba)
disp(x)
