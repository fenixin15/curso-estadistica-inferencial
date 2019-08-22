densidad <- function(x,n) dt(x,n)
curve(dnorm(x),-4,4,ylim=c(0,0.4),col="black",ylab="densitat",xlab="x")
curve(densidad(x,2),type="l",col="blue",add=T)
curve(densidad(x,3),type="l",col="green",add=T)
curve(densidad(x,4),type="l",col="yellow",add=T)
curve(densidad(x,5),type="l",col="brown",add=T)
curve(densidad(x,10),type="l",col="red",add=T)

legend(-3.9,0.4,c("Normal estàndard","Student g.l.=2", "Student g.l=3", "Student g.l=4", "Student g.l=5", "Student g.l=10"), 
col = c("black","blue","green","yellow","brown","red"),
       text.col = "black",bg = 'gray90',pch=c(21,21,21,21,21,21),cex=0.5)
