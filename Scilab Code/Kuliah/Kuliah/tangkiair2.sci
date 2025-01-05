function hdot=tangkiair2(t,h)
    beta1=2.5
    beta2=2/sqrt(6)
    a1=5
    a2=10
    f=5
    hdot(1)=(f/a1)-((beta1/a1*sqrt(h(1)-h(2))))
    hdot(2)=((beta2/a2)*sqrt(h(1)-h(2)))-((beta2/a2)*sqrt(h(1)))
endfunction
