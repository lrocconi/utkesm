#' Relative Efficiency
#'
#' @param x Model object
#'
#' @return Returns the Relative Efficiency (RE) statistic for the variables included in the model
#' @export
#'
#' @description Calculates the Relative Efficiency (RE). These values indicate the quality (efficiency) of the estimates. Values closer to 1 indicate high quality.
#'
#' @note formula 10.4 Heymans, M. W. (2019). Applied Missing Data Analysis with SPSS and (R)Studio. https://bookdown.org/mwheymans/bookmi/measures-of-missing-data-information.html
#'
#' @note The close to 1 the better. It’s based on the fraction of missing information and the number of imputation, so the larger the amount of missing data, the greater number of imputation needed. RE = 1/(1+(FMI/m)).
#'
#' @examples
RE <- function(x) {

  fmi <- x$pooled[,11]
  var <- x$pooled[,1]
  dat <- data.frame(var, fmi)
  dat$re <- (1/(1+(dat$fmi/x$m)))
  print(dat[,c(1,3)])
}
