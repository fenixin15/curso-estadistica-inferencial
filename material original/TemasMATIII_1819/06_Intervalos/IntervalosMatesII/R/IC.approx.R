#' Confidence Interval III
#'
#' Ths function computes an approximate confidence interval for the mean of a random variable with unknown standard deviation
#' when the sample is large.
#' The result is a data frame with variables 
#' mean (the sample mean), 
#' size (the sample size), 
#' lower and upper (the lower and upper confidence interval limits)
#' conf.level the confidence level
#' @param x A vector or the value of the sample mean
#' @param sigma The standard deviation of the random variable
#' @param n The size of the sample; it's not necessary to enter it when x is a vector
#' @param conf.level The confidence level; by default it's 0.95
#' @param na.rm A logical value indicating whether NA values should be stripped before the computation proceeds; its value by default is FALSE
#' @keywords confidence interval
#' @export
#' @examples
#' ICZ.approx()
ICZ.approx=function(x,sdm=sd(x),n=length(x),conf.level=0.95,na.rm=FALSE){
  if (!is.vector(x) | mode(x)!="numeric"){stop("'x' must be a number or a numeric vector")}
  else{
    if(length(x)==1){N=n;
                     INT=c(x-qnorm(1-(1-conf.level)/2)*sdm/sqrt(n), 
                         x+qnorm(1-(1-conf.level)/2)*sdm/sqrt(n))}  
  else
  {
    if(na.rm==TRUE){N=length(na.omit(x))}else{N=length(x)}    
    INT=c(mean(x,na.rm=na.rm)-qnorm(1-(1-conf.level)/2)*sd(x,na.rm=na.rm)/sqrt(N), 
         mean(x,na.rm=na.rm)+qnorm(1-(1-conf.level)/2)*sd(x,na.rm=na.rm)/sqrt(N))}
  if (N<40) {warning("n is not large enough to obtain a significant confidence interval")}               
  data.frame(mean=mean(x,na.rm=na.rm),size=N,lower=INT[1],upper=INT[2],conf.level=conf.level)          
}}  

#' Confidence Interval IV
#'
#' Ths function computes an approximate confidence interval for the success probability of a Bernoulli variable
#' using Laplace formula; the sample, the number of successes and the number of failures must be large to be valid.
#' The result is a data frame with variables 
#' proportion (the sample proportion), 
#' size (the sample size), 
#' lower and upper (the lower and upper confidence interval limits)
#' conf.level the confidence level
#' @param x A vector of 0s and 1s or the number of 1s in the sample
#' @param n The size of the sample; it's not necessary to enter it when x is a vector
#' @param conf.level The confidence level; by default it's 0.95
#' @param na.rm A logical value indicating whether NA values should be stripped before the computation proceeds; its value by default is FALSE
#' @keywords confidence interval
#' @export
#' @examples
#' ICZ.p()
ICZ.p=function(x,n=length(x),conf.level=0.95,na.rm=FALSE){
  if (!is.vector(x) | (length(x)>1 & min(x==1 | x==0 | is.na(x))==0)){stop("'x' must be a number or a binary vector")}
  else{
  if(length(x)==1){pm=x/n; N=n;
    INT=c(pm-qnorm(1-(1-conf.level)/2)*sqrt(pm*(1-pm)/n), 
                         pm+qnorm(1-(1-conf.level)/2)*sqrt(pm*(1-pm)/n))}  
  else{
    if(na.rm==TRUE){N=length(na.omit(x))}else{N=length(x)}
    pm=mean(x,na.rm=na.rm);
  INT=c(pm-qnorm(1-(1-conf.level)/2)*sqrt(pm*(1-pm)/N), 
        pm+qnorm(1-(1-conf.level)/2)*sqrt(pm*(1-pm)/N))}
  if (N<100 |pm<10/N | 1-pm<10/N) {warning("The conditions for the meaningful application of Laplace's formula are not satisfied")}               
    data.frame(proportion=pm,size=N,lower=INT[1],upper=INT[2],conf.level=conf.level)          
}}

