clear
clc

getd('D:/CODE/Scilab/Kuliah')
C0=[2;0;0]
t0=[0]
t=0:2:20
Cd=ode(C0,t0,t,reaksi)
CA=Cd(1,:)'
CD=Cd(2,:)'
CU=Cd(3,:)'
t=t'
hasil=[t,CA,CD,CU]
disp(hasil)

//plot grafik
plot2d([t t t], [CA CD CU], [-1 -2 -3])
xtitle('Reaksi simultan', 't', 'C')
