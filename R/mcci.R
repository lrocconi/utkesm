#' Monte Carlo Confidence Intervals for Indirect Effects
#'
#' @param b1 First coefficient estimate
#' @param se1 Standard error for b1
#' @param b2 Second coefficient estimate
#' @param se2 Standard error for b2
#' @param seed Set seed to replicate
#' @param digits Digits to round estimates
#'
#' @return Returns table of indirect effect estimates in a confidence interval of 2.5 - 97.5%
#' @export
#'
#' @description Provides indirect estimates using Monte Carlo confidence intervals between 2.5 - 97.5%
#'
#' @note Monte Carlo Confidence Intervals for Indirect Effects by Louis M. Rocconi (2021). Based on Darlington & Hayes (2017, p. 463) sample syntax for Stata.
#'
#' @examples
#'
#' mcci(.3, .21, .3, .21)
mcci <- function(b1, se1, b2, se2, seed = 1234, digits = 4) {

  set.seed(seed)
  b1 <- stats::rnorm(5000, 0, se1) + b1
  b2 <- stats::rnorm(5000, 0, se2) + b2
  b3 <- b1*b2
  CI <- stats::quantile(b3, probs = c(.025, .975))
  return(round(CI, digits))

}
"mcci"
