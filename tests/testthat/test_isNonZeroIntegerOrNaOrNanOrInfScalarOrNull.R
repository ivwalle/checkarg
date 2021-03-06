library(checkargs)
context("isNonZeroIntegerOrNaOrNanOrInfScalarOrNull")

test_that("isNonZeroIntegerOrNaOrNanOrInfScalarOrNull works for all arguments", {
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrNanOrInfScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
