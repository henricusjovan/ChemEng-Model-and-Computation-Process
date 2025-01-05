clear
clc

a=2
b=3
u=a+b

Tc=308.3 //K
Pc=6140.8 //kPa
T=273+u //K
P=1381.3 //kPa
w=0.184
R=8.314  //cm3.kPa/gmol.K

/*function f=awowi(V)
    Tr=T/Tc
    Pr=P/Pc
    m=(0.48508+(1.577*w)-(0.15613*w^2))
    alfa=(1+m*(1-Tr^0.5))^2
    A=(0.42748*Pr*alfa)/(Tr^0.5)
    B=(0.08664*Pr)/(Tr)
    f=P-((R*T)/(V-B))+(A)/((T^0.5)*V*(V+B))
endfunction*/

getd ('D:\CODE\Scilab\UTS Scilab')

V0=10 //Tebakan Awal
V=fsolve(V0,nsrk)
disp('Volume Spesifik', V)
//Mencari nilai faktor kompresibilitas (Z) yang tidak bersatuan
Z=(P*V)/(R*T)
disp('Nilai Faktor Kompresibilitas (Z)',Z)
