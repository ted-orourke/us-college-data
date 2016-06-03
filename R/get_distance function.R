#' Return the Basic Facts About a US College
#'
#' @param hometown Location to get distance from
#' @param college The name of the the school of interest.
#' @param units The preferred units for reporting the distance.
#' @examples
#' get_info("University of Virginia")
#' @export

get_distance <- function(hometown, college, unit = "miles") {
  library(ggmap)
  hometown_coordinates <- geocode(hometown)
  info <- subset(college_data, college_data$INSTNM == college)
  college_town <- paste(info$CITY, ", ", info$STABBR, sep = "")
  college_coordinates <- geocode(college_town)
  library(Imap)
  print(distance <- gdist(hometown_coordinates$lon, hometown_coordinates$lat, college_coordinates$lon, college_coordinates$lat, units = unit))
}
