#' Decide the best day for an happy hour
#'
#' @param x A list of Date vectors
#'
#' @return The set of common Date(s)
#' @export
#'
#' @examples
#' beer_dates_string <- list( andrea = c("thursday", "friday"),
#'  federico = "2023-05-04",
#'  chiara = c("2023-05-03 / 2023-05-05", "2023-05-10"))
#'
#' dates <- parse_dates(beer_dates_string)
#' decide_happy_hour(dates)
decide_happy_hour <- function(x) {
  lubridate::as_date(Reduce(lubridate::intersect , x))
}
