library(checkargs)
context("isStrictlyPositiveIntegerOrInfScalar")

test_that("isStrictlyPositiveIntegerOrInfScalar works for all arguments", {
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isStrictlyPositiveIntegerOrInfScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerOrInfScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerOrInfScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerOrInfScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrInfScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
