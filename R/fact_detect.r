#' Detech factor should be character or not
#'
#' Tells whether the inputted factor should be a character
#' by comparing levels and factor (True means should be character)
#' and false means should not be character
#'
#' @param x factor
#'
#' @return logical
#' @export
#'
#' @examples
#' fact_detect(iris$species)
fact_detect <- function(x){
	if(is.factor(x)){
		return(length(x)==length(levels(x)))
	} else {
		stop("Your input is not a factor please input factor")
	}
}
