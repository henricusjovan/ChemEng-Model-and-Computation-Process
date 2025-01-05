//Menghitung laju alir reaktan keluar reaktor dalam kmol/m3
//x,y,z 3 angka terakhir NIM
x = 1 
y = 2
z = 2

a = 2500
CA0 = 5 //kmol/m3
T0 = 450 //K
rho = 885 //kg/m3
Cp = 2.5 //kkal/kg.K
gama = 0.03
lamda = 7300
Fv = 300 //m3/jam
A = 1e8 //m3/kmol.jam

//rumus
alfa = (x*y)/z
betaa = (x+y)/z

//memanggil fungsi
getd('D:/---UNDIP---/KOMPROS 2024/Soal UTS')
C0=2
C=fsolve(C0,lajualir)
disp(C)
