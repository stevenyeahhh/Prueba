function y=g(x)
    y=(10*x+1)/(5*x^2+7*x+10)
endfunction

p0=-1.2;

tol=1e-8;
p1=g(p0);

while(abs(p0-p1)>=tol)
    p0=p1;
    p1=g(p1);
    
    printf("%.6f\n",p1)
end
