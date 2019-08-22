prob=c()
for (i in 1:500){
prob=c(prob,prod((12000:(12000-i+1))/rep(12000,i)))		
}
plot(prob,pch=20,main="Probabilitat que si triam n estudiants de la UIB\n siguin tots diferents",xlab="n",ylab="prob")