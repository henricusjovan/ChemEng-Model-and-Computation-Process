//Soal UAS 2022 (Vania)
//Prof Sas 

clear
clc

/*Keterangan
1=C2H6
2=02
3=C3H8
4=CO2
5=H20
*/

//BM komponen
BM1=30.07 //gr/mol Ethane
BM2=31.99 //gr/mol Oksigen
BM3=44.1 //gr/mol Propana
BM4=44.02 //gr/mol CO2
BM5=18.015 //gr/mol Water

//Konversi
X1=0.45 //Reaksi 1
X2=0.75 //Reaksi 2

//Asumsi Molar Input
Min1=1 //mol/s Ethane
Min2=1 //mol/s Oksigen
Min3=1 //mol/s Propana
Min4=0 //mol/s CO2
Min5=0 //mol/s Water

//Molar Output
MRX1=(1-X1)*Min1
MRX2=Min2-(3.5*X1*Min1)-(5*X2*Min3)
MRX3=(1-X2)*Min3
MRX4=Min4+(2*X1*Min1)+(3*X2*Min3)
MRX5=Min5+(3*X1*Min1)+(4*X2*Min3)

//Neraca Massa
Massainput=(Min1*BM1)+(Min2+BM2)+(Min3*BM3)
Massaoutput=(MRX1*BM1)+(MRX2*BM2)+(MRX3*BM3)+(MRX4*BM4)+(MRX5*BM5)
Error=abs(((Massainput-Massaoutput)/Massainput)*100)

//Menampilkan hasil perhitungan
mprintf(' \n Massa Input = %g',Massainput)
mprintf(' \n Massa Output = %g',Massaoutput)
mprintf(' \n Persen Error = %g',Error)

if Error <=5 then
   mprintf(' \n Neraca Massa Terbukti \n')
else
    mprintf(' \n Neraca Massa Tidak Terbukti \n')
end
