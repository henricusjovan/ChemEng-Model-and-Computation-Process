#Import Library
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt 
from scipy import stats

#Diketahui
T=[200, 240, 285, 310, 340, 360, 400] #K
k=[3.01, 3.2, 3.5, 4.2, 4.4, 4.9, 5.3]
R=8.314 #J/mol.K

#Membuat Matriks Data Frame
df = pd.DataFrame(
    {
        "T": pd.Series([200, 240, 285, 310, 340, 360, 400]),
        "k": pd.Series([3.01, 3.2, 3.5, 4.2, 4.4, 4.9, 5.3]),
    }
)

#Menghitung nilai x dan y linearisasi persamaan
x=1/df["T"]
y=np.log(df["k"])

a,b,r,p,std_err = stats.linregress(x,y)
def apalah(x):
    return a * x + b
yhit = list(map(apalah,x))

#Menghitung nilai Ea (Energi Aktivasi) dan A (Faktor Tumbukan)
Ea=-a*R
tumb=np.exp(b)

print("Nilai Ea = " + str(Ea) + " J/mol")
print("Nilai A = " + str(tumb) + " L/mol.s")

#Menampilkan tabel
linebreak = "----------------------------------------"
print(linebreak)
print("          Tabel hasil perhitungan         ")
print(linebreak)
df_new = pd.DataFrame(
    {
        "1/T": x,
        "ln k" : y,
        "ln k hitung" : yhit
    }
)
print([df_new])
print(linebreak)

#Membuat grafik
plt.scatter(x,y,label="1/T")
plt.plot(x,yhit,label="yhit", color='orange')
#Menambahkan title grafik
plt.title("Hubungan antara 1/T vs ln k")
#Menambahkan title untuk sumbu x
plt.xlabel("1/T")
#Menambahkan title untuk sumbu y
plt.ylabel("ln k")
#Menambahkan legend
plt.legend(loc='upper right')
#Menampilkan grafik
plt.show()
