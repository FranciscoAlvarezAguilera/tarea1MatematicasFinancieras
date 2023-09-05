VFfuncion2=function(umbral,nIter){
  
  # Francisco Alvarez Aguilera - Matemáticas Financieras LACD
  
  # Creamos los objetos con los datos de entrada del problema:
  
  VA=1 #Valor actual de un peso
  i=1 # Tasa de interés anualizada de 100% (i=1)
  #paro=100000 #Número de iteraciones (cálculos) que deseamos realizar.
  VF0=1 # El valor inicial del Valor Futuro en la iteración
  #umbral=0.000000000001 # Asigno valor de umbral
  DeltaVF = Inf  #asigno un valor inicial de incremento del VF en cada iteración
  n=0 # Valor inicial de n en las iteraciones
  
  # Operador while
  
  while(DeltaVF>umbral){
    
    n=n+1 # Actualizo el valor de n (contador) con cada iteración 
    
    #Calculo el Valor Futuro 
    VF=VA*(1+(1/n))^n  
    
    # Actualizamos el incremento del valor futuro de esta iteración con la de la iterción anterior  (VF0):
    DeltaVF=VF-VF0
    
    # Actualizo el valor futuro de esta iteración como el valor futuro de 
    #la "iteración anterior" para futureas iteraciones
    VF0=VF
    
    if(n==nIter){
      break
    }
  }
  # Creamos el objeto tipo lista de salida 
  respuesta=list(
    VF=VF,
    DeltaVF=DeltaVF,
    N=n
  )
  
  if(n==nIter){# Se imprime el mensaje de salida:
    print("SE ALCANZÓ EL NÚMERO MÁXIMO DE ITERACIONES ESTABLECIDAS")
    print(
      paste0(" Después de ",n," iteraciones establecidas en nIter se llegó a un VF de ",VF)
    )
  }else{
    print("SE ALCANZÓ EL UMBRAL DE PRUEBA ")
    print(
      paste0(" Después de ",n," iteraciones, ",
             " se llegó a un VF de ",VF,", dado el UMBRAL de",umbral," que llevó a un valor de DeltaVF de ",DeltaVF)
    )
  }
  # Se regrsa el objeto de salida al enviorement para que se encuentre disponible ahí:
  return(respuesta)
}