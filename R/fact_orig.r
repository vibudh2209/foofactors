#' Gives the levels in the same order as input
#'
#' Returns the factor with levels same as that of the
#' input character vector
#'
#' @param x factor or Character
#'
#' @return Factor
#' @export
#'
#' @examples
#' fact_orig(c("This","is","test","examp"))
fact_orig <- function(x){
	if(!any(all(is.character(x)),all(is.factor(x))))stop("Input vector is neither character nor factor")
	x_new <- unique(x)
	ret<-fact_reord(x_new,c(1:length(x_new)))
	return(factor(x,levels=levels(ret)))
}
