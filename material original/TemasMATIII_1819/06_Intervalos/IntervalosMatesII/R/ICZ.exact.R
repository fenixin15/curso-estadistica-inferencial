#' Confidence Interval I
#'
#' This function computes a confidence interval for the mean of a normal random variable with known standard deviation.
#' 
#' The result is a data frame with variables 
#' mean (the sample mean), 
#' size (the sample size), 
#' lower and upper (the lower and upper confidence interval limits)
#' conf.level (the confidence level)
#' @param x A numeric vector or the value of the sample mean
#' @param sigma The standard deviation of the random variable
#' @param n The size of the sample; it should not be entered when x is a vector
#' @param conf.level The confidence level; by default it's 0.95
#' @param na.rm A logical value indicating whether NA values should be stripped before the computation proceeds; its value by default is FALSE
#' @keywords confidence interval
#' @export
#' @examples
#' ICZ.exact(0.5,1.8,45,0.9)

ICZ.exact=function(x,sigma,n=length(x),conf.level=0.95,na.rm=FALSE){
if (!is.vector(x) | mode(x)!="numeric"){stop("'x' must be a number or a numeric vector")}
else{
 if(length(x)==1){N=n;
     INT=c(x-qnorm(1-(1-conf.level)/2)*sigma/sqrt(n), 
     x+qnorm(1-(1-conf.level)/2)*sigma/sqrt(n))}	
else{
  if(na.rm==TRUE){N=length(na.omit(x))}else{N=length(x)};
  INT=c(mean(x,na.rm=na.rm)-qnorm(1-(1-conf.level)/2)*sigma/sqrt(N), 
     mean(x,na.rm=na.rm)+qnorm(1-(1-conf.level)/2)*sigma/sqrt(N))}
data.frame(mean=mean(x,na.rm=na.rm),size=N,lower=INT[1],upper=INT[2],conf.level=conf.level)          
     }}	

