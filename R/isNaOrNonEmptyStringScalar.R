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
#' Actual call to checkarg: checkarg(argument, "S", default = default, stopIfNot = stopIfNot, nullAllowed = FALSE, n = 1, naAllowed = TRUE, emptyStringAllowed = FALSE, message = message, argumentName = argumentName)
#'
#' @param argument See checkarg function.
#' @param default See checkarg function.
#' @param stopIfNot See checkarg function.
#' @param message See checkarg function.
#' @param argumentName See checkarg function.
#'
#' @examples
#' isNaOrNonEmptyStringScalar("X")
#'    # returns TRUE (argument is valid)
#' isNaOrNonEmptyStringScalar(1)
#'    # returns FALSE (argument is invalid)
#' #isNaOrNonEmptyStringScalar(1, stopIfNot = TRUE)
#'    # throws exception with message defined by message and argumentName parameters
#' isNaOrNonEmptyStringScalar("X", default = "Y")
#'    # returns "X" (the argument, rather than the default, since it is not NULL)
#' #isNaOrNonEmptyStringScalar(1, default = "Y")
#'    # throws exception with message defined by message and argumentName parameters
#' isNaOrNonEmptyStringScalar(NULL, default = "Y")
#'    # returns "Y" (the default, rather than the argument, since it is NULL)
#'
#' @return See checkarg function.
#'
#' @export isNaOrNonEmptyStringScalar
isNaOrNonEmptyStringScalar <- function(argument, default = NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL) {
  
  checkarg(argument, "S", default = default, stopIfNot = stopIfNot, nullAllowed = FALSE, n = 1, naAllowed = TRUE, emptyStringAllowed = FALSE, message = message, argumentName = argumentName)
}
