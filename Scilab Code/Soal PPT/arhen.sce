clear
clc

x=[1/313 1/318 1/323 1/328 1/333 1/338]
y=[log(4.65*10^-4) log(6.12*10^-4) log(5.55*10^-4) log(8.65*10^-3) log(1.2*10^-2) log(3.65*10^-2)]

[a,b]=reglin(x,y)
disp(a,b)

aktiv=-a*1.987
tumb=exp(b)

disp('nilai aktivasi= ', aktiv, 'nilai tumb= ', tumb)

pers=poly([b a],'x','coeff')
yhit=horner(pers,x)

x=x'
y=y'
yhit=yhit'
disp(" 1/t       ln k        1/t hitung")
disp("-----------------------------------")
disp([x y yhit])

plot2d(x,y,-3)
plot2d(x,yhit,2)
