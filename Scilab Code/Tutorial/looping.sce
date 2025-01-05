//LOOPING
//For loop pada perulangan suku ke-n
u(1)=4;
for n = 1:6;
    u(n+1)=u(n)+2*n+3
    disp([n,u(n)])
end

//While loop
//menentukan pada tahun berapa harus memotong pohon tinggi 10 m
h = 1.2 //m
y = 2015 //year
while h < 10
    //bertambah tinggi 0.3 m
    h = h + 0.3;
    y = y + 1;
    disp([h,y])
end
disp("Pohon akan dipotong pada tahun " + string(y))
