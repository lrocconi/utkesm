#' Descriptive Statistics
#'
#' @description Function to display summary statistics for numeric variables and frequency tables for factor variables
#'
#' @param x A list or data frame.
#'
#' @return A list with two elements: 'stats' and 'freq'. The 'stats' element contains the summary statistics for numeric variables, and the 'freq' element contains the frequency tables for factor variables.
#'
#' @examples
#' data("iris")
#' stats(iris)
#'
#' @export
#'
stats <- function(x) {
  # Initialize an empty dataframe to store results
  results <- data.frame()
  freqs <- list()

  for(name in names(x)) {
    if (is.numeric(x[[name]])) {
      # Calculate summary stats for numeric variables
      dat <- data.frame(variable = name,
                        n = length(x[[name]]),
                        mean = round(mean(x[[name]], na.rm = TRUE),2),
                        sd = round(stats::sd(x[[name]], na.rm = TRUE),3),
                        pct50 = round(stats::median(x[[name]], na.rm = TRUE),2),
                        mad = round(stats::mad(x[[name]], na.rm = TRUE),3),
                        pct25 = round(stats::quantile(x[[name]], probs = .25, na.rm = TRUE)[[1]],2),
                        pct75 = round(stats::quantile(x[[name]], probs = .75, na.rm = TRUE)[[1]],2),
                        NA_ = sum(is.na(x[[name]]))
      )
      # Append to results dataframe
      results <- rbind(results, dat)
    } else if (is.factor(x[[name]])) {
      # Calculate frequency tables for factor variables
      dat1 <- data.frame(value = unique(x[[name]]))
      dat1$freq <- sapply(dat1$value, function(v) sum(x[[name]] == v, na.rm = TRUE))
      dat1$prop <- round(dat1$freq / sum(dat1$freq, na.rm = TRUE),3)

      # Add row for NA values
      dat1 <- rbind(dat1, data.frame(value = NA, freq = sum(is.na(x[[name]])), prop = round(sum(is.na(x[[name]])) / length(x[[name]]),3)))

      # Add 'Total' row
      dat1 <- rbind(dat1, data.frame(value = "Total", freq = sum(dat1$freq, na.rm = TRUE), prop = 1))

      # Store frequency table for factor variables
      freqs[[name]] <- dat1
    }
  }

  return(list(stats = results, freq = freqs))
}
#'
#' @title freq
#' @description Function to display a table of frequencies for all variables in a data frame
#' @param x A list or data frame.
#' @return A data frame with 'value', 'freq', and 'prop' columns.
#' @examples
#' data("iris")
#' freq(iris)
#' @export
#'
freq <- function(x) {
  lapply(x, function(x) {
    # Create a dataframe with 'value', 'freq', and 'prop' columns
    dat <- data.frame(value = unique(x))
    dat$freq <- sapply(dat$value, function(v) sum(x == v, na.rm = TRUE))
    dat$prop <- round(dat$freq / sum(dat$freq, na.rm = TRUE),3)

    # Add row for NA values
    dat <- rbind(dat, data.frame(value = NA, freq = sum(is.na(x)), prop = sum(is.na(x)) / length(x)))

    # Add 'Total' row
    dat <- rbind(dat, data.frame(value = "Total", freq = sum(dat$freq, na.rm = TRUE), prop = 1))

    return(dat)
  })
}
