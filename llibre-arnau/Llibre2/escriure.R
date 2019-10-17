
write("<<echo=F>>=",file="Fl2.Rnw",append=T)
write("decimal1 <- function(n,m,area){aux <-",file="Fl2.Rnw",append=T)
write("strsplit(as.character(round(qf(area,n,m)+pi/10000000,7)),\"\")[[1]];n <-",file="Fl2.Rnw",append=T)
write("length(aux); aux2 <- aux[grep(\"\\\\.\",aux)+1]; return(c(as.integer(aux2)))}",file="Fl2.Rnw",append=T)
write("decimal2 <- function(n,m,area){aux <-",file="Fl2.Rnw",append=T)
write("strsplit(as.character(round(qf(area,n,m)+pi/10000000,7)),\"\")[[1]];n <-",file="Fl2.Rnw",append=T)
write("length(aux); aux2 <- aux[grep(\"\\\\.\",aux)+3]; aux3 <-",file="Fl2.Rnw",append=T)
write("aux[grep(\"\\\\.\",aux)+2]; ifelse(aux2>=5 & aux3",file="Fl2.Rnw",append=T)
write("<9,return(as.integer(aux3)+1),return(as.integer(aux3)))}",file="Fl2.Rnw",append=T)
write("@",file="Fl2.Rnw",append=T)







alfas <- c(0.995,0.99,0.975,0.95,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1,0.05,0.025,0.01)
#alfas <- c(0.995,0.99)


for (k in 1:length(alfas)){

write(paste("\\subsection{$F_{n_1,n_2,",alfas[k],"}$}",sep=""),file="Fl2.Rnw",append=T)


write("\\tabcolsep=3pt",file="Fl2.Rnw",append=T)
write("$$\\begin{tabular}{|>{\\scriptsize}c|>{\\scriptsize}r@{.}",file="Fl2.Rnw",
append=T)
write(">{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l|",file="Fl2.Rnw",append=
T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|}",file="Fl2.Rnw",append=T)
write("\\hline $n_1\\backslash n_2$&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{1}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{2}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{3}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{4}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{5}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{6}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{7}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{8}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{9}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{10}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{11}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{12}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{13}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{14}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{15}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{16}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{17}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{18}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{19}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{20}\\\\",file="Fl2.Rnw",append=T)
write("\\hline",file="Fl2.Rnw",append=T)

for (i in 1:40){
write(i,file="Fl2.Rnw",append=T)
	for (j in 1:20){
write(paste("&\\Sexpr{floor(qf(",alfas[k],",",i,",",j,"))}&\\Sexpr{decimal1(",i,",",j,",",alfas[k],")}\\Sexpr{decimal2(",i,",",j,",",alfas[k],")}",sep=""),file="Fl2.Rnw", append=T) 
	}
write("\\\\",file="Fl2.Rnw",append=T)
}
write("\\hline\\end{tabular}$$",file="Fl2.Rnw",append=T)




write("\\newpage",file="Fl2.Rnw",append=T)

write("\\tabcolsep=3pt",file="Fl2.Rnw",append=T)
write("$$\\begin{tabular}{|>{\\scriptsize}c|>{\\scriptsize}r@{.}",file="Fl2.Rnw",
append=T)
write(">{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l|",file="Fl2.Rnw",append=
T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|>{\\scriptsize}r@{.}>{\\scriptsize}l
|",file="Fl2.Rnw",append=T)
write(">{\\scriptsize}r@{.}>{\\scriptsize}l|}",file="Fl2.Rnw",append=T)
write("\\hline $n_1\\backslash n_2$&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{21}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{22}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{23}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{24}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{25}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{26}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{27}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{28}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{29}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{30}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{31}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{32}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{33}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{34}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{35}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{36}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{37}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{38}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{39}&",file="Fl2.Rnw",append=T)
write("\\multicolumn{2}{>{\\scriptsize}c|}{40}\\\\",file="Fl2.Rnw",append=T)
write("\\hline",file="Fl2.Rnw",append=T)

for (i in 1:40){
write(i,file="Fl2.Rnw",append=T)
	for (j in 21:40){
write(paste("&\\Sexpr{floor(qf(",alfas[k],",",i,",",j,"))}&\\Sexpr{decimal1(",i,",",j,",",alfas[k],")}\\Sexpr{decimal2(",i,",",j,",",alfas[k],")}",sep=""),file="Fl2.Rnw", append=T) 
	}
write("\\\\",file="Fl2.Rnw",append=T)
}
write("\\hline\\end{tabular}$$",file="Fl2.Rnw",append=T)

}