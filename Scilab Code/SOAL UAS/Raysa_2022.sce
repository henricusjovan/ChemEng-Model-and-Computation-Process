//Soal UAS 2022 (Rasya)
//Prof Sas

clear
clc

/*Keterangan
1=C2H4
2=O2
3=C2H4O
4=CO2
5=H2O
*/

//BM masing komponen
BM1=28.05
BM2=31.99
BM3=44.05
BM4=44.02
BM5=18.015

//Konversi
X1=0.8
X2=0.6

//Asumsi
Min1=1
Min2=10
Min3=0
Min4=0
Min5=0

//Neraca Massa
MRX1=-0.4*Min1
MRX2=Min2-(2.2*Min1)
MRX3=0.8*Min1
MRX4=1.2*Min1
MRX5=1.2*Min1

//Neraca Massa
MassIn=Min1*BM1+Min2*BM2
MassOut=MRX1*BM1+MRX2*BM2+MRX3*BM3+MRX4*BM4+MRX5*BM5
persen_error=abs(((MassIn-MassOut)/MassIn)*100)

//Menampilkan hasil
mprintf(' \n Massa Input %g ',MassIn)
mprintf(' \n Massa Output %g ',MassOut)
mprintf(' \n Persen Error %g \n',persen_error)

if persen_error <=5 then
    mprintf(' \n Neraca Massa Terbukti \n')
else
    mprintf(' \n Neraca Massa Tidak Terbukti \n')
end
