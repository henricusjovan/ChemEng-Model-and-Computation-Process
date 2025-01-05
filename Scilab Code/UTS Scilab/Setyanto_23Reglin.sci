clear
clc

function [a,b,yhit]=reg(x,y)
    [slope,intercept]=reglin(x,y)
    a=slope
    b=intercept
    pers=poly([b,a], 'x', 'coeff')
    yhit=horner(pers,x)
endfunction
