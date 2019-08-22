n=100,p=0.2; alpha=0.05

Població=rbinom(10^6,n,p)


ICZ=function(x){c(mean(x)-qnorm(1-alpha/2)*sigma/sqrt(length(x)), 
                                  mean(x)+qnorm(1-alpha/2)*sigma/sqrt(length(x)))
}
ICT=function(x){c(mean(x)-qt(1-alpha/2,length(x)-1)*sd(x)/sqrt(length(x)), 
                                  mean(x)+qt(1-alpha/2,length(x)-1)*sd(x)/sqrt(length(x)))
}
ICZZ=function(x){c(mean(x)-qnorm(1-alpha/2)*sd(x)/sqrt(length(x)), 
                                  mean(x)+qnorm(1-alpha/2)*sd(x)/sqrt(length(x)))
}


Mostres=c()
for(i in 1:100){Mostres=rbind(Mostres,Població[sample(1:10^6,15,replace=T)])}

plot(1:10,type="n",xlim=c(1,2),ylim=c(0,100),
xlab="Valors",ylab="Replicacions")



for(i in 1:100){
ci <- ICZZ(Mostres[i,]); color="grey";
if((mu<ci[1]) | (mu > ci[2])){color = "red"}
segments(ci[1],i,ci[2],i,col=color,lwd=3)
}
abline(v=mu,lwd=3)

