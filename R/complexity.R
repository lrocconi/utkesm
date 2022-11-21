#' Item Complexity
#'
#' @param x Vector of factor loadings
#'
#' @return Returns the item complexity for each of the items
#'
#' @description Calculates item complexity for based on the factor loadings for each item
#'
#' @export
#'
#' @examples
complexity <- function(x) {
  (sum(x^2)^2)/(sum(x^4))
}

