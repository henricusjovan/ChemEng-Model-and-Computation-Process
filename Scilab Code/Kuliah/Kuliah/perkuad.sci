function [x]=perkuad(a,b,c)
    D=b^2-4*a*c
    if D>0 then
        x(1,1)=(-b+sqrt(D))/(2*a)
        x(1,2)=(-b-sqrt(D))/(2*a)
    elseif D==0 then
        x=(-b)/(2*a)
    else
        x="imajiner"
    end
endfunction
