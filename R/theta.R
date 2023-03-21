#' IRT Theta
#'
#' @param theta Latent ability value
#' @param params Object of saved IRT parameter estimates by using coef() function
#'
#' @return Returns table of likelihood of someone with that ability level (theta) would answer the item correctly (column z).
#'
#' @description To evaluate the IRT model at certain values of theta, you can use the function I wrote below. You will only need to run the function once then you can call it using the command theta. Give the function the level of the latent trait you want to evaluate (theta) and where the IRT parameters are stored (params). Column z in the output gives you the likelihood of someone with that ability level (theta) would answer the item correctly.
#'
#' @export
#'
#' @examples
#' theta(0, rasch.params$items) #with a latent ability of 0 or higher you'd have a 96% chance of answering V1 correctly
theta <- function(theta, params) {
  items <- as.data.frame(params)
  items$z <- (exp((1.702*items$a)*(theta-items$b))/(1+exp((1.702*items$a)*(theta-items$b))))
  items
}

