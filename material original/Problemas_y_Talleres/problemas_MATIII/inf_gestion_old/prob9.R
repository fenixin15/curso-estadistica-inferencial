x<- c(4 , 4 , 2 , 10 , 1 , 9 , 5 , 3 , 4 , 5 , 6 , 6 , 7 , 6 , 8 , 7 , 6 , 8 , 7 , 6 , 5 , 4
, 4 , 4 , 5 , 6 , 6 , 7 , 5 , 6 , 6 , 7 , 5 , 6 , 6 , 7 , 5 , 6 , 4 , 3 , 2 , 6 , 6 , 7
, 7 , 8 , 8 , 9 , 8 , 7)
x
table(x)
mean(x)
sd(x)
sort(x)
length(x)
length(x)*20/100
sort(x)[length[x]-length(x)*20/100]
sort(x)[40]
## como vemos sale un numero que no se para el 20%.
## si consideramos los datoa agrupados en [0.5,1.5), [1.5,2.5)....
## El percentil 80 será.
table(x)-> frec
length(x)*80/100
which(cumsum(frec)>=length(x)*80/100)
## y el perentil 80 será (lo ponemos directamente)
6.5+1* (40-33)/9
##Gráficos
hist(x)
barplot(table(x),main="Resultados prueba")
## más gráficos
hist(x)-> histograma
histograma[]
## Cómo se ve histograma es un objeto que se puede dibujar
plot(histograma,main="Es un plot del objeto histograma")
class(histograma)
#cambiemos  $conunts por cumsum(histograma$counts)
histograma$counts<- cumsum(histograma$counts)
#La aproximació a los poligónos de frecuencias  se hace con
hist(x,prob=TRUE)
lines(density(x))