



densidad=function(x) dunif(x,0,1)

x=seq(-0.2,1.2,0.0001)

plot(x,unlist(lapply(x,densidad)),pch=".",bg="blue")
plot(x,unlist(lapply(x,densidad)),pch=".",bg="blue")


curve(densidad,-0.2,1.2,col="blue",ylab="densidad",xlab="x",ylim=c(0,1.2))

