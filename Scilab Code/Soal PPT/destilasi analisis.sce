clear
clc
getd('D:\KULIAH - UNDIP\Kompros\destilasi')
T0=300
T=fsolve(T0,destilasi)
disp(T)
T_dew=T-273
disp(T_dew)
// apabila hasil tidak berubah, maka itu merupakan jawabannya. Bisa dengan trial nilai V0`
// jika tebakan mencapai D+10, coba iterasi tebakan ke angka lebih kecil seperti 0.01, 0.001 dst.
