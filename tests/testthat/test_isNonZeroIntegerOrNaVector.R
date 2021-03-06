library(checkargs)
context("isNonZeroIntegerOrNaVector")

test_that("isNonZeroIntegerOrNaVector works for all arguments", {
  expect_identical(isNonZeroIntegerOrNaVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNonZeroIntegerOrNaVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
