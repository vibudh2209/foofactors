#' Reorder the levels according to given vector
#'
#' The output is the factor with levels in the order specified
#' for individual character in vector x by vector y
#'
#' @param x Factor or character
#' @param y numeric vector
#'
#' @return Factor
#' @export
#'
#' @examples
#' fact_reord(c("This","is","test","examp"),c(3,1,4,2))
fact_reord <- function(x,y){
	if(any(is.na(y)))stop("Please input non 'NA' vector y")
	if(!is.numeric(y))stop("Input vector y is not a numeric vector")
	if(length(x)!=length(y))stop("Vectors should be of same length")
	vec <- -dplyr::desc(x)
	ordering=c()
	for (i in 1:max(vec)){
		ordering <- append(ordering,mean(y[which(vec==i)]))
	}
	x_fact <- factor(x,levels=levels(factor(x))[order(ordering)])
	return(x_fact)
}
