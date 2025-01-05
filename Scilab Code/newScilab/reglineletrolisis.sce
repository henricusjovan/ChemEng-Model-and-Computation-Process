clear
clc

x=[350 600 700 1200 1500]//s
y=[0 0 3 4 5]//gr
v=1
F=96500
BM=197

//mencari nilai a dan b
[a,b]=reglin(x,y)

//menghitung nilai I
I=((a*F*v)/BM)
disp('Nilai Kuat Arus = ' + string(I))

//membuat persamaan
pers=poly([b,a],'x','coeff')
yhit=horner(pers,x)
x=x'
y=y'
yhit=yhit'
disp('Tabel Hubungan Waktu Elektrolisis terhadap Massa Perak')
disp('------------------------------------------------------')
disp('x       y          yhit')
disp([x,y,yhit])
disp('------------------------------------------------------')

//plot grafik 2d
plot2d(x,y,-3)
plot2d(x,yhit,2)
legend('y','yhit')
xtitle('Hubungan Waktu Elektrolisis terhadap Massa Perak','t (detik)','m (gram)')
