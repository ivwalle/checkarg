#' Helper function for the checkarg function, called in cases the argument does
#' not pass the check. Throws an exception if stopIfNot is TRUE.
#'
#' @param default See checkarg function.
#' @param stopIfNot See checkarg function.
#' @param messagePattern See checkarg function.
#' @param argumentName See checkarg function.
#'
#' @return FALSE.
checkargFailedHandler <- function(default, stopIfNot,
                                  messagePattern, argumentName) {
  # Packages


  # Parameters


  # Consistency
  if (!is.logical(stopIfNot) || length(stopIfNot) != 1 || is.na(stopIfNot)) {
    stop("Invalid value for argument \"stopIfNot\": must be TRUE or FALSE")
  }
  if (!is.character(messagePattern) || length(messagePattern) != 1 && is.na(argumentName)) {
    stop("Invalid value for argument \"messagePattern\": must be a character vector containing a single string")
  }
  if (!is.character(argumentName) || length(argumentName) != 1 || is.na(argumentName)) {
    stop("Invalid value for argument \"argumentName\": must be a character vector containing a single string")
  }


  # Create output
  if (stopIfNot) {
    if (argumentName == "") {
      stop(sub("\\\\1", "", messagePattern))
    } else {
      stop(sub("\\\\1", paste("\"", argumentName, "\" ", sep = ""), messagePattern))
    }
  }
  return(FALSE)
}
