#' Return the Basic Facts About a US College
#'
#' @param college The name of the the school of interest.
#' @examples
#' get_info("University of Virginia")
#' @export


get_info <- function(college) {
  info <- subset(college_data, college_data$INSTNM == college)
  print(paste("School:", info$INSTNM))
  print(paste("Location: ", info$CITY, ", ", info$STABBR, sep = ""))
  print(paste("Admissions Rate:", info$ADM_RATE))
  print(paste("Average SAT Score:", info$SAT_AVG_ALL))
}
