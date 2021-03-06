library(checkargs)
context("isIntegerOrNaOrNanOrInfVector")

test_that("isIntegerOrNaOrNanOrInfVector works for all arguments", {
  expect_identical(isIntegerOrNaOrNanOrInfVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isIntegerOrNaOrNanOrInfVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isIntegerOrNaOrNanOrInfVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isIntegerOrNaOrNanOrInfVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isIntegerOrNaOrNanOrInfVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isIntegerOrNaOrNanOrInfVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isIntegerOrNaOrNanOrInfVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isIntegerOrNaOrNanOrInfVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isIntegerOrNaOrNanOrInfVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isIntegerOrNaOrNanOrInfVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
