function f=srk(v)
    a=A0*((R^2*Tc^2)/Pc)
    b=B0*((R*Tc)/Pc)
    Tr=T/Tc
    alfa=(1+(0.48505+1.5517*w-0.15613*w^2)*(1-Tr^0.5))^2
    f=P-((R*T)/(v-b))+((a*alfa))/(v*(v+b))
endfunction
