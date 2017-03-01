function y=f(x)
    y= exp(-x)-x
endfunction




a=-1;
b=1;
c=0;
d=0;
tol=1E-4;
i=0;
while(abs(a-b)>=tol)
    i=i+1;
    c=(a+b)/2;
    d=abs(a-b);
    fa=f(a);
    fb=f(b);
    fc=f(c);
    
    if(fa*fc<0)then
        a = a;
        
    else
        a = c;
        end
    if(fb*fc<0)then
        b = b;
        
    else
        b = c;
        end
    printf("%d) %.6f\n",i,c)
end

