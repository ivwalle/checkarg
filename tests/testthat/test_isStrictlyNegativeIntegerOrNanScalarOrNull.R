library(checkargs)
context("isStrictlyNegativeIntegerOrNanScalarOrNull")

test_that("isStrictlyNegativeIntegerOrNanScalarOrNull works for all arguments", {
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeIntegerOrNanScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeIntegerOrNanScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
