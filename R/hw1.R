#' hw1
#'
#' Homework 1 Data
#'
#' The hw1.sav dataset contains data on college students’ responses to a substance abuse questionnaire. Items on the questionnaire asked students about their use of tobacco, alcohol, and marijuana as well as questions on childhood abuse and neglect, family issues (i.e., conflict, communication), sense of support/belonging, and anxiety. Demographic characteristics (e.g., gender, age, class level) of the participants were also collected. **Note**: higher values for the continuous variables in this dataset represent higher levels of the variable.
#'
#' @format A data frame with 300 rows and 31 variables:
#' \describe{
#'   \item{id}{identification number}
#'   \item{sum11}{Drinking Status (0 Missing, 1 Lifelong Non-Drinker, 2 Former Drinker, 3 Infrequent Drinker, 4 Occasional Drinker, 5 Regular Drinker)}
#'   \item{sum13}{Smoking Frequency (0 Not At All, 1 Once Per Month or Less, 2 2-3 Times Per Month, 3 Once a Week, 4 2-4 Days a Week, 5 5-6 Days a Week, 6 Everyday)}
#'   \item{sum14}{Marijuana Frequency (0 Not At All, 1 Once Per Month or Less, 2 2-3 Times Per Month, 3 Once a Week, 4 2-4 Days a Week, 5 5-6 Days a Week, 6 Everyday)}
#'   \item{demo1}{Ethnicity (1 Caucasian, 2 Black/African-American, 3 Alaskan Native/Native American, 4 Asian/Pacific Islander, 5 Hispanic, 6 Other)}
#'   \item{demo1o}{Specific Other Ethnic Group}
#'   \item{demo4}{Gender (1 Female, 2 Male, 3 Missing)}
#'   \item{demo5}{Class (1 First-year, 2 Sophomore, 3 Junior, 4 Senior, 6 Graduate Student)}
#'   \item{demo6}{GPA (1 Less than 1.00, 2 1.00 to 1.49, 3 1.50 to 1.99, 4 2.00 to 2.49, 5 2.50 to 2.99, 6 3.00 to 3.49, 7 3.50 to 4.00)}
#'   \item{demo7}{Athletics (0 No, 1 Yes)}
#'   \item{demo8}{Greek Status (0 No, 1 Yes)}
#'   \item{demo9}{Residence (1 Residence Hall/Dorm, 2 On Own, 3 Greek House, 4 With Parents, 5 Other)}
#'   \item{demo9o}{Specific Other Residence}
#'   \item{demo12}{Age of Participant}
#'   \item{tcpha}{Total Childhood Physical Abuse}
#'   \item{tcpsa}{Total Childhood Psychological Abuse}
#'   \item{trs}{Total Religiosity}
#'   \item{tcn}{Total Childhood Neglect}
#'   \item{tcsa}{Total Childhood Sexual Abuse}
#'   \item{tarb}{Total Alcohol Related Behaviors}
#'   \item{twa}{Total Witnessed Abuse}
#'   \item{fconflct}{Family Conflicts}
#'   \item{pfaffect}{Positive Family Affect}
#'   \item{fcomm}{Family Communication}
#'   \item{tfss}{Total Family Support}
#'   \item{peersupp}{Perceived Peer Support}
#'   \item{ccomfort}{Perceived Classroom Comfort}
#'   \item{pisolate}{Perceived Isolation}
#'   \item{facsupp}{Perceived Faculty Support}
#'   \item{tgas}{Total Generalized Anxiety}
#'   \item{alcfreq}{Alcohol Quantity * Frequency}
#' }
#' @source \url{https://stats.oarc.ucla.edu/other/hlm/hlm-mlm/introduction-to-multilevel-modeling-using-hlm/}
"hsb"
