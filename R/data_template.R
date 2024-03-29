#' HSB: High School and Beyond Data
#'
#' This data is a modified subsample from the 1982 High School and Beyond Survey and is used extensively in *Hierarchical Linear Models* by Raudenbush and Bryk. The data file, called hsb, consists of 7,185 students nested in 160 schools. The outcome variable of interest is the student-level (level 1) math achievement score (mathach). The variable ses is the socio-economic status of a student and therefore is at the student level. The variable meanses is the average SES for each school and therefore is at the school level (level 2). The variable sector is a variable indicating if a school is public or catholic and is therefore a school-level variable. There are 90 public schools (sector=0) and 70 catholic schools (sector=1) in the sample.
#'
#' **Note:** This dataset was imported from an SPSS .sav file using `haven` and therefore has variable attributes attached.
#'
#' @format A data frame with 7185 rows and 11 variables:
#' \describe{
#'   \item{id}{school identification number}
#'   \item{minority}{ethnicity status: other, minority}
#'   \item{female}{gender status: female, male}
#'   \item{ses}{socioeconomic status based on a standardized scale constructed from measures of parental occupation, education, and income}
#'   \item{mathach}{a measure of math achievement}
#'   \item{size}{school enrollment size}
#'   \item{catholic}{school sector: public school or catholic school}
#'   \item{pracad}{proportion of students in the academic track}
#'   \item{disclim}{scale measuring disciplinary climate}
#'   \item{himinty}{proportion of minority enrollment}
#'   \item{meanses}{mean SES for each school}
#' }
#' @references{
#'   \insertRef{raudenbush2002}{mlmhelpr}
#' }
