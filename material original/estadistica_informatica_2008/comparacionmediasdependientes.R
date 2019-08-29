round(rnorm(30,10,2),1)->antes
ks.test(antes,"pnorm",10,2)
round(rnorm(30,10,4),1)->despues
ks.test(antes,"pnorm",10,2)
dif<- antes-despues
Z<- mean(dif)/sqrt(sd(dif)/30)
pnorm(Z,0,1)*2