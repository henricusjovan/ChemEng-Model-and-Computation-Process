function f=beatie(v)
    A=A0*(1-(a/v))
    B=B0*(1-(b/v))
    E=(c/v)*T^3
    f=P-((R*T*(1-E))/v^2)*(v+B)-(A/v^2)
endfunction
