#' Drop Matrix
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
#' data("iris")
#' cor_matrix <- cor(iris[,-5])
#' dropMatrix(cor_matrix, c("var1", "var2"))
#'
dropMatrix <- function(matrix, vars) {
  remove <- vars
  dropC <- colnames(matrix) %in% remove #removes from columns
  dropR <- rownames(matrix) %in% remove #removes from rows

  matrix[!dropR,!dropC]
}
"cleanMatrix"
