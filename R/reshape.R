#' GTheory Reshape
#'
#' @param data Dataframe
#'
#' @return Returns data frame in long format
#'
#' @description In order to run a Gtheory analysis, we need our data in long format. To do this, I'm using the melt function from the reshape2 package. You'll need to install the reshape2 package in order for this function to work.
#'
#' @export
#'
#' @examples
#' reshape(data)
reshape <- function(data) {
  data2 <- as.data.frame(data) #declare data as data frame
  data2$person <- seq.int(nrow(data2)) #creating a person ID
  data2.long <- reshape2::melt(data2, id.vars = "person", variable.name = "item", value.name="score") #melt function from reshape2
}
