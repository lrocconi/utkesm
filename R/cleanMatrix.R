#' Clean Matrix
#'
#' @param matrix Full matrix to be cleaned
#' @param vars Variables to add/remove from matrix
#' @param action Action to be performed (either "keep" or "drop")
#'
#' @return Returns a matrix with variables added or removed
#' @export
#'
#' @description Drops/keeps variable names within the correlation matrix based on the action parameter
#'
#' @examples
#' data("iris")
#' cor_matrix <- cor(iris[,-5])
#' cor_matrix_2 <- cleanMatrix(cor_matrix, c("Petal.Length"), "drop")
#' cor_matrix_3 <- cleanMatrix(cor_matrix, c("Petal.Length", "Sepal.Length", "Petal.Width"), "keep")
#'
cleanMatrix <- function(matrix, vars, action) {
  if (action == "drop") {
    remove <- vars
    dropC <- colnames(matrix) %in% remove #removes from columns
    dropR <- rownames(matrix) %in% remove #removes from rows

    matrix[!dropR,!dropC]
  } else if (action == "keep") {
    keep <- vars
    keepC <- colnames(matrix) %in% keep #columns
    keepR <- rownames(matrix) %in% keep #rows

    matrix[keepR,keepC]
  } else {
    stop("Invalid action. Please choose either 'keep' or 'drop'.")
  }
}
