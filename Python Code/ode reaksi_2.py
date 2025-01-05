import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt

k = 2.0

def rxn(C,t):
    Ca = C[0]
    Cb = C[1]
    dCA = -k * Ca
    dCB = k * Ca
    return [dCA,dCB]

t = np.linspace(0,5,100)
C0 = [1,0]
C = odeint(rxn,C0,t)

plt.plot(t,C[:,0],label='CA')
plt.plot(t,C[:,1],label='CB')
plt.xlabel('Time (t)')
plt.ylabel('Concentration')
plt.legend(loc='upper right')
plt.show()