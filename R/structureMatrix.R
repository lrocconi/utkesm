#' Structure Maxtrix
#'
#' @param x An object produced using the `psych::fa` function.
#' @param cut
#'
#' @return A matrix containing
#' @export
#'
#' @examples
#'
#' fa1 <- psych::fa(saq)
#'
#' structureMatrix(fa1)
#'
structureMatrix <- function(x, cut = .32) {
  m = as.data.frame(x$loadings %*% x$Phi)
  y = as.data.frame(apply(m, 2, function(z) ifelse(z < abs(cut), NA, z) ))
  y = round(y, 3)
  y[is.na(y)] <- ""
  n = ncol(x$Phi)

  for (i in 1:n)
  { y <- y[order(y[,i]),]
  }

  return(y)

}
