clear
clc

function dC=konsentrasi(t,C)
    dC(1)=-k1*C(1)
    dC(2)=k1*C(1)-k2*C(2)-k3*C(2)+k4*C(3)
    dC(3)=k2*C(2)-k4*C(3)
    dC(4)=k3*C(2)
endfunction
