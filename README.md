# StatsAndBooze

<!-- badges: start -->
  [![R-CMD-check](https://github.com/TamaraVasiljev/StatsAndBooze/actions/workflows/R-CMD-check.yaml/badge.svg?branch=dev)](https://github.com/TamaraVasiljev/StatsAndBooze/actions/workflows/R-CMD-check.yaml)
 <!-- badges: end -->

## Description

StatsandBooze is an R package designed to find the appropriate date among all participants for having a beer :beers: (or a diet coke :bubble_tea:). 
Given a list of participants and their availability dates as input, this package may be used to find the common date when all partecipants can be part of the happy hours. 

### Main functions

* <ins>**parse_dates**</ins>: requires as input a list of participants with their availability of dates. Dates could be expressed in several ways (more details below, Date Format section). It may be used to output a list of all single availability of dates in date format for each participant.
* <ins>**decide_happy_hour**</ins>: requires as input a list of dates in date format to find the common availabile date among all participants.


## Installation Process

To install the package on R from Github:

``` r
devtools::install_github("TamaraVasiljev/StatsAndBooze")
```
or

``` r
githubinstall::gh_install_packages("StatsAndBooze")
```
#### Required libraries

* *devtools* or *githubinstall*
* *lubridate*

## Loading the Package
To load this package

``` r
library(StatsandBooze)
```

## Data format

**parse_dates** requires as input a list of participants with their availability of dates. The dates could be expressed as interval of dates (e.g. "yyyy-mm-dd/yyyy-mm-dd") or names of week days (e.g. "friday") or single dates ("yyyy-mm-dd"). 
* When you choose to input the dates with the name of week days, you have to use the lowercase. 
* When you want to input interval of dates or single dates, it's just required to use "yyyy-mm-dd".

## Other details

**parse_dates** involves several functions to transform the input dates:
* single dates: will be just converted in date format
* interval dates: will be handled to obtain a sequence of dates given the start-date and the end-date as input
* names of week day: will be converted in date format (yyyy-mm-dd) by using the date of today as the reference date

## Examples

* To transform all the input dates in date format (yyyy-mm-dd)

``` r
beer_dates_string <- list( andrea = c("2023-05-02", "2023-05-03 / 2023-05-06"),
federico = "2023-05-05", chiara = c("wednesday", "thursday"))

parse_dates(beer_dates_string)
```
* To find the common available date

``` r
beer_dates_string <- list( andrea = c("2023-05-02", "2023-05-03 / 2023-05-06"),
federico = "2023-05-05", chiara = c("wednesday", "thursday"))

beer_dates <- parse_dates(beer_dates_string)
decide_happy_hour(beer_dates)
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
