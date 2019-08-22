#' Confidence Interval II
#'
#' Ths function computes a confidence interval for the mean of a normal random variable with unknown standard deviation.
#' The result is a data frame with variables 
#' mean (the sample mean), 
#' size (the sample size), 
#' lower and upper (the lower and upper confidence interval limits)
#' conf.level the confidence level
#' @param x a vector or the value of the sample mean
#' @param sdm the sample standard deviation; it's not necessary to enter it when x is a vector
#' @param n the size of the sample; it's not necessary to enter it when x is a vector
#' @param conf.level the confidence level; by default it's 0.95
#' @keywords confidence interval
#' @export
#' @examples
#' ICT.exact()

ICT.exact=function(x,sdm=sd(x),n=length(x),conf.level=0.95,na.rm=FALSE){
  if (!is.vector(x) | mode(x)!="numeric"){stop("'x' must be a number or a numeric vector")}
  else{
    if(length(x)==1){N=n;
                     INT=c(x-qt(1-(1-conf.level)/2,n-1)*sdm/sqrt(n), 
                         x+qt(1-(1-conf.level)/2,n-1)*sdm/sqrt(n))}  
  else{
    if(na.rm==TRUE){N=length(na.omit(x))}else{N=length(x)}
    INT=c(mean(x,na.rm=na.rm)-qt(1-(1-conf.level)/2,N-1)*sd(x,na.rm=na.rm)/sqrt(N), 
        mean(x,na.rm=na.rm)+qt(1-(1-conf.level)/2,N-1)*sd(x,na.rm=na.rm)/sqrt(N))}
  data.frame(mean=mean(x,na.rm=na.rm),size=N,lower=INT[1],upper=INT[2],conf.level=conf.level)          
}}	


 