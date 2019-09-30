#La instrucción data.frame genera una tabla de datos, la instrucción cbind 
#combina varios arrays como columnas en una tabla de datos (rbind comobina por filas)
data.frame(cbind('Li'=seq(from=-0.5,to=29.5,by=10),
'Li.1'=c(seq(from=9.5,to=29.5,by=10),40.5),'ni'=c(50,150,100,50)))->tablaprob4

#Obtenemos
tablaprob4

#Añadir una columna a una data frame ponemos nombre.data.frame$nombre.variable
#en este caso añadimos a la tabla las frecuencias absolutas aumuladas; acumulando 
#la varible ni
tablaprob4$Ni<- cumsum(tablaprob4$ni)

#calulamos y añadimos al data frame las marcas de clase
tablaprob4$Xi<-(tablaprob4$Li+tablaprob4$Li.1)/2

#calculamos  y añadimos la columna ni*Xi
tablaprob4$ni.Xi<- tablaprob4$ni*tablaprob4$Xi

#Calculamos la media
media<- sum(tablaprob4$ni.Xi)/4
media

#Buscamos el intervalo crítico de la moda
which( tablaprob4$ni==max( tablaprob4$ni))->intervalo.critico.moda
intervalomodal<- c(tablaprob4$Li[inter.critico],tablaprob4$Li.1[inter.critico])
intervalomodal

#Hemos calculado el intervalo modal queda como ejercicio el cáculo de la moda
#con la fórmula de los apuntes.
#Ahora buscamo la mediana; necesitamos  saber cuánto vale 
#el 50% (o la mitad) de las observaciones
mitad.observaciones<- sum(tablaprob4$ni)/2
mitad.observaciones

#Buscamos el intervalo crítico; que es el primero que supera o iguala el 
# valor mitad.observaciones.
which(tablaprob4$Ni>=mitad.observaciones)-> lista.intervalos

#En lista.intervalos tenemos todos los índices que cumplen la condición, 
#queremos el primero que será el intervalo crítico para la mediana.
lista.intervalos[1]->inter.critico.mediana

#Ahora vamos a calcular los valores de  la fórmula de la mediana.
Lc   <-  tablaprob4$Li[inter.critico.mediana]
Lc.1 <-  tablaprob4$Li.1[inter.critico.mediana]
Ac <- Lc.1-Lc
Nc.1<- tablaprob4$Ni[inter.critico.mediana-1]
nc <- tablaprob4$ni[inter.critico.mediana]

#La mediana es ....:
mediana= Lc+Ac* (mitad.observaciones-Nc.1)/nc
mediana

#Efectivamente así la mediana es : 
9.5+10*(175- 50)/150

## por último las intrucciones básica de R consulad el help
median(x)
quantile(x,probs=c(0.8),type=7)

