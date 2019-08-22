# Gràfic 1.1

CO2 = matrix(c(62.6,50.9,45.5,29.5,24.9,59.6,44.3,41.1,22.8,17.2,64.5,47.5,29.8,19.2,7.8,59.3,49.5,38.3,20.6,10.5,58.6,48.5,40.2,29.2,17.8,64.6,50.4,38.5,24.1,22.1,50.9,35.2,30.2,22.6,22.6,56.2,49.9,27.0,32.7,16.8,52.3,42.6,40.0,24.4,15.9,62.8,41.6,33.9,29.6,8.8),10,5,byrow=T)
coor_x =matrix(c(rep(1,10),rep(2,10),rep(3,10),rep(4,10),rep(5,10)),10,5)


plot(c(coor_x[,1],coor_x[,2],coor_x[,3],coor_x[,4],coor_x[,5]),c(CO2[,1],CO2[,2],CO2[,3],CO2[,4],CO2[,5]),type="p",pch=18,cex=2,xlab="Nivell de CO2",ylab="% de massa cel·lular")



#Gràfic 1.3.a)

plot(1:50,c(CO2[,1],CO2[,2],CO2[,3],CO2[,4],CO2[,5]),type="p",pch=17,xlab="Nombre de microorganisme",ylab="% de massa cel·lular",cex=0)
points(1:10,CO2[,1],pch=18,cex=1.5)
points(11:20,CO2[,2],pch=15,cex=1.5)
points(21:30,CO2[,3],pch=17,cex=1.5)
points(31:40,CO2[,4],pch=19,cex=1.5)
points(41:50,CO2[,5],pch=16,cex=1.5)
lines(c(0,50),c(mean(CO2),mean(CO2)),lwd=3)
text(5,34,"Mitjana del %")
for (i in 1:10){lines(c(i,i),c(mean(CO2),CO2[i,1]),lty=2)}
for (i in 11:20){lines(c(i,i),c(mean(CO2),CO2[i-10,2]),lty=2)}
for (i in 21:30){lines(c(i,i),c(mean(CO2),CO2[i-20,3]),lty=2)}
for (i in 31:40){lines(c(i,i),c(mean(CO2),CO2[i-30,4]),lty=2)}
for (i in 41:50){lines(c(i,i),c(mean(CO2),CO2[i-40,5]),lty=2)}


#Gràfic 1.3.b


plot(1:50,c(CO2[,1],CO2[,2],CO2[,3],CO2[,4],CO2[,5]),type="p",pch=17,xlab="Nombre de microorganisme",ylab="% de massa cel·lular",cex=0)
points(1:10,CO2[,1],pch=18,cex=1.5)
points(11:20,CO2[,2],pch=15,cex=1.5)
points(21:30,CO2[,3],pch=17,cex=1.5)
points(31:40,CO2[,4],pch=19,cex=1.5)
points(41:50,CO2[,5],pch=16,cex=1.5)

lines(c(0,50),c(mean(CO2),mean(CO2)),lwd=3,col="red")
text(5,mean(CO2[,3]-2),"Mitjana global",col="red")

for (i in 1:5){lines(c(0+10*(i-1),10*i),c(mean(CO2[,i]),mean(CO2[,i])),lwd=3)}
text(20,mean(CO2[,1]),"Mitjana del nivell 0.0")
text(30,mean(CO2[,2]),"Mitjana del nivell 0.083")
text(40,mean(CO2[,3]-1),"Mitjana del nivell 0.29")
text(20,mean(CO2[,4]),"Mitjana del nivell 0.50")
text(30,mean(CO2[,5]),"Mitjana del nivell 0.86")


