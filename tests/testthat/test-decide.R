test_that("decide_happy_hour(): basic functionalities work", {
  beer_dates <- list(
    andrea = lubridate::as_date("2023-04-03"),
    federico = lubridate::as_date("2023-04-03"),
    chiara = lubridate::as_date("2023-04-03")
  )
  expect_equal(
    decide_happy_hour(beer_dates),
    lubridate::as_date("2023-04-03")
  )
})

test_that("decide_happy_hour(): empty intersection", {
  beer_dates <- list(
    andrea = lubridate::as_date("2023-04-03"),
    marco = lubridate::as_date("2023-04-04")
  )
  expect_equal(
    decide_happy_hour(beer_dates),
    lubridate::as_date(numeric(0)) #empty date
  )
})
