
#Pon tu path al directorio de los ficheros  *.Rnw
#setwd("/home/arnau/docencia/Bioestadistica09-10/Apunts/ApuntsEnviatsRicardoJuliol2010/mates2TODO")
#este directorio debe contener el fichero filesRnw.dat que contiene una lista delos nombre de los fichero que Sweave tiene que
#procesar. Cada linea un fichero y el nombre completo con la extensión

#Las dos  instrucciónes siguientes cargan el fichero filesRnw.dat en la variable nombre
read.table("filesRnw.dat",header=F) -> files
files <- as.list(as.character(files[,1]))

#La siguiente instrucción procesa son Sweave todos los fichero *.Rnw que estan es la lista files
lapply(files,Sweave)
#for(file in nombre){Sweave(file)}
