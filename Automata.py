
#Proyecto aula, primera parte
# Entradas
#cadena = input("Descripcion el lenguaje a procesar en automata: ")
#alfabeto = input("Introduzca e alfabeto del automata: ")
#estados = input("Ingrese los estados del automata: ")
#estadoInicial = input("Ingrese estado inicial del automata: ")
#estadosFinales = input("los estados finales del automata: ")
#n = int(input("Ingrese cantidad de transiciones del automata: "))
#transiciones = [n]
cadena="par"
alfabeto="01"
estados="par,impar"
estadoInicial="par"
estadosFinales="par"
n=4
transiciones = []
transiciones.append("par,0,impar")
transiciones.append("par,1,impar")
transiciones.append("impar,0,par")
transiciones.append("impar,1,par")

#for i in range(0,n):
#  transiciones.append(input("Ingrese la transicion para la posicion "+str(i)+" : "))
c=5
cadenasProcesadas = []


#c = int(input("Ingrese cantidad de cadenas para ser procesada: "))
#cadenasProcesadas = [c]

def siguienteEstadoProceso(estadoInicial, simbolo):
  transicion = estadoInicial+","+simbolo+","
  for i in range (0,len(transiciones)):
    siguientePosicion = str(transiciones[i]).split(transicion)
    if (len(siguientePosicion) == 2):
      return siguientePosicion[1]

cadenasProcesadas.append("")
cadenasProcesadas.append("0")
cadenasProcesadas.append("1")
cadenasProcesadas.append("01")
cadenasProcesadas.append("10")
#for i in range (0,c):
#  cadenasProcesadas.append(input("Ingrese la cadena a ser procesada "+str(i)+" : "))
# Salidas
#print ("El siguiente lenguaje procesa la siguiente regla: "+cadena)
print ("Lenguaje: "+cadena+" Cadenas a procesar: "+str(c))
print("-----------")
print("transiciones")

print(transiciones)
print("cadenasProcesadas")
print(cadenasProcesadas)
print("-----------")
for i in range (0,c):
  
  
  cadenaDividida = len(str(cadenasProcesadas[i]))
  estadoIni = estadoInicial
  print ("Cadena procesada número "+str(i)+": "+str(cadenasProcesadas[i]))
  for j in range (0,cadenaDividida):
    #print ("------"+str(cadenasProcesadas[i])[j])
    siguienteEstado = siguienteEstadoProceso(estadoIni, str(cadenasProcesadas[i])[j])
    print ("("+str(estadoIni)+" , "+str(cadenasProcesadas[i])[j]+") => ("+str(siguienteEstado)+")" )
    estadoIni = siguienteEstado
    if (j+1 == cadenaDividida):
      if (siguienteEstado in estadosFinales  ):
        print ("sí pertenece al lenguaje.")
      else:
          print ("No pertenece al lenguaje.")
    print("")
