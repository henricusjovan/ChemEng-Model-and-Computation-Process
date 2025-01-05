clear
clc

getd('D:/CODE/Scilab/Kuliah')
h0=[12;7]
t0=[0]
t=0:4:40
//menghitung ODE
hd=ode(h0,t0,t,tangkiair2)
hd1=hd(1,:)'
hd2=hd(2,:)'
t=t'
hasil=[t,hd1,hd2]
disp(hasil)

//plot grafik
clf
plot2d([t t],[hd1 hd2],[-1 -3])
xtitle('Tangki air','t','y')
