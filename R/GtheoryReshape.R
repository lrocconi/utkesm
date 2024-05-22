#' GTheory Reshape
#'
#' @param data Dataframe
#'
#' @return Returns data frame in long format
#'
#' @description In order to run a Generalizability Theory analysis with the `gtheory` package, the data must be in long format. The `reshape2` package is needed to to in order for this function to work.
#'
#' @export
#'
#' @examples
#' set.seed(123)
#' var1 <- sample(seq(from = 1, to = 5, by = 1), size = 100, replace = TRUE)
#' var2 <- sample(seq(from = 1, to = 5, by = 1), size = 100, replace = TRUE)
#' var3 <- sample(seq(from = 1, to = 5, by = 1), size = 100, replace = TRUE)
#' dat <- as.data.frame(cbind(var1, var2, var3))
#' dat_long <- GtheoryReshape(dat)
#'
#' GtheoryReshape(data)
#'
GtheoryReshape <- function(data) {
  # Check whether reshape2 package is installed
  if(!requireNamespace("reshape2")) {
    stop("You must have reshape2 installed to use wide2long")
  }

  data2 <- as.data.frame(data) #declare data as data frame
  data2$person <- seq.int(nrow(data2)) #creating a person ID
  data2.long <- reshape2::melt(data2, id.vars = "person", variable.name = "item", value.name="score") #melt function from reshape2

  }
"GtheoryReshape"
