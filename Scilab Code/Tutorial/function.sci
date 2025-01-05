//FUNCTION

//Luas Lingkaran
//rumus=1/4*pi*r^2
deff('L=luas(d)','L=0.25*%pi*d^2')
l=luas(8)
disp(l)

mprintf('------------------------------------')

//contoh panggil fungsi
function v=p(a,x)
    get('D:\CODE\Scilab\tes.sci');
    v=a*f(x);
endfunction
disp(p(2,10))
