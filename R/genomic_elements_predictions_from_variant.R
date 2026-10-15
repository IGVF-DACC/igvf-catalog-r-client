#' Create a new GenomicElementsPredictionsFromVariant
#'
#' @description
#' GenomicElementsPredictionsFromVariant Class
#'
#' @docType class
#' @title GenomicElementsPredictionsFromVariant
#' @description GenomicElementsPredictionsFromVariant Class
#' @format An \code{R6Class} generator object
#' @field sequence variant  \link{VariantBasic}
#' @field predictions  \link{Predictions}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElementsPredictionsFromVariant <- R6::R6Class(
  "GenomicElementsPredictionsFromVariant",
  public = list(
    `sequence variant` = NULL,
    `predictions` = NULL,

    #' @description
    #' Initialize a new GenomicElementsPredictionsFromVariant class.
    #'
    #' @param sequence variant sequence variant
    #' @param predictions predictions
    #' @param ... Other optional arguments.
    initialize = function(`sequence variant`, `predictions`, ...) {
      if (!missing(`sequence variant`)) {
        stopifnot(R6::is.R6(`sequence variant`))
        self$`sequence variant` <- `sequence variant`
      }
      if (!missing(`predictions`)) {
        stopifnot(R6::is.R6(`predictions`))
        self$`predictions` <- `predictions`
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
    #' @return GenomicElementsPredictionsFromVariant as a base R list.
    #' @examples
    #' # convert array of GenomicElementsPredictionsFromVariant (x) to a data frame
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
    #' Convert GenomicElementsPredictionsFromVariant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElementsPredictionsFromVariantObject <- list()
      if (!is.null(self$`sequence variant`)) {
        GenomicElementsPredictionsFromVariantObject[["sequence variant"]] <-
          self$`sequence variant`$toSimpleType()
      }
      if (!is.null(self$`predictions`)) {
        GenomicElementsPredictionsFromVariantObject[["predictions"]] <-
          self$`predictions`$toSimpleType()
      }
      return(GenomicElementsPredictionsFromVariantObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsPredictionsFromVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsPredictionsFromVariant
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sequence variant`)) {
        `sequence variant_object` <- VariantBasic$new()
        `sequence variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence variant` <- `sequence variant_object`
      }
      if (!is.null(this_object$`predictions`)) {
        `predictions_object` <- Predictions$new()
        `predictions_object`$fromJSON(jsonlite::toJSON(this_object$`predictions`, auto_unbox = TRUE, digits = NA))
        self$`predictions` <- `predictions_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElementsPredictionsFromVariant in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsPredictionsFromVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsPredictionsFromVariant
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sequence variant` <- VariantBasic$new()$fromJSON(jsonlite::toJSON(this_object$`sequence variant`, auto_unbox = TRUE, digits = NA))
      self$`predictions` <- Predictions$new()$fromJSON(jsonlite::toJSON(this_object$`predictions`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElementsPredictionsFromVariant and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `sequence variant`
      if (!is.null(input_json$`sequence variant`)) {
        stopifnot(R6::is.R6(input_json$`sequence variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsPredictionsFromVariant: the required field `sequence variant` is missing."))
      }
      # check the required field `predictions`
      if (!is.null(input_json$`predictions`)) {
        stopifnot(R6::is.R6(input_json$`predictions`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsPredictionsFromVariant: the required field `predictions` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElementsPredictionsFromVariant
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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
# GenomicElementsPredictionsFromVariant$unlock()
#
## Below is an example to define the print function
# GenomicElementsPredictionsFromVariant$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElementsPredictionsFromVariant$lock()

