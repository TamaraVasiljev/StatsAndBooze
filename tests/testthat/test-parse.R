test_that("basic parsing works", {
  my_string_dates<-list(andrea=c("2023-05-01","2023-05-02 / 2023-05-04"), federico=c("wednesday","thursday"))
  my_output<-list(andrea=c(lubridate::as_date("2023-05-01"),lubridate::as_date("2023-05-02"),lubridate::as_date("2023-05-03"),lubridate::as_date("2023-05-04")), federico=c(lubridate::as_date("2023-05-03"), lubridate::as_date("2023-05-04")))
  expect_equal(parse_dates(my_string_dates), my_output)
})
