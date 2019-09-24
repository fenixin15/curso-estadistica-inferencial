help(data.frame)
data.frame(cbind(Li=c( data.frame(cbind(Li=c(
help(repeat)
help.search("repeat")
help.search(":")
help(":")
seq(from=-0.5,to=40.5,step=10)
seq(from=-0.5,to=40.5,by=10)
seq(from=-0.5,to=29.5,by=10)
c(seq(from=9.5,to=29.5,by=10),40.5)
data.frame(cbind(Li=seq(from=-0.5,to=29.5,by=10),Li+1=c(seq(from=9.5,to=29.5,by=10),40.5),ni=c(50,150,100,50))
data.frame(cbind(Li=seq(from=-0.5,to=29.5,by=10),
Li+1=c(seq(from=9.5,to=29.5,by=10),40.5),ni=c(50,150,100,50)))
data.frame(cbind('Li'=seq(from=-0.5,to=29.5,by=10),
'Li+1'=c(seq(from=9.5,to=29.5,by=10),40.5),'ni'=c(50,150,100,50)))
'Li+1'=c(seq(from=9.5,to=29.5,by=10),40.5),'ni'=c(50,150,100,50)))->tablaprob4
data.frame(cbind('Li'=seq(from=-0.5,to=29.5,by=10),
'Li+1'=c(seq(from=9.5,to=29.5,by=10),40.5),'ni'=c(50,150,100,50)))->tablaprob4
tablaprob4$Ni<- cumsum(tablaprob4$ni)
tablaprob4
tablaprob4$Xi<-(tablaprob4$Li+tablaprob4$Li+1)/2
tablaprob4
data.frame(cbind('Li'=seq(from=-0.5,to=29.5,by=10),
'Li.1'=c(seq(from=9.5,to=29.5,by=10),40.5),'ni'=c(50,150,100,50)))->tablaprob4
tablaprob4$Ni<- cumsum(tablaprob4$ni)
tablaprob4$Xi<-(tablaprob4$Li+tablaprob4$Li.1)/2
tablaprob4
tablaprob4$ni.Xi<- tablaprob4$ni*tablaprob4$Xi
tablaprob4
media<- sum(tablaprob4$ni.Xi)/4
media
whitch( tablaprob4$ni==max( tablaprob4$ni))
whithc( tablaprob4$ni==max( tablaprob4$ni))
whihc( tablaprob4$ni==max( tablaprob4$ni))
help.search(which)
help.search("which")
which( tablaprob4$ni==max( tablaprob4$ni))
intervalomodal<- c(tablaprob4$Li,tablaprob4$Li.1)
intervalomodal
intervalomodal<- c(tablaprob4$Li[inter.critico],tablaprob4$Li.1[inter.critico])
which( tablaprob4$ni==max( tablaprob4$ni))->inter.critico
intervalomodal<- c(tablaprob4$Li[inter.critico],tablaprob4$Li.1[inter.critico])
intervalomodal
ls()
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
ls()
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
prob13<- data.frame(cbind("Precio"=c(225,250,300,200),"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214))
)
prob13<- data.frame(cbind("Precio"=c(225,250,300,200),"Porvalorde"=c(38250,47500,49500,42000),"Unidades"=c(174,186,192,214)))
prob13
sum(prob13$Porvalorde)/sum(prob13$Porvalorde/prob13$Precio)
c(1,1,1,1)/c(2,2,2,2)
mean(prob13$precio)
mean(prob13$Precio)
sum(prob13$Precio*prob13$Unidades)/sum(prob13$Unidades)
