Inc = c(62.6,50.9,45.5,
 29.5,24.9,59.6,44.3, 41.1,22.8,
 17.2,64.5,47.5,29.8,19.2,
 7.8,59.3, 49.5,38.3,20.6,10.5,58.6,48.5,40.2,
 29.2,17.8, 64.6,50.4,38.5,24.1,22.1,50.9,35.2,
 30.2,22.6, 22.6,56.2,49.9,27.0,32.7,16.8,52.3,
 42.6,40.0, 24.4,15.9,62.8,41.6,33.9,29.6,8.8)
Pre = rep(c("0.0","0.083","0.29","0.50","0.86"),
 times=10)
CO2=data.frame(Inc,Pre)
str(CO2)
N=dim(CO2)[1]
k=length(levels(CO2$Pre))

nivells = levels(CO2$Pre)
Inc1 =CO2[CO2$Pre==nivells[1],1]
Inc2 =CO2[CO2$Pre==nivells[2],1]
Inc3 =CO2[CO2$Pre==nivells[3],1]
Inc4 =CO2[CO2$Pre==nivells[4],1]
Inc5 =CO2[CO2$Pre==nivells[5],1]

sumes_per_nivells =
    c(sum(Inc1),sum(Inc2),sum(Inc3),
    sum(Inc4),sum(Inc5))
mitjanes_per_nivells =
     c(mean(Inc1), mean(Inc2),mean(Inc3),
     mean(Inc4), mean(Inc5))

sumes_per_nivells2=aggregate(Inc~Pre,data=CO2,sum)
sumes_per_nivells2
mitjanes_per_nivells2=aggregate(Inc~Pre,data=CO2,mean)
mitjanes_per_nivells2
     
     
     
     
suma_total = sum(CO2$Inc)
mitjana_total = mean(CO2$Inc)

SSTotal=sum((CO2$Inc-mitjana_total)^2)
SSTr=sum(table(CO2$Pre)*
     (mitjanes_per_nivells-mitjana_total)^2)
SSE=sum((CO2$Inc-mitjanes_per_nivells)^2)

MSTr=SSTr/(k-1)
MSE=SSE/(N-k)
EstF=MSTr/MSE

pars = matrix(c(1,2,1,3,1,4,1,5,2,3,2,4,
2,5,3,4,3,5,4,5),nrow=10,byrow=TRUE)
est_contrast_par =
 abs(mitjanes_per_nivells[pars[,1]]-
     mitjanes_per_nivells[pars[,2]])/
 (sqrt(MSE*(1/10+1/10)))
pars = cbind(pars,est_contrast_par)

p_valCO2=function(x){2*(1-pt(abs(x),N-k))}
p_vals=sapply(est_contrast_par,p_valCO2)
pars = cbind(pars,p_vals)

#####################################
Expr=scan()
96 93 70 78 99 90 90 87 100 75 84 57 104
 80 76 66 84 90 78 76
Tract=rep(c("A","B","C","D"),5)
EG=data.frame(Expr,Tract)
str(EG)
N2=dim(EG)[1]
k2=length(levels(EG$Tract))

nivells2 = levels(EG$Tract)
Expr1 =EG[EG$Tract==nivells2[1],1]
Expr2 =EG[EG$Tract==nivells2[2],1]
Expr3 =EG[EG$Tract==nivells2[3],1]
Expr4 =EG[EG$Tract==nivells2[4],1]


sumes_per_nivells2 =
    c(sum(Expr1),sum(Expr2),sum(Expr3),
    sum(Expr4))
mitjanes_per_nivells2 =
     c(mean(Expr1), mean(Expr2),mean(Expr3),
     mean(Expr4))
     
suma_total2 = sum(EG$Expr)
mitjana_total2 = mean(EG$Expr)

SSTotal2=sum((EG$Expr-mitjana_total2)^2)
SSTr2=sum(table(EG$Tract)*
     (mitjanes_per_nivells2-mitjana_total2)^2)
SSE2=sum((EG$Expr-mitjanes_per_nivells2)^2)

MSTr2=SSTr2/(k2-1)
MSE2=SSE2/(N2-k2)
EstF2=MSTr2/MSE2

pars2 = matrix(c(1,2,1,3,1,4,2,3,2,4,
3,4),nrow=6,byrow=TRUE)
est_contrast_par2 =
 (mitjanes_per_nivells2[pars2[,1]]-
     mitjanes_per_nivells2[pars2[,2]])/
 (sqrt(MSE2*(1/5+1/5)))
pars2 = cbind(pars2,est_contrast_par2)

p_val2=function(x){2*(1-pt(abs(x),16))}
p_vals2=sapply(est_contrast_par2,p_val2)
pars2 = cbind(pars2,p_vals2)


