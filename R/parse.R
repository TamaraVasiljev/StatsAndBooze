#' Parse string dates into Dates
#'
#' @param x A list of character dates
#'
#' @return A list of Date vectors
#' @export
#'
#' @examples
#' 1+1
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
  lapply(sapply(x, kind_of_dates), lubridate::as_date)
}
