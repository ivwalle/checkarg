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
#' Actual call to checkarg: checkarg(argument, "B", default = default, stopIfNot = stopIfNot, nullAllowed = TRUE, n = NA, naAllowed = FALSE, message = message, argumentName = argumentName)
#'
#' @param argument See checkarg function.
#' @param default See checkarg function.
#' @param stopIfNot See checkarg function.
#' @param n See checkarg function.
#' @param message See checkarg function.
#' @param argumentName See checkarg function.
#'
#' @examples
#' isBooleanVectorOrNull(FALSE)
#'    # returns TRUE (argument is valid)
#' isBooleanVectorOrNull("X")
#'    # returns FALSE (argument is invalid)
#' #isBooleanVectorOrNull("X", stopIfNot = TRUE)
#'    # throws exception with message defined by message and argumentName parameters
#' isBooleanVectorOrNull(FALSE, default = TRUE)
#'    # returns FALSE (the argument, rather than the default, since it is not NULL)
#' #isBooleanVectorOrNull("X", default = TRUE)
#'    # throws exception with message defined by message and argumentName parameters
#' isBooleanVectorOrNull(NULL, default = TRUE)
#'    # returns TRUE (the default, rather than the argument, since it is NULL)
#'
#' @return See checkarg function.
#'
#' @export isBooleanVectorOrNull
isBooleanVectorOrNull <- function(argument, default = NULL, stopIfNot = FALSE, n = NA, message = NULL, argumentName = NULL) {
  
  checkarg(argument, "B", default = default, stopIfNot = stopIfNot, nullAllowed = TRUE, n = NA, naAllowed = FALSE, message = message, argumentName = argumentName)
}
