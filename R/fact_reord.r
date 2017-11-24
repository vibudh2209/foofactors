#' Reorder the levels according to given vector
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
	x_fact=factor(x)
	if(length(y)!=length(levels(x_fact)))stop("Your reordering vector is not the same length as levels")
	levels(x_fact)[order(y)]
}
