#' Helps users to keep data clean
#'
#' Subset and round positive numbers in a numeric vector.
#'
#' @param x A numeric vector.
#' @param r A logical variable to control whether to round the number or not.
#' @return Positive numbers in \code{x}, rounded if \code{y} is TRUE.
#' @examples
#' pos_round(rnorm(10), TRUE)
#' pos_round(rnorm(5), FALSE)
#' @export

pos_round <- function(x, r = T){
  if(!is.numeric(x)) stop("The vector needs to be numeric")
  if(r) x <- round(x[x>0])
  else x <- x[x>0]
  return(x)
}

