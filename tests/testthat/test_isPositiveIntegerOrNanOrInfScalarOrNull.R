library(checkargs)
context("isPositiveIntegerOrNanOrInfScalarOrNull")

test_that("isPositiveIntegerOrNanOrInfScalarOrNull works for all arguments", {
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNanOrInfScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNanOrInfScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
