clc;
x=[-1,0,2,3,7];
y=[2,-1,2,2,-1];

a=y;
t=-1;
n=length(x);
for i=1:n-1
    h(i)=x(i+1)-x(i);
end
alfa(1)=0;
for i=2:n-1
    alfa(i)=(3/h(i))*(a(i+1)-a(i))-(3/h(i-1))*(a(i)-a(i-1));
end

l(1)=1;
mu(1)=0;
z(1)=0;

for i=2:n-1
    l(i)=2*(x(i+1)-x(i-1))-h(i-1)*mu(i-1);
    mu(i)=h(i)/l(i);
    z(i)=(alfa(i)-h(i-1)*z(i-1))/l(i);
end
l(n)=1;
z(n)=0;
c=zeros(n,1);
b=zeros(n,1);
d=zeros(n,1);
for j=n-1:-1:1
    c(j)=z(j)-mu(j)*c(j+1);
    b(j)=(a(j+1)-a(j))/h(j)-h(j)*(c(j+1)+2*c(j))/3;
    d(j)=(c(j+1)-c(j))/(3*h(j));
end

for i=1:n-1
    if (x(i)>0) then 
    printf("s%d(x)=%.5f+%.5f(x-%.5f)+%.5f(x-%.5f)^2+%.5f(x-%.5f)^3\n",i-1,a(i),b(i),x(i),c(i),x(i),d(i),x(i));
    elseif (x(i)<0) then
        printf("s%d(x)=%.5f+%.5f(x+%.5f)+%.5f(x+%.5f)^2+%.5f(x+%.5f)^3\n",i-1,a(i),b(i),abs(x(i)),c(i),abs(x(i)),d(i),abs(x(i)));
    else
        printf("s%d(x)=%.5f+%.5f x+%.5f x^2+%.5f x^3\n",i-1,a(i),b(i),c(i),d(i));
    end
    
end
ind=2;
for i=2:n
    if x(i) >= t then
        ind=i;
        break;
    end
end

printf("El valor %.5f esta entre [%.5f;%.5f]\n",t,x(ind-1),x(ind));

printf("El valor del interpolador es: %.5f",a(ind-1)+b(ind-1)*(t-x(ind-1))+c(ind-1)*(t-x(ind-1))^2+d(ind-1)*(t-x(ind-1))^3);    
