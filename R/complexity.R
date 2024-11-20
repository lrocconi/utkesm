#' Item Complexity
#'
#' @param x Vector of factor loadings
#'
#' @return Returns the item complexity for each of the items loading given
#'
#' @description This function compute Hoffman’s (1978) item complexity index. This is mainly for teaching and demonstration purposes since item complexity is returned by default in `psych::fa`. Item complexity is an indication of simple structure (i.e., items should load highly onto one factor and have weak loadings on others). Students often ask why the item complexity for particular item is greater than 2 when only one loading is displaying for that item. The issue arises when suppressing loadings less than a certain value. The weak loadings across multiple factors is usually what is causing the complexity score to be greater than 2. To help students better understand item complexity, I wrote this function. Simply, supply the function a vector of factor loadings and it will compute item complexity.
#'
#' @export
#'
#' @references Hofmann, R. J. ( 1978 ). Complexity and simplicity as objective indices descriptive of factor solutions. *Multivariate Behavioral Research*, 13, 247-250.
#'
#' @examples
#' complexity(c(.40, .29, .10, .03, .01, .04))
#'
complexity <- function(x) {
  (sum(x^2)^2)/(sum(x^4))
}
"complexity"
