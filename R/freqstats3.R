names <- c("Annalise", "Audrey", "Rachael", "Kaia", "Zoe")
sample(names, size = 1, replace = FALSE)


data_long$treat <- as.character(data_long$treat)
data_long$time <- as.character(data_long$time)

stargazer::stargazer(data_long, type="text", summary=TRUE)

data <- fastDummies::dummy_cols(data_long, ignore_na = TRUE, remove_selected_columns = TRUE)

options(na.action = "na.pass")  # so that we keep missing values in the data
X <- model.matrix(~ .-1, data = data_long)

X.df <- data.frame(X)  # stargazer only does summary tables of data.frame objects
stargazer::stargazer(data, type = "text", summary = TRUE)

data <- data.frame(
  x1 = c ("a", "b", "a", "XXX", "C", "b", "abc"), # Create example data
  x2 = c ("d", "e", "f", "g", "h", "i", "j"),
  x3 = 1 ,
  x4 = 2
)

data$x1 <- as.character(data$x1)
data$x2 <- as.factor(data$x2)


data <- data_long
data <- X.df

# Find all factor variables in the data frame
factor_vars <- names(data)[sapply(data, is.factor)]

# if length == 0 move to next step
length(factor_vars)

# if length == 1 need to do original method
dummies <- model.matrix(~ . - 1, data)


# Convert all factor variables to dummy variables
dummies <- model.matrix(~ . - 1, data[, factor_vars], contrasts.arg = lapply(data[, factor_vars], contrasts, contrasts = FALSE))

# Merge these dummies to the original data frame
data_dummy <- data.frame(data[, !colnames(data) %in% factor_vars], dummies)


stargazer(data_dummy, type = "text")



freq <- function(data) {
  # Identify factor and character variables
  factor_vars <- names(data)[sapply(data, function(x) is.factor(x) | is.character(x))]

  # Initialize an empty list to store frequency tables for each variable
  freq_tables <- list()

  # Loop over each factor variable
  for (var in factor_vars) {
    # Calculate frequency, proportion, and missing values
    freq <- table(data[[var]])
    prop <- freq / sum(freq, na.rm = TRUE)
    missing <- sum(is.na(data[[var]]))

    # Combine into a data frame
    freq_table <- data.frame(
      Variable = var,
      Level = names(freq),
      Frequency = as.numeric(freq),
      Proportion = prop,
      Missing = missing
         )

    # Add to the list of frequency tables
    freq_tables[[var]] <- freq_table
  }

  # Combine all frequency tables into one data frame
  freq_table_all <- do.call(rbind, freq_tables)
  row.names(freq_table_all) <- NULL
  freq_table_all <- freq_table_all[,-which(names(freq_table_all) %in% "Proportion.Var1")]
  names(freq_table_all)[names(freq_table_all) == "Proportion.Freq"] <- "Proportion"
    return(freq_table_all)
}

# Use the function
freq <- function(data) {
  # Identify factor and character variables
  factor_vars <- names(data)[sapply(data, function(x) is.factor(x) | is.character(x))]

  # Initialize an empty list to store frequency tables for each variable
  freq_tables <- list()

  # Loop over each factor variable
  for (var in factor_vars) {
    # Calculate frequency, proportion, and missing values
    freq <- table(data[[var]], useNA = "ifany")
    prop <- freq / sum(freq, na.rm = TRUE)

    # Combine into a data frame
    freq_table <- data.frame(
      Variable = var,
      Level = names(freq),
      Frequency = as.numeric(freq),
      Proportion = prop
    )

    # Add to the list of frequency tables
    freq_tables[[var]] <- freq_table
  }

  # Combine all frequency tables into one data frame
  freq_table_all <- do.call(rbind, freq_tables)
  row.names(freq_table_all) <- NULL
  freq_table_all <- freq_table_all[,-which(names(freq_table_all) %in% "Proportion.Var1")]
  names(freq_table_all)[names(freq_table_all) == "Proportion.Freq"] <- "Proportion"
  return(freq_table_all)
}


# Use the function on a data frame
data_long[c(4,6,8,11),] <- NA
freq(data_long)
freq(data)
tab <- freq(data_long)
