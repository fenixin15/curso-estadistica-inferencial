

pdado =function(x,n=6)  sapply(x,FUN=function(x) if( x %in% c(1:n))  {return(1/n)} else {return(0)})

pdado(1.5,n=6)
pdado(1:10,n=6)


curve(pdado,xlim=c(1,6))
pdado2 =function(x,y,n=6) {pdado(x,n)*pdado(y,n)}


psumadados=function(x,n=6) {
  Dxy=data.frame(d1=rep(1:n,each=n),d2=rep(1:n,times=n))
  Dxy$suma=Dxy$d1+Dxy$d2
  aux=Dxy[Dxy$suma==x,]
  sum(apply(aux[,1:2],FUN=function(x) {pdado2(x[1],x[2],n=n)},1 ))
  } 

psumadados(7,10)

pproddados=function(x,n=6) {
    Dxy=data.frame(d1=rep(1:n,each=n),d2=rep(1:n,times=n))
    Dxy$producto=Dxy$d1*Dxy$d2
    aux=Dxy[Dxy$producto==x,]
    sum(apply(aux[,1:2],FUN=function(x) {pdado2(x[1],x[2],n=n)},1 ))
} 

pproddados(13)


