clear
clc

//data
x=[1/2.8 1/4.88 1/8.04 1/16.1 1/19.25]
y=[1/21.23 1/32.09 1/36.75 1/45.90 1/64.73]

//mencari slope dan intercept
[a,b]=reglin(x,y)
disp(a,b)

//menghitung vmaks dan Km
vmaks=1/b
Km=a*vmaks
disp('Km = ', Km, 'vmaks = ', vmaks)

//membuat persamaan 
pers=poly([b a],'x','coeff')
yhit=horner(pers,x)
x=x'
y=y'
yhit=yhit'
disp(" 1/[s]       1/v        1/v hitung")
disp("-----------------------------------")
disp([x y yhit])

//plot grafik 2d dan tabel
plot2d(x,y, -3)
plot2d(x,yhit,2)
xtitle('Hubungan konsentrasi substrat', '1/[s]', '1/v')
