#' Confidence Interval V
#'
#' Ths function computes a confidence interval for the variance of a normal random variable.
#' The result is a data frame with variables 
#' variance (the sample variance), 
#' size (the sample size), 
#' lower and upper (the lower and upper confidence interval limits)
#' conf.level the confidence level
#' @param x A vector or the value of the sample variance
#' @param n The size of the sample; it's not necessary to enter it when x is a vector
#' @param conf.level The confidence level; by default it's 0.95
#' @param na.rm A logical value indicating whether NA values should be stripped before the computation proceeds; its value by default is FALSE
#' @keywords confidence interval
#' @export
#' @examples
#' IC.var


IC.var=function(x,n=length(x),conf.level=0.95,na.rm=FALSE){
  if (!is.vector(x) | mode(x)!="numeric"){stop("'x' must be a number or a numeric vector")}
  else{
    if(length(x)==1){S2=x; N=n;
                   INT=c((n-1)*S2/qchisq(1-(1-conf.level)/2,n-1),
                         (n-1)*S2/qchisq((1-conf.level)/2,n-1))}  
  else{
    if(na.rm==TRUE){N=length(na.omit(x))}else{N=length(x)};
    S2=var(x,na.rm=na.rm);
  INT=c((N-1)*S2/qchisq(1-(1-conf.level)/2,N-1),
        (N-1)*S2/qchisq((1-conf.level)/2,N-1))}
  data.frame(variance=S2,size=N,lower=INT[1],upper=INT[2],conf.level=conf.level)          
}}	
