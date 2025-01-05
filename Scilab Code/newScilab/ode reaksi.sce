clear
clc

a=1
b=2
c=3
k1=((0.45*(a+b))/60) //menit
k2=((0.16*(a+c))/60) //menit
k3=((0.12*(b+c))/60) //menit
k4=(0.08/60) //menit

getd('D:/Scilab')

C0=[9.9;0;0;0.5]
t0=[0]
t=10 //menit
C=ode(C0,t0,t,konsentrasi)
//plot bentuk tabel
CA=C(1,:)'
CB=C(2,:)'
CC=C(3,:)'
CD=C(4,:)'
t=t'
hasil=[t,CA,CB,CC,CD]

disp(' t      CA           CB          CC          CD')
disp('-----------------------------------------------')
disp(hasil)
