#' High School and Beyond (Missing At Random)
#'
#' A random sample of data from the High School and Beyond survey from the National Center for Education Statistics. Missing values have been made to be missing at random.
#'
#' **Note:** This dataset was imported from an SPSS .sav file using `haven` and therefore has variable attributes attached.
#'
#' @format A data frame with 200 rows and 11 variables:
#' \describe{
#'   \item{id}{student id number}
#'   \item{female}{female student}
#'   \item{race}{race/ethnicity (1 = hispanic, 2 = asian, 3 = african-american, 4 = white)}
#'   \item{ses}{ses (1 = low, 2 = middle, 3 = high)}
#'   \item{schtyp}{type of school (1 = public, 2 = private)}
#'   \item{prog}{type of program (1 = general, 2 = academic, 3 = vocational)}
#'   \item{read}{reading score}
#'   \item{write}{writing score}
#'   \item{math}{math score}
#'   \item{science}{science score}
#'   \item{socst}{social studies score}
#' }
#' @source \url{https://stats.oarc.ucla.edu/other/hlm/hlm-mlm/introduction-to-multilevel-modeling-using-hlm/}
"hsb"
