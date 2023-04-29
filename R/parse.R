#' Parse string dates into Dates
#'
#' @param x A list of people together with availability dates (to have a beer!).
#' Dates could be expressed as date, name of week day or interval of dates.
#'
#' @return A list of date (in date format) for each person
#' @export
#'
#' @examples
#' beer_dates_string <- list( andrea = c("thursday", "friday"),
#'  federico = "2023-05-04",
#'  chiara = c("2023-05-03 / 2023-05-05", "2023-05-10"))
#'
#' parse_dates(beer_dates_string)
#'
sequence_dates <- function(string){
  date_int <- lubridate::interval(string)
  date_start <- lubridate::as_date(lubridate::int_start(date_int))
  date_end <- lubridate::as_date(lubridate::int_end(date_int))
  sequence_interval <- seq(date_start,date_end,by = "day")
  return(sequence_interval)
}

kind_of_dates <- function(obs){
  new_obs <- c()
  for(i in 1:length(obs)){
    if(grepl('/', obs[i])){
      new_obs <- c(new_obs, sequence_dates(obs[i]))
    } else {
      new_obs <- c(new_obs, lubridate::as_date(obs[i]))
    }
  }
  return(new_obs)
}

parse_dates <- function(x) {
  lapply(lapply(x, kind_of_dates), lubridate::as_date)
}
