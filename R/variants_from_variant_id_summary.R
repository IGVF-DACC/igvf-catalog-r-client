#' Create a new VariantsFromVariantIDSummary
#'
#' @description
#' VariantsFromVariantIDSummary Class
#'
#' @docType class
#' @title VariantsFromVariantIDSummary
#' @description VariantsFromVariantIDSummary Class
#' @format An \code{R6Class} generator object
#' @field ancestry  character
#' @field d_prime  numeric [optional]
#' @field r2  numeric [optional]
#' @field positive_corr  character [optional]
#' @field sequence variant  \link{PhenotypesFromVariantsVariant}
#' @field predictions  \link{Predictions2}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantsFromVariantIDSummary <- R6::R6Class(
  "VariantsFromVariantIDSummary",
  public = list(
    `ancestry` = NULL,
    `d_prime` = NULL,
    `r2` = NULL,
    `positive_corr` = NULL,
    `sequence variant` = NULL,
    `predictions` = NULL,

    #' @description
    #' Initialize a new VariantsFromVariantIDSummary class.
    #'
    #' @param ancestry ancestry
    #' @param sequence variant sequence variant
    #' @param predictions predictions
    #' @param d_prime d_prime
    #' @param r2 r2
    #' @param positive_corr positive_corr
    #' @param ... Other optional arguments.
    initialize = function(`ancestry`, `sequence variant`, `predictions`, `d_prime` = NULL, `r2` = NULL, `positive_corr` = NULL, ...) {
      if (!missing(`ancestry`)) {
        if (!(is.character(`ancestry`) && length(`ancestry`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry`. Must be a string:", `ancestry`))
        }
        self$`ancestry` <- `ancestry`
      }
      if (!missing(`sequence variant`)) {
        stopifnot(R6::is.R6(`sequence variant`))
        self$`sequence variant` <- `sequence variant`
      }
      if (!missing(`predictions`)) {
        stopifnot(R6::is.R6(`predictions`))
        self$`predictions` <- `predictions`
      }
      if (!is.null(`d_prime`)) {
        self$`d_prime` <- `d_prime`
      }
      if (!is.null(`r2`)) {
        self$`r2` <- `r2`
      }
      if (!is.null(`positive_corr`)) {
        if (!(is.logical(`positive_corr`) && length(`positive_corr`) == 1)) {
          stop(paste("Error! Invalid data for `positive_corr`. Must be a boolean:", `positive_corr`))
        }
        self$`positive_corr` <- `positive_corr`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return VariantsFromVariantIDSummary as a base R list.
    #' @examples
    #' # convert array of VariantsFromVariantIDSummary (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert VariantsFromVariantIDSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantsFromVariantIDSummaryObject <- list()
      if (!is.null(self$`ancestry`)) {
        VariantsFromVariantIDSummaryObject[["ancestry"]] <-
          self$`ancestry`
      }
      if (!is.null(self$`d_prime`)) {
        VariantsFromVariantIDSummaryObject[["d_prime"]] <-
          self$`d_prime`
      }
      if (!is.null(self$`r2`)) {
        VariantsFromVariantIDSummaryObject[["r2"]] <-
          self$`r2`
      }
      if (!is.null(self$`positive_corr`)) {
        VariantsFromVariantIDSummaryObject[["positive_corr"]] <-
          self$`positive_corr`
      }
      if (!is.null(self$`sequence variant`)) {
        VariantsFromVariantIDSummaryObject[["sequence variant"]] <-
          self$`sequence variant`$toSimpleType()
      }
      if (!is.null(self$`predictions`)) {
        VariantsFromVariantIDSummaryObject[["predictions"]] <-
          self$`predictions`$toSimpleType()
      }
      return(VariantsFromVariantIDSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsFromVariantIDSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantsFromVariantIDSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ancestry`)) {
        self$`ancestry` <- this_object$`ancestry`
      }
      if (!is.null(this_object$`d_prime`)) {
        self$`d_prime` <- this_object$`d_prime`
      }
      if (!is.null(this_object$`r2`)) {
        self$`r2` <- this_object$`r2`
      }
      if (!is.null(this_object$`positive_corr`)) {
        self$`positive_corr` <- this_object$`positive_corr`
      }
      if (!is.null(this_object$`sequence variant`)) {
        `sequence variant_object` <- PhenotypesFromVariantsVariant$new()
        `sequence variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence variant` <- `sequence variant_object`
      }
      if (!is.null(this_object$`predictions`)) {
        `predictions_object` <- Predictions2$new()
        `predictions_object`$fromJSON(jsonlite::toJSON(this_object$`predictions`, auto_unbox = TRUE, digits = NA))
        self$`predictions` <- `predictions_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VariantsFromVariantIDSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsFromVariantIDSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantsFromVariantIDSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ancestry` <- this_object$`ancestry`
      self$`d_prime` <- this_object$`d_prime`
      self$`r2` <- this_object$`r2`
      self$`positive_corr` <- this_object$`positive_corr`
      self$`sequence variant` <- PhenotypesFromVariantsVariant$new()$fromJSON(jsonlite::toJSON(this_object$`sequence variant`, auto_unbox = TRUE, digits = NA))
      self$`predictions` <- Predictions2$new()$fromJSON(jsonlite::toJSON(this_object$`predictions`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to VariantsFromVariantIDSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ancestry`
      if (!is.null(input_json$`ancestry`)) {
        if (!(is.character(input_json$`ancestry`) && length(input_json$`ancestry`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry`. Must be a string:", input_json$`ancestry`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantIDSummary: the required field `ancestry` is missing."))
      }
      # check the required field `sequence variant`
      if (!is.null(input_json$`sequence variant`)) {
        stopifnot(R6::is.R6(input_json$`sequence variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantIDSummary: the required field `sequence variant` is missing."))
      }
      # check the required field `predictions`
      if (!is.null(input_json$`predictions`)) {
        stopifnot(R6::is.R6(input_json$`predictions`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantIDSummary: the required field `predictions` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VariantsFromVariantIDSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ancestry` is null
      if (is.null(self$`ancestry`)) {
        return(FALSE)
      }

      # check if the required `sequence variant` is null
      if (is.null(self$`sequence variant`)) {
        return(FALSE)
      }

      # check if the required `predictions` is null
      if (is.null(self$`predictions`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `ancestry` is null
      if (is.null(self$`ancestry`)) {
        invalid_fields["ancestry"] <- "Non-nullable required field `ancestry` cannot be null."
      }

      # check if the required `sequence variant` is null
      if (is.null(self$`sequence variant`)) {
        invalid_fields["sequence variant"] <- "Non-nullable required field `sequence variant` cannot be null."
      }

      # check if the required `predictions` is null
      if (is.null(self$`predictions`)) {
        invalid_fields["predictions"] <- "Non-nullable required field `predictions` cannot be null."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# VariantsFromVariantIDSummary$unlock()
#
## Below is an example to define the print function
# VariantsFromVariantIDSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VariantsFromVariantIDSummary$lock()

