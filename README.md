# StatsAndBooze

## Description
``` r
> StatsandBooze is an R package designed to handle a specific type of data where the list of authors is associated with the dates.
It can be used to find the appropriate date for Happy Hours with the given list. It can be used to handle jointly the available 
dates from each author. This package allows to specify days of the week instead of numeric dates. This package is more useful for
the handling of time and date intervals.
```

### Features
``` r
1. "StatsAndBooze" package can be used to handle the date intervals.

2. It can be used to find the interval sequence of dates.

> sequence_dates <- function(string){
  date_int <- lubridate::interval(string)
  date_start <- lubridate::as_date(lubridate::int_start(date_int))
  date_end <- lubridate::as_date(lubridate::int_end(date_int))
  sequence_interval <- seq(date_start,date_end,by = "day")
  return(sequence_interval)

3. It ca be used to transform the days of week into numbers/integers.
> transform_day_numbers <- function(name_day){
  as.integer(factor(name_day, levels = c("sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"),
  ordered = TRUE))

4. It can be used to identify the suitable dates for Aperitif/Beer.
> parse_dates <- function(x) {
  lapply(sapply(x, kind_of_dates), lubridate::as_date)
}
parse_dates(beer_dates_string)

5. It can be useful to analyze the group chat of any social media platform.
> For Example **covfefe_chat**
```

### Main functions

* **parse_dates**:
* **decide_happy_hour**:
* **interval_of_dates**:
* **date_of_interest**: 


## Installation Process

To install the package on R from Github:

``` r
devtools::install_github("TamaraVasiljev/StatsAndBooze")
```
or

``` r
githubinstall::gh_install_packages("StatsAndBooze")
```

## Loading the Package
To load this package

``` r
> library(StatsandBooze)

packageVersion ("StatsandBooze")
> Version: '0.0.0.9000'
```



## Contributors
<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<table>
<tr>
<td align="center">
<a href="https://github.com/TamaraVasiljev">
<img src="https://avatars.githubusercontent.com/u/129077304?v=4" width="100px;" alt=""/>
</a><br>
</td>
<td align="center">
<a href="https://github.com/ValentinaZangirolami">
<img src="https://avatars.githubusercontent.com/u/78240304?v=4" width="100px;" alt=""/>
</a><br>
</td>
<td align="center">
<a href="https://github.com/MuhammadAmirSaeed66">
<img src="https://avatars.githubusercontent.com/u/129077378?v=4" width="100px;" alt=""/>
</a><br>
</td>
</tr>
</table>
