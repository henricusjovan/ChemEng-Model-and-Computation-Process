clear
clc

function f=Setyanto_23AP(V)
    Tr=T/Tc
    Pr=P/Pc
    m=(0.48508+(1.577*w)-(0.15613*w^2))
    alfa=1+m*(1-Tr^0.5)/sqrt(0.5)
    A=(0.42748*Pr*alfa)/(Tr^0.5)
    B=(0.08664*Pr)/(Tr)
    f=P-(R*T/(V-B))+(A)/(T^0.5*V*(V+B))
endfunction
