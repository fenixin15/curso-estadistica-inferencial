
library("distrTeach")
help(illustrateCLT)
    distroptions("DefaultNrFFTGridPointsExponent" = 13)
    illustrateCLT(Distr = Unif(), len = 20)
    distroptions("DefaultNrFFTGridPointsExponent" = 12)
    illustrateCLT(Distr = Pois(lambda = 2), len = 20)
    distroptions("DefaultNrFFTGridPointsExponent" = 13)
    illustrateCLT(Distr = Pois(lambda = 2)+Unif(), len = 20)
    illustrateCLT.tcl(Distr = Unif(), k = 4, "Unif()")
 distroptions("DefaultNrFFTGridPointsExponent" = 13)
    illustrateCLT(Distr = Unif(), len = 20)
> 



x <- seq(from=0,to=20,by=0.1)
curve(dchisq(x,1),type="l",xlab="",ylab="",col="red",xlim=c(0,20),ylim=c(0,0.35))
curve(dchisq(x,2),type="l",xlab="",ylab="",col="blue",add=T)
curve(dchisq(x,3),type="l",xlab="",ylab="",col="green",add=T)
curve(dchisq(x,4),type="l",xlab="",ylab="",col="yellow",add=T)
curve(dchisq(x,5),type="l",xlab="",ylab="",col="brown",add=T)
curve(dchisq(x,10),type="l",xlab="",ylab="",col="blue",add=T)
legend(0.2, 3, c("n=1", "n=2", "n=3", "n=4", "n=5", "n=10"), col = c("red","blue","green","yellow","brown","blue"),
       text.col = "black",pch=1,bg = 'gray90')








