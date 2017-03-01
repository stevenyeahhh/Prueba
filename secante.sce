function y=f(x)
//    y=exp(-x)-x
    y= sin(2/x);
endfunction



p0=1.1;
p1=0.8;
tol=1E-8;


while(abs(p1-p0)>=tol)
    temp=p1;
    p1=p1-((f(p1)*(p1-p0))/(f(p1)-f(p0)))
    p0=temp;
        printf("%.7f\n",p1)
    end
