import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt

#function persamaan reaksi
def f(y,t):
    dydt = y * np.exp(-t)
    return dydt

#menghitung ode
t = np.linspace(0,6)
y0 = 1.0
yhit = odeint(f,y0,t)
print(yhit)

#plot grafik
plt.plot(t,yhit)
plt.xlabel('Time (sec)')
plt.ylabel('y(t)')
plt.show()