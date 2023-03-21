#' One Facet Statistics
#'
#' @param items Number of items (defaults to presenting 1-10 items if not otherwise specified)
#' @param gstudy The saved gstudy object produced from using the gstudy() function
#' @param round Decimals to round coefficients to
#'
#' @return Returns printed results and plot containing the generalizability coefficient, relative error variance, dependability coefficient, and absolute error variance.
#' @export
#'
#' @description The following function uses the formulas presented in Huebner & Lucht (2019) to create a table and plot of the dependability and generalizability coefficients for various item types for a one facet design (note this will not work for two facet designs, there is a separate function for that)
#'
#' @note Two reliability-like coefficients are produced: Generalizability coefficient and a Dependability Coefficient. The Generalizability coefficient is useful when making relative decisions such as rank-ordering subjects. The Dependability coefficient is useful when making absolute decision such as a subjects standing on a construct (e.g., a score of 109 on an IQ test) or when a subject must achieve a particular standard (e.g., a pass/fail exam, licensure exam).
#'
#' @examples
onefacet.stats <- function(items=c(1:10), gstudy, round=2) {
  n_i <- items
  #relative error variance
  rel_err_var <- gstudy$components[3,2]/n_i
  #absolute error variance
  abs_err_var <- gstudy$components[2,2]/n_i+gstudy$components[3,2]/n_i
  #calculate generalizability coefficient
  gen_coef <- gstudy$components[1,2]/(gstudy$components[1,2]+ rel_err_var)
  #calculate dependability coefficient
  dep_coef <- gstudy$components[1,2]/(gstudy$components[1,2]+ abs_err_var)
  #round items
  rel.err.var<-round(rel_err_var,round)
  abs.err.var<-round(abs_err_var,round)
  gen.coef<-round(gen_coef,round)
  dep.coef<-round(dep_coef,round)
  #plot results
  plot(items, dep_coef, type="o", col="blue", pch=68, ylim=c(0,1))
  par(new=TRUE)
  plot(items, gen_coef, type="o", col="red", pch=71, axes = F)
  #view a table of results
  rbind(rel.err.var, abs.err.var,gen.coef,dep.coef)
}

#onefacet.stats(items=1:25, gstudy=g.compFear)
