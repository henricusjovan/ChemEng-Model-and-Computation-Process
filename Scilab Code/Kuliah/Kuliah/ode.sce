clear
clc

getd('D:/CODE/Scilab/Kuliah')
y0=[19.5]
t0=[0]
t=0:2:40
//menghitung ODE
yd=ode(y0,t0,t,tangkiair)
yd1=yd(1,:)'
t=t'
hasil=[t,yd1]
disp(hasil)

//plot grafik
clf
plot2d([t],[yd1],[1])
xtitle('Tangki air','t','y')
