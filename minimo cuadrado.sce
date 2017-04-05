clc;
x=[-1,2,-1,5,6];
y=[3,1,4,2,3];
px=1;
////////////////////


xy=0;
tx=0;
ty=0;
x2=0;
n=length(x);

for(i=1:n)
    xy =xy+(x(i)*y(i));
    tx=tx+(x(i));
    ty=ty+(y(i));
    x2=x2+(x(i)^2);    
//    printf("%.5f",x(i));
    end

a=((n*xy)-(tx*ty))/((n*x2)-(tx*tx));
b=((ty*x2)-(tx*xy))/((n*x2)-(tx*tx));
printf("%.5f\n",a);
printf("%.5f\n",b);
f=(a*px)+b

printf("%.5f\n",f);

/*    printf("%.5f\n",xy);
        printf("%.5f\n",tx);
            printf("%.5f\n",ty);
                printf("%.5f\n",x2);
                                printf("%.5f\n",n);
*/
