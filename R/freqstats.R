# Function to Display a Table of Frequencies
freq <- function(x) {
  lapply(x, table, useNA="always")

}

# Function List of freqs or summary stats
stats <- function(x) {
  lapply(x, function(x) {

    if (is.numeric(x)) return(as.data.frame(cbind(min = base::min(x, na.rm = TRUE),
                                                  pt25 = stats::quantile(x, probs = .25, na.rm = TRUE)[[1]],
                                                  pt50 = stats::median(x, na.rm = TRUE),
                                                  pt75 = stats::quantile(x, probs = .75, na.rm = TRUE)[[1]],
                                                  max = base::max(x, na.rm = TRUE),
                                                  mean = round(mean(x, na.rm = TRUE),3),
                                                  sd = round(stats::sd(x, na.rm = TRUE),3),
                                                  "<NA>" = sum(is.na(x))
    )))

    if (is.factor(x)) dat = as.data.frame(rbind(cbind(freq = table(x, useNA="always"),
                                                      prop = prop.table(table(x, useNA="always"))
    ),
    cbind(sum(stats::complete.cases(x)),
          (sum(prop.table(table(x, useNA="always"))))-(sum(is.na(x))/((sum(stats::complete.cases(x)))+(sum(is.na(x)))))
    )))
    row.names(dat)[row.names(dat)=="X"] <- "valid"
    return(dat)

  })}

#has counts including missing and proportions including missing
#feed dataframe
"freqstats"
