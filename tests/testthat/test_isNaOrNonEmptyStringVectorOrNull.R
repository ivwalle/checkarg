library(checkargs)
context("isNaOrNonEmptyStringVectorOrNull")

test_that("isNaOrNonEmptyStringVectorOrNull works for all arguments", {
  expect_identical(isNaOrNonEmptyStringVectorOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVectorOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVectorOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVectorOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVectorOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVectorOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVectorOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVectorOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
})
