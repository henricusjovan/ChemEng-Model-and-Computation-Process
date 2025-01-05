clear
clc

x=[1,3,5,7,10,12,13,16,18,20]
y=[4,2,6,5,8,7,10,9,12,11]
[a,b]=reglin(x,y)
disp('slope= ', a, 'intercept= ', b)
