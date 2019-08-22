#' Sample size 
#'
#' This function computes the smallest necessary size of a sample of a normal population with lnown standard deviation
#' in order to obtain a confidence interval of a maximum target range
#' @param A the target range
#' @param sigma the standard deviation of the random variable
#' @param conf.level the confidence level; by default it's 0.95
#' @keywords Size
#' @export
#' @examples
#' NMin.mu()

NMin.mu=function(A,sigma,conf.level=0.95){
 ceiling((2*qnorm(1-(1-conf.level)/2)*sigma/A)^2)}

#' Sample size 
#'
#' This function computes the smallest necessary size of a sample of a Bernoulli population 
#' in order to obtain a confidence interval of a maximum given range in the worst of cases
#' @param A the target range
#' @param conf.level the confidence level; by default it's 0.95
#' @keywords Size
#' @export
#' @examples
#' NMin.p()

NMin.p=function(A,conf.level=0.95){ceiling((qnorm(1-(1-conf.level)/2)/A)^2)}




