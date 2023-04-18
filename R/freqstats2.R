# Function to Display a Table of Frequencies
freq <- function(x) {
  lapply(x, table, useNA="always")

}

# Function List of freqs or summary stats
# Forces "pretty" freq table from stats on all variables
freq2 <- function(x) {
  lapply(x, function(x) {
    dat = as.data.frame(rbind(cbind(freq = table(x, useNA="always"),
                                    prop = prop.table(table(x, useNA="always"))
    ),
    cbind(sum(stats::complete.cases(x)),
          (sum(prop.table(table(x, useNA="always"))))-(sum(is.na(x))/((sum(stats::complete.cases(x)))+(sum(is.na(x)))))
    )))
    row.names(dat)[row.names(dat)=="X"] <- "valid"
    return(dat)
  })
}
"freqstats2"
