#' Decide the best day for an happy hour
#'
#' @param x A list of Date vectors
#'
#' @return The set of common Date(s)
#' @export
#'
#' @examples
#' 1+1
#' 2+3
#' 3+3
decide_happy_hour <- function(x) {
  lubridate::as_date(Reduce(lubridate::intersect , x))
}
