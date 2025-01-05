function dc=reaksi(t,C)
    k1=2
    k2=1
    //k dalam satuan waktu jam perlu dibagi 60
    //mewakili pers dCA 
    dc(1)=-(k1/60)*C(1)-(k2/60)*C(1)^2
    //mewakili pers dCD
    dc(2)=(k1/60)*C(1)
    //mewakili pers dCU
    dc(3)=(k2/60)*C(1)^2
endfunction
