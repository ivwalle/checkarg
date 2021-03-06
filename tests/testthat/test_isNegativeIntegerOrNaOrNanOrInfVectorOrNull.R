library(checkargs)
context("isNegativeIntegerOrNaOrNanOrInfVectorOrNull")

test_that("isNegativeIntegerOrNaOrNanOrInfVectorOrNull works for all arguments", {
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanOrInfVectorOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
