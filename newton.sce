function y=f(x)
    y=exp(-x)-x
endfunction

function y=df(x)
    y=-exp(-x)-1
endfunction


p0=-1;
p1=p0-(f(p0)/df(p0));
tol=1e-4


while(abs(p1-p0)>=tol)
    p0=p1;
    temp=p0-(f(p0)/df(p0));
    p1=temp;
        printf("Hola");
        printf("%.6f\n",p1)
    end
