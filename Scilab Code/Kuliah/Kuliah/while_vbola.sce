clear
clc

r=0
while r<4.5
    r=r+0.5
    vol=(4/3)*%pi*r^3
    disp([r,vol])
end
