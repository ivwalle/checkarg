library(checkargs)
context("isNegativeNumberOrNanScalar")

test_that("isNegativeNumberOrNanScalar works for all arguments", {
  expect_identical(isNegativeNumberOrNanScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNegativeNumberOrNanScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberOrNanScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberOrNanScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberOrNanScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberOrNanScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
