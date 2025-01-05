clear
clc
Tc=308.3 //K
Pc=6140.8 //kPa
T=274 //K
P=1381.3 //kPa
w=0.184
R=8.314  //cm3.kPa/gmol.K

function f=volspes(V)
T = 274
P= 1381.3
R= 8.314
Tc = 308.3 // K
Pc = 6140.8 // kPa
Tr=T/Tc
Pr=P/Pc
w = 0.184
m = 0.48508 + 1.577*w - 0.15613*(w^2)
alph = (1+m*(1-Tr^0.5))^2
A = (0.42748*Pr*alph)/((Tr)^0.5)
B = (0.08664*Pr)/Tr
f = P -(((R*T)/(V-B)) + A/(T^0.5*V*(V+B)))
endfunction

V0 = 1
V=fsolve(V0,volspes)
disp('Volume Spesifik', V)
P=1381.3
R=8.314
T = 274
Z=(P*V)/(R*T)
disp('faktor kompresibilitas',Z)
