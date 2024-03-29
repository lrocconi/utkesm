% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcar.R
\name{mcar}
\alias{mcar}
\title{Little's Formal MCAR Test}
\usage{
mcar(x)
}
\arguments{
\item{x}{Data frame}
}
\value{
Returns test statistics for Little's MCAR test
}
\description{
This significant test examines if missing data in data frame are MCAR
}
\note{
The null hypothesis in this test is the data are MCAR. If the test is statistically significant, the data are NOT MCAR.

This test assumes all variables are continuous (i.e., not factors)
}
\examples{
mcar(dat)

}
