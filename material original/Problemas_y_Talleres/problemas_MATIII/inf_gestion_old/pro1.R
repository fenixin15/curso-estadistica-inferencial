#leyendo el help(barplot) necesitamos la lista de años y una matriz con las
#alturas de las barras
#así ponemos la lista de años
anyos<- c(1991:1997)
#introducimos los datos en dos vectores
franquicias9195<- c(4, 8, 16, 26 , 82)
franquicias9197<- c(4, 8, 16, 33, 140, 280,586)
#juntamos los datos en un vector añadiendo dos NA de los años que faltan
fraquicias2series<- c(c(franquicias9195,NA,NA),c(franquicias9197))
#Redimensionamos el vetor para que sea una matriz
dim(fraquicias2series)<-c(7,2)
#Nota mirar que el efecto dim(fraquicias2series)<-c(2,7) no sería el deseado
fraquicias2series
#Así nos queda la matriz pero queremos "darle" la vuelta la función t()
#calcula la traspuesta de la matriz
fraquicias2series<- t(fraquicias2series)
fraquicias2series
#Leyendo un help(barplot) podemos hacer esta primera aproximación
barplot(fraquicias2series,col=c("grey","red"),beside=TRUE,names.arg=anyos,space=c(0,0.5),cex.names=0.8,
main="Número de franquicias periodo 1991-1995.",
sub="Estimación periodo 1991-1997",
font.main=4,legend.text=c("Observadas","Estimadas"))

#como la leyenda no queda muy bien podemos elimarla del barplot
#y añadirla luego con la instrucción de dibujo de alto nivel legend

barplot(fraquicias2series,col=c("grey","red"),beside=TRUE,names.arg=anyos,space=c(0,0.5),cex.names=0.8,
main="Número de franquicias periodo 1991-1995.",
sub="Estimación periodo 1991-1997",
font.main=4)
legend(0,500,legend=c("Observada","Estimada"),fill=c("grey","red"))