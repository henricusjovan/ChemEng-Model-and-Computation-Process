clear
clc

a=2
b=3
u=a+b

x=[1/(8+(u)),1/(6.6+(u)),1/(5.7+(u)),1/(4.4+(u)),1/(3.1+(u)),1/(1.1+(u))]
y=[3,4,5,6,7,8]
x1=x
y1=x

//mencari nilai a dan b
[a,b]=reglin(x,y)


//menghitung nilai alfa dan omega
alfa=a
omega=b
disp('Nilai alfa adalah ' + string(alfa))
disp('Nilai omega adalah ' + string(omega))
pers=poly([b,a], 'x', 'coeff')
yhit=horner(pers,x)
x=x'
y=y'
yhit=yhit'

//membuat tabel
disp('1/[S]------ [V]-----[V]hitung')
disp('-----------------------------')
disp([x,y,yhit])

//plot grafik 2d
clf
plot2d(x,y,-3)
plot2d(x,yhit,2)
xtitle('Hubungan konsentrasi substrat dan v', '1/[S]', 'v')
