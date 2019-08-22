curve(dt(x,6),-5,5,ylim=c(0,0.4),lwd=2, xlab="",ylab="",xaxs="i",yaxs="i",xaxt="n",yaxt="n",)
segments(-1.7,0,-1.7,dt(-1.7,6),lwd=2)
segments(1.7,0,1.7,dt(1.7,6),lwd=2)
abline(v=0,lty=2)

text(-1,0.05,labels=expression(t[paste(nu,",",q)]))
text(1,0.05,labels=expression(t[paste(nu,",",1-q)]))

text(-2.2,0.02,labels="q")
text(2.2,0.02,labels="q")

text(-3,0.3,labels="0")


