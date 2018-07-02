#' Perform a basic check on the type of an argument and its value(s) and set a
#' default value if applicable.
#'
#' This function is the main function that all isXxx functions are wrappers
#' around, each with specific parameter settings. It can be used in 3 ways:\enumerate{
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
#'  }
#'
#' @param argument Argument to check.
#' @param content Required content of argument, case-insensitive. Either
#'   "BOOLEAN" (short: "B") for an argument of primitive type logical, "NUMBER"
#'   (short: "N") for an argument of primitive type numeric, or "STRING" (short:
#'   "S") for an argument of primitive type character.
#' @param default If not NULL and the argument is NULL, the default value is
#'   returned instead of the result of the content checks (TRUE or FALSE).
#'   Parameter stopIfNot must be set to TRUE in this case. The content of the
#'   default value is not checked.
#' @param stopIfNot If TRUE and the argument checks fail, an exception is be
#'   thrown. Must be set to TRUE if parameter default is not NULL.
#'
#' @param nullAllowed If TRUE, argument may be NULL.
#' @param n Number of elements the argument must have. Default: n = 1, i.e. a
#'   scalar value is expected. If NA, any length is allowed. If the argument has
#'   zero elements and either n = 0 or n = NA, only the primitive type is
#'   checked and no other checks on content are applied.
#' @param naAllowed If TRUE, NA value(s) are allowed. If FALSE, NaN value(s),
#'   which also test true for is.na, are ignored and can be further constrained
#'   by nanAllowed.
#'
#' @param nanAllowed If TRUE, NaN value(s) are allowed.
#' @param infAllowed If TRUE, Inf value(s) are allowed.
#' @param nonIntegerAllowed If TRUE, non-integer value(s) are allowed. If
#'   FALSE, NA, NaN and Inf value(s), which are not integers, are ignored and
#'   can instead be constrained further by respectively naAllowed, nanAllowed
#'   and infAllowed.
#' @param positiveAllowed If TRUE, positive value(s) are allowed.
#' @param negativeAllowed If TRUE, negative value(s) are allowed.
#' @param zeroAllowed If TRUE, zero value(s) are allowed.
#'
#' @param emptyStringAllowed If TRUE, empty string value(s) are allowed.
#'
#' @param message The message provided when an exception is thrown. The
#'   first instance of \\1 is replaced with '\'argumentName\' ', if the latter
#'   is not empty. If NULL, the same default message is used.
#' @param argumentName The name of the variable to be used in the exception
#'   message. If NULL, the same default argumentName is used.
#'
#' @return If no default is provided, i.e. if the default parameter is not
#'   null): TRUE is returned if the argument passes the checks and otherwise
#'   FALSE. If a default is provided, the default is returned in case the
#'   argument is null and otherwise the argument is returned.
#'
#' @examples
#' checkarg(TRUE, "BOOLEAN")
#'   # returns TRUE (argument is valid)
#' checkarg(FALSE, "BOOLEAN")
#'   # returns TRUE (argument is valid)
#' checkarg(1, "BOOLEAN")
#'   # returns FALSE (argument is invalid)
#' checkarg("Y", "BOOLEAN")
#'   # returns FALSE (argument is invalid)
#' #checkarg("Y", "BOOLEAN", stopIfNot = TRUE)
#'   # throws exception with message defined by message and argumentName parameters
#'
#' checkarg(1, "NUMBER", default = 0)
#'   # returns 1 (argument is returned if provided, i.e. not NULL, and valid)
#' checkarg(NULL, "NUMBER", default = 0)
#'   # returns 0 (default is returned since argument is not provided)
#' checkarg(NULL, "NUMBER", default = 0)
#'   # returns 0 (default is returned since argument is not provided)
#' checkarg(NA, "NUMBER")
#'   # returns FALSE (NA values are not allowed by default)
#' checkarg(NA, "NUMBER", naAllowed = TRUE)
#'   # returns TRUE (NA values are allowed)
#' checkarg(c(0, 1), "NUMBER")
#'   # returns FALSE (scalar value expected by default)
#' checkarg(c(0, 1), "NUMBER", n = NA)
#'   # returns TRUE (any length vector allowed)
#'
#' checkarg("X", "STRING")
#'   # returns TRUE (argument is valid)
#' checkarg(TRUE, "STRING")
#'   # returns FALSE (argument is invalid)
#' checkarg(1, "STRING")
#'   # returns FALSE (argument is invalid)
#'
#' @export checkarg
checkarg <- function(argument, content, default = NULL, stopIfNot = FALSE,
                     nullAllowed = FALSE, n = 1, naAllowed = FALSE,
                     nanAllowed = TRUE, infAllowed = TRUE,
                     nonIntegerAllowed = TRUE, negativeAllowed = TRUE,
                     zeroAllowed = TRUE, positiveAllowed = TRUE,
                     emptyStringAllowed = TRUE,
                     message = "Argument \\1has invalid value",
                     argumentName = "") {
  # Parameters


  # Consistency
  if (is.null(content) || !is.character(content) || length(content) != 1 || nchar(content) > 7) {
    stop("Invalid value for \"content\": must be \"boolean\" (\"b\"), \"number\" (\"n\") or \"string\" (\"s\"), case-insensitive")
  } else {
    content <- toupper(content)
    if (!(content == "B" || content == "N" || content == "S" || content == "BOOLEAN" || content == "NUMBER" || content == "STRING")) {
      stop("Invalid value for \"content\": must be \"boolean\" (\"b\"), \"number\" (\"n\") or \"string\" (\"s\"), case-insensitive")
    }
    content <- substr(content, 1, 1)
  }
  if (is.null(nullAllowed)) {
	  allowNull <- FALSE
  } else if (!is.logical(nullAllowed) || length(nullAllowed) != 1 || is.na(nullAllowed)) {
    stop("Invalid value for \"nullAllowed\": must be TRUE or FALSE")
  }
  if (is.null(n)) {
    n <- 1
  } else if (length(n) != 1 || (!is.na(n) && (!is.numeric(n) || n < 0 || is.infinite(n) || is.nan(n) || n %% 1 != 0))) {
    stop("Invalid value for \"n\": must be a positive integer, including zero, or NA")
  }
  if (is.null(naAllowed)) {
    naAllowed <- FALSE
  } else if (!is.logical(naAllowed) || length(naAllowed) != 1 || is.na(naAllowed)) {
    stop("Invalid value for \"naAllowed\": must be TRUE or FALSE")
  }
  if (is.null(message)) {
    message <- "Argument \\1has invalid value"
  }
  if (is.null(argumentName)) {
    argumentName <- ""
  }


  # Check general parameters
  returnValueIfPassed <- TRUE
  if (!is.null(default)) {
    # default value is provided; stopIfNot parameter is considered TRUE
    stopIfNot <- TRUE
    if (is.null(argument)) {
      # argument is null -> set argument to default
      argument <- default
    }
    # return argument/default instead of TRUE or FALSE
    returnValueIfPassed <- argument
  }
  if (is.null(argument)) {
    if (!nullAllowed) {
      return(checkargFailedHandler(default, stopIfNot, message, argumentName))
    } else {
      # argument is null and null is allowed -> no further checks required
      return(returnValueIfPassed)
    }
  }
  if (!is.na(n) && length(argument) != n) {
    # argument has wrong length
    return(checkargFailedHandler(default, stopIfNot, message, argumentName))
  }
  if (!naAllowed && any(is.na(argument) & !is.nan(argument))) {
    # argument has NA and NA not allowed
    return(checkargFailedHandler(default, stopIfNot, message, argumentName))
  }


  # Check content-specific parameters
  if (content == "B") {
    # Boolean value(s)

    # Perform content-specific checks
    if (!is.logical(argument)) {
      return(checkargFailedHandler(default, stopIfNot, message, argumentName))
    }
    if (length(argument) == 0) {
      # empty vector, passes all checks
      return(returnValueIfPassed)
    }

  } else if (content == "N") {
    # Number(s)

    # Check content-specific parameters
    if (is.null(nanAllowed)) {
      nanAllowed <- TRUE
    } else if (!is.logical(nanAllowed) || length(nanAllowed) != 1 || is.na(nanAllowed)) {
      stop("Invalid value for \"nanAllowed\": must be TRUE or FALSE")
    }
    if (is.null(infAllowed)) {
      infAllowed <- TRUE
    } else if (!is.logical(infAllowed) || length(infAllowed) != 1 || is.na(infAllowed)) {
      stop("Invalid argument for variable \"infAllowed\": must be TRUE or FALSE")
    }
    if (is.null(positiveAllowed)) {
      positiveAllowed <- TRUE
    } else if (!is.logical(positiveAllowed) || length(positiveAllowed) != 1 || is.na(positiveAllowed)) {
      stop("Invalid value for \"positiveAllowed\": must be TRUE or FALSE")
    }
    if (is.null(negativeAllowed)) {
      negativeAllowed <- TRUE
    } else if (!is.logical(negativeAllowed) || length(negativeAllowed) != 1 || is.na(negativeAllowed)) {
      stop("Invalid value for \"negativeAllowed\": must be TRUE or FALSE")
    }
    if (is.null(zeroAllowed)) {
      zeroAllowed <- TRUE
    } else if (!is.logical(zeroAllowed) || length(zeroAllowed) != 1 || is.na(zeroAllowed)) {
      stop("Invalid value for \"zeroAllowed\": must be TRUE or FALSE")
    }
    if (is.null(nonIntegerAllowed)) {
      nonIntegerAllowed <- TRUE
    } else if (!is.logical(nonIntegerAllowed) || length(nonIntegerAllowed) != 1 || is.na(nonIntegerAllowed)) {
      stop("Invalid value for \"nonIntegerAllowed\": must be TRUE or FALSE")
    }
    if (!negativeAllowed && !positiveAllowed) {
      if (!nonIntegerAllowed) {
        warning("Inconsistent parameter combination: nonIntegerAllowed=FALSE not applied since negativeAllowed=FALSE and positiveAllowed=FALSE")
      }
      if (infAllowed) {
        warning("Inconsistent parameter combination: infAllowed=TRUE not applied since negativeAllowed=FALSE and positiveAllowed=FALSE")
      }
    }

    # Perform content-specific checks, non-number values
    if (!is.numeric(argument)) {
      if (naAllowed && length(argument) > 0 && all(is.na(argument) & !is.nan(argument))) {
        # special case: non-empty non-numeric vector of all NA -> still accepted
      } else {
        return(checkargFailedHandler(default, stopIfNot, message, argumentName))
      }
    }
    if (length(argument) == 0) {
      # empty vector, passes all checks
      return(returnValueIfPassed)
    }
    if (!nanAllowed && any(is.nan(argument))) {
      return(checkargFailedHandler(default, stopIfNot, message, argumentName))
    }
    if (!infAllowed && any(is.infinite(argument))) {
      return(checkargFailedHandler(default, stopIfNot, message, argumentName))
    }

    # Perform content-specific checks, number values
    isNotAllNaOrNan <- !all(is.na(argument))
    if (negativeAllowed) {
      if (positiveAllowed) {
        if (zeroAllowed) {
          # nothing to check
        } else {
          if (isNotAllNaOrNan && any(argument == 0)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        }
      } else {
        if (zeroAllowed) {
          if (isNotAllNaOrNan && any(argument > 0)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        } else {
          if (isNotAllNaOrNan && any(argument >= 0)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        }
      }
    } else {
      if (positiveAllowed) {
        if (zeroAllowed) {
          if (isNotAllNaOrNan && any(argument < 0)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        } else {
          if (isNotAllNaOrNan && any(argument <= 0)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        }
      } else {
        if (zeroAllowed) {
          if (isNotAllNaOrNan && any(argument < 0 | argument > 0)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        } else {
          if (isNotAllNaOrNan && any(argument > -Inf)) {
            return(checkargFailedHandler(default, stopIfNot, message, argumentName))
          }
        }
      }
    }
    if (nonIntegerAllowed) {
      # nothing to do
    } else {
      if ((negativeAllowed || positiveAllowed) && isNotAllNaOrNan && any(argument %% 1 != 0 & !is.na(argument) & !is.infinite(argument))) {
        return(checkargFailedHandler(default, stopIfNot, message, argumentName))
      }
    }
  } else if (content == "S") {
    # String(s)

    # Check content-specific parameters
    if (is.null(emptyStringAllowed)) {
      emptyStringAllowed <- FALSE
    } else if (!is.logical(emptyStringAllowed) || length(emptyStringAllowed) != 1 || is.na(emptyStringAllowed)) {
      stop("Invalid value for \"emptyStringAllowed\": must be TRUE or FALSE")
    }

    # Perform content-specific checks
    if (!is.character(argument)) {
      if (naAllowed && length(argument) > 0 && all(is.na(argument) & !is.nan(argument))) {
        # special case: non-empty non-character vector of all NA -> still accepted
      } else {
        return(checkargFailedHandler(default, stopIfNot, message, argumentName))
      }
    }
    if (length(argument) == 0) {
      # empty vector, passes all checks
      return(returnValueIfPassed)
    }
    if (!emptyStringAllowed) {
      if (naAllowed) {
        # check only amoing non-NA values for empty strings
        if (any(nchar(argument[!is.na(argument)]) == 0)) {
          return(checkargFailedHandler(default, stopIfNot, message, argumentName))
        }
      } else if (any(nchar(argument) == 0)) {
        # check all values for empty strings
        return(checkargFailedHandler(default, stopIfNot, message, argumentName))
      }
    }
  }

  # all checks passed and not returned yet
  return(returnValueIfPassed)
}
