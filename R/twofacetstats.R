#' Two Facet Statistics
#'
#' @param n_i  Input number for first facet
#' @param n_o Input number for second facet
#' @param gstudy The saved gstudy object produced from using the gstudy() function
#' @param round Decimals to round coefficients to
#'
#' @return Returns table with relative error variance, absolute error variance, generalizability coefficient, and dependability coefficient
#' @export
#'
#' @description Function to calculate Generalizability and Dependability Coefficients for different numbers of designs
#'
#' @examples
#' twofacet.stats(n_i=1, n_o=1, gstudy, round=2)
#'
twofacet.stats <- function(n_i=1, n_o=1, gstudy, round=2) {
  #relative error variance
  rel_err_var <- gstudy$components[1,2]/n_i+gstudy$components[2,2]/n_o +gstudy$components[7,2]/(n_i*n_o)
  #absolute error variance
  abs_err_var <- gstudy$components[5,2]/n_i+gstudy$components[6,2]/n_o+gstudy$components[3,2]/(n_i*n_o)+gstudy$components[1,2]/n_i+gstudy$components[2,2]/n_o+gstudy$components[7,2]/(n_i*n_o)
  #calculate generalizability coefficient
  gen_coef <- gstudy$components[4,2]/(gstudy$components[4,2]+ rel_err_var)
  #calculate dependability coefficient
  dep_coef <- gstudy$components[4,2]/(gstudy$components[4,2]+ abs_err_var)
  rel.err.var<-round(rel_err_var,round)
  abs.err.var<-round(abs_err_var,round)
  gen.coef<-round(gen_coef,round)
  dep.coef<-round(dep_coef,round)
  #view a table of results
  rbind(rel.err.var, abs.err.var,gen.coef,dep.coef)
}

# 5 writing prompts and 2 raters
#twofacet.stats(5, 2, gstudy=g.writing)

# 2 writing prompts and 2 raters
#twofacet.stats(2, 2, gstudy=g.writing)

# 3 writing prompts and 3 raters
#twofacet.stats(3, 3, gstudy=g.writing)

# 3 writing prompts and 3 raters
#twofacet.stats(4, 3, gstudy=g.writing)
"twofacestats"
