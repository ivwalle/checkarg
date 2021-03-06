#' Wrapper for the checkarg function, using specific parameter settings.
#'
#' This function can be used in 3 ways:\enumerate{
#'   \item Return TRUE or FALSE depending on whether the argument checks are
#'      passed. This is suitable e.g. for if statements that take further action
#'      if the argument does not pass the checks.\cr
#'   \item Throw an exception if the argument does not pass the checks. This is
#'      suitable e.g. when no further action needs to be taken other than
#'      throwing an exception if the argument does not pass the checks.\cr
#'   \item Same as (2) but by supplying a default value, a default can be assigned
#'      in a single statement, when the argument is NULL. The checks are still
#'      performed on the returned value, and an exception is thrown when not
#'      passed.\cr
#' }
#'
#' Actual call to checkarg: checkarg(argument, "N", default = default, stopIfNot = stopIfNot, nullAllowed = TRUE, n = 1, zeroAllowed = FALSE, negativeAllowed = FALSE, positiveAllowed = FALSE, nonIntegerAllowed = TRUE, naAllowed = TRUE, nanAllowed = TRUE, infAllowed = FALSE, message = message, argumentName = argumentName)
#'
#' @param argument See checkarg function.
#' @param default See checkarg function.
#' @param stopIfNot See checkarg function.
#' @param message See checkarg function.
#' @param argumentName See checkarg function.
#'
#' @examples
#' isNaOrNanScalarOrNull(NA)
#'    # returns TRUE (argument is valid)
#' isNaOrNanScalarOrNull("X")
#'    # returns FALSE (argument is invalid)
#' #isNaOrNanScalarOrNull("X", stopIfNot = TRUE)
#'    # throws exception with message defined by message and argumentName parameters
#' isNaOrNanScalarOrNull(NA, default = NaN)
#'    # returns NA (the argument, rather than the default, since it is not NULL)
#' #isNaOrNanScalarOrNull("X", default = NaN)
#'    # throws exception with message defined by message and argumentName parameters
#' isNaOrNanScalarOrNull(NULL, default = NaN)
#'    # returns NaN (the default, rather than the argument, since it is NULL)
#'
#' @return See checkarg function.
#'
#' @export isNaOrNanScalarOrNull
isNaOrNanScalarOrNull <- function(argument, default = NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL) {
  
  checkarg(argument, "N", default = default, stopIfNot = stopIfNot, nullAllowed = TRUE, n = 1, zeroAllowed = FALSE, negativeAllowed = FALSE, positiveAllowed = FALSE, nonIntegerAllowed = TRUE, naAllowed = TRUE, nanAllowed = TRUE, infAllowed = FALSE, message = message, argumentName = argumentName)
}
