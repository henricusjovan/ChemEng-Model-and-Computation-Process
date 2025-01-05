clear
clc

getd('D:/CODE/Scilab/Soal PPT')
y0=19.5 //ft
t0=0 //menit
t=0:2:40 //menit
y=ode(y0,t0,t,laju)
yt=y'
tt=t'
no=1:21
nno=no'
tabel=[nno,tt,yt]
mprintf("   No  t(time) h(height)\n")
mprintf("  -------------------------")
disp(tabel)
//jika ingin menampilkan pada satu waktu tertentu
yd=y(1,10)'
td=t(1,10)'
nod=no(1,10)'
hasil=[nod,td,yd]
disp(hasil)
