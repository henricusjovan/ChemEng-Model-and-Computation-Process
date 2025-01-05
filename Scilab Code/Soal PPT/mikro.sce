clear
clc

//data x[S] dan y[v]
x = [1/2.8 1/4.88 1/8.04 1/16.1 1/19.25]
y = [1/21.23 1/32.09 1/36.75 1/45.90 1/64.73]

//reglin mencari a(slope) dan b(intercept) y=ax+b
[a,b] = reglin(x,y)

disp("Nilai a adalah = " + string(a), "Nilai b adalah = " + string(b))

//mencari vmaks dan km
vmaks = 1/b
km = a*vmaks

disp("Nilai Vmaks = " + string(vmaks), "Nilai Km = " + string(km))

//plot grafik dan tabel
pers = poly([b a],'x','coeff')
yhit = horner(pers,x)
x = x'
y = y'
yhit = yhit'

mprintf("     1/S         1/v        yhit \n")
mprintf('   ---------------------------------')
disp([x y yhit])
//plot2d(x(sumbu x),y(sumbu y),(kode warna plot))
plot2d(x,y,-4)
plot2d(x,yhit,3)
//xtitle((judul),(ket sumbu x),(ket sumbu y))
xtitle("Hubungan konsentrasi dan kecepatan","1/S","1/v")

