#' Little's Formal MCAR Test
#'
#' @param x Data frame
#'
#' @return Returns test statistics for Little's MCAR test
#'
#' @description This significant test examines if missing data in data frame are MCAR
#'
#' @note The null hypothesis in this test is the data are MCAR. If the test is statistically significant, the data are NOT MCAR.
#'
#' @note This test assumes all variables are continuous (i.e., not factors)
#' @export
#'
#' @examples
#' data(iris)
#' n_rows <- nrow(iris)
#' row_missing <- sample(1:n_rows, size = .1*n_rows) # sample randomly 10% of rows
#' iris[row_missing, 1] <- NA
#' mcar(iris)
#' mcar(iris)
#'
mcar <- function(x){
  # Check whether lavaan package is installed
  if(!requireNamespace("lavaan")) {
    stop("You must have the `lavaan` package installed to use Little's MCAR test")
  }

  if(!(is.matrix(x) | is.data.frame(x))) {
    stop("Data should be a matrix or dataframe")
  }

  if (is.data.frame(x)){
    x <- data.matrix(x)
  }

  # delete rows of complete missingness
  foo <- function(x) return(any(!is.na(x)))
  dd <- apply(X = x, MARGIN = 1L, FUN = foo)
  dd <- which(!dd, arr.ind = TRUE)
  if(length(dd) > 0)
    x <- x[-dd,]

  # define variables
  n.var <- ncol(x) # number of variables
  n <- nrow(x)  #number of respondents
  var.names <- colnames(x)
  r <- 1 * is.na(x)

  nmis <- as.integer(apply(r, 2, sum))  #number of missing data for each variable REWRITE
  mdp <- (r %*% (2^((1:n.var - 1)))) + 1  #missing data patterns
  x.mp <- data.frame(cbind(x,mdp)) # add column indicating pattern
  colnames(x.mp) <- c(var.names,"MisPat") # set name of new column to MisPat
  n.mis.pat <- length(unique(x.mp$MisPat)) # number of missing data patterns
  p <- n.mis.pat-1 # number of Missing Data patterns minus 1 (complete data row)


  # s <- prelim.norm(x)
  # ll <- em.norm(s)
  # fit <- getparam.norm(s = s, theta = ll)

  #imp <- mice::mice(x, m = 1, method = "norm", seed = 1234)

  fit <- lavaan::lavCor(as.data.frame(x), missing = "ml", output = "fit")

  # gmean<-mlest(x)$muhat #ML estimate of grand mean (assumes Normal dist)
  gmean <- lavaan::lavInspect(fit, what = "mean.ov")
  # gcov<-mlest(x)$sigmahat #ML estimate of grand covariance (assumes Normal dist)
  gcov <- lavaan::lavInspect(fit, what = "cov.ov")
  colnames(gcov) <- rownames(gcov) <- colnames(x)

  #recode MisPat variable to go from 1 through n.mis.pat
  x.mp$MisPat2 <- rep(NA,n)
  for (i in 1:n.mis.pat){
    x.mp$MisPat2[x.mp$MisPat == sort(unique(x.mp$MisPat), partial=(i))[i]]<- i
  }

  x.mp$MisPat<-x.mp$MisPat2
  x.mp<-x.mp[ , -which(names(x.mp) %in% "MisPat2")]

  #make list of datasets for each pattern of missing data
  datasets <- list()
  for (i in 1:n.mis.pat){
    datasets[[paste("DataSet",i,sep="")]]<-x.mp[which(x.mp$MisPat==i),1:n.var]
  }

  #degrees of freedom
  kj<-0
  for (i in 1:n.mis.pat){
    no.na<-as.matrix(1* !is.na(colSums(datasets[[i]])))
    kj<-kj+colSums(no.na)
  }

  df<-kj -n.var

  #Little's chi-square
  d2<-0
  #cat("this could take a while")

  # this crashes at the missingness pattern where every column is missing
  # this for-loop can be handled faster with plyr-function
  for (i in 1:n.mis.pat){
    mean <- (colMeans(datasets[[i]])-gmean)
    mean <- mean[!is.na(mean)]
    keep <- 1* !is.na(colSums(datasets[[i]]))
    keep <- keep[which(keep[1:n.var]!=0)]
    cov <- gcov
    cov <- cov[which(rownames(cov) %in% names(keep)) , which(colnames(cov) %in% names(keep))]
    d2 <- as.numeric(d2+(sum(x.mp$MisPat==i)*(t(mean)%*%solve(cov)%*%mean)))
  }

  #p-value for chi-square
  p.value<-1-pchisq(d2,df)

  #descriptives of missing data
  amount.missing <- matrix(nmis, 1, length(nmis))
  percent.missing <- amount.missing/n
  amount.missing <- rbind(amount.missing,percent.missing)
  colnames(amount.missing) <- var.names
  rownames(amount.missing) <- c("Number Missing", "Percent Missing")



  # Create the result object
  result <- list(chi.square = d2,
                 df = df,
                 p.value = p.value,
                 missing.patterns = n.mis.pat,
                 amount.missing = amount.missing,
                 data = datasets)

  return(result)
}



"mcar"
