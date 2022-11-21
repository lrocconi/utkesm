#' Clean Matrix
#'
#' @param matrix Full matrix to be cleaned
#' @param vars Variables to add/remove from matrix
#'
#' @return Returns a matrix with variables added or removed
#' @export
#'
#' @description Drops/keeps variable names within the correlation matrix
#'
#'
#' @examples
dropMatrix <- function(matrix, vars) {
  remove <- vars
  dropC <- colnames(matrix) %in% remove #removes from columns
  dropR <- rownames(matrix) %in% remove #removes from rows

  matrix[!dropR,!dropC]
}

keepMatrix <- function(matrix, vars) {
  keep <- vars
  keepC <- colnames(matrix) %in% keep #columns
  keepR <- rownames(matrix) %in% keep #rows

  matrix[keepR,keepC]
}
