x<- c(3,5,7,8,8,8,10,11,12,12, 13,14,14,15,16,18,19,21,23,25)
mean(x)
table(x)->frecuencias
#no se encuentra una función moda
#pero la moda es el valor o valores de máxima frecuencia
names(which(frecuencias==max(frecuencias)))
#la mediana es
median(x)
#Y conincide con el método de cáculo manual visto en clase
#com el número de datos es par
length(x)
#ordenamos los datos
xsort<- sort(x)
#como es par la media es 
(xsort[length(x)/2]+xsort[length(x)/2+1])/2
