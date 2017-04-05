clc
clear
 
//se piden los valores de entrada.

k=input('Ingrese el numero de pares:   ');

//se crean los vectores llenos de ceros.

x=zeros(k,1);
y=zeros(k,1);

//se piden desde el teclado para Y=f(x)(dependiente)

   for i=1:1:k
    disp('i='+string(i-1))
    x(i)=input('valor de x?   ');
    y(i)=input('valor de y?   ');
    clc
   end
 
//se muestra la tabla de valores
  disp('datos:   ')
  disp(['i' 'x' 'y'])
  disp([(0:k-1)' x y])
  disp('  ')
  
//calculo de las diferencias divididas

  l=k-1;
  T=zeros(k,k);
  T(:,1)=y;
  
  for j=1:l
    for i=1:k-j
      T(i,j+1)=(T(i+1,j)-T(i,j))/(x(i+j)-x(i));
    end
  end

  T2=[(0:k-1)',x,T];
  
  for i=1:k
    disp(T2(i,1:k-i+3))
  end
  
//interpolacion

disp('   ')

  continuar=1;
  
//inicio del ciclo de calculo
  while continuar==1;
    
  clear yZ
  
  Z=input('ingrese el valor a interpolar:   ');
  n=input('ingrese el orden del polinomio interpolante:    ');
  
//primer filtro

  if (Z>x(k))|(Z<x(1))
    disp('el valor de Z esta fuera del rango [x(1),x(k)]')
    disp('  ')
    disp('  ')
  else

//los valores de Z y n son correctos, se procede a calcular

  a=zeros(n+1,1);
  a(1)=y(1);
  
  for i=2:n+1
    a(i)=T(1,i);
  end

  yZ=a(1);
  
  for j=2:n+1
    COEF=1;
    for i=1:j-1
      COEF=COEF*(Z-x(i));
    end
    yZ=yZ+a(j)*COEF;
  end
  
//se muestran los resultados
  disp('y(Z)='+string(yZ))
  disp('  ')
  disp('  ')
  end
  end

//se pregunta si se desea continuar

  continuar=input('desea continuar? (si=1, no=0)');
  clc
//end
