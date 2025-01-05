clear
clc

//fungsi
//parameter ditulis secara berurutan
function f=lajualir(C)
    T=T0+(((CA0-C(1))*lamda)/(rho*Cp))
    k=A*exp(-5000/T)
    C(2)=CA0-C(1)
    VR=((Fv*(CA0-C(1)))/(k*C(1)))
    f=(Fv*(alfa+(betaa*C(2))))-(Fv*gama)-(a*VR^0.6)
endfunction
