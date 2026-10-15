#' Create a new Biosamples
#'
#' @description
#' Biosamples Class
#'
#' @docType class
#' @title Biosamples
#' @description Biosamples Class
#' @format An \code{R6Class} generator object
#' @field total  numeric
#' @field methods_and_contexts  list(\link{MethodsAndContexts})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Biosamples <- R6::R6Class(
  "Biosamples",
  public = list(
    `total` = NULL,
    `methods_and_contexts` = NULL,

    #' @description
    #' Initialize a new Biosamples class.
    #'
    #' @param total total
    #' @param methods_and_contexts methods_and_contexts
    #' @param ... Other optional arguments.
    initialize = function(`total`, `methods_and_contexts`, ...) {
      if (!missing(`total`)) {
        self$`total` <- `total`
      }
      if (!missing(`methods_and_contexts`)) {
        stopifnot(is.vector(`methods_and_contexts`), length(`methods_and_contexts`) != 0)
        sapply(`methods_and_contexts`, function(x) stopifnot(R6::is.R6(x)))
        self$`methods_and_contexts` <- `methods_and_contexts`
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
    #' @return Biosamples as a base R list.
    #' @examples
    #' # convert array of Biosamples (x) to a data frame
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
    #' Convert Biosamples to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiosamplesObject <- list()
      if (!is.null(self$`total`)) {
        BiosamplesObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`methods_and_contexts`)) {
        BiosamplesObject[["methods_and_contexts"]] <-
          lapply(self$`methods_and_contexts`, function(x) x$toSimpleType())
      }
      return(BiosamplesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Biosamples
    #'
    #' @param input_json the JSON input
    #' @return the instance of Biosamples
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`methods_and_contexts`)) {
        self$`methods_and_contexts` <- ApiClient$new()$deserializeObj(this_object$`methods_and_contexts`, "array[MethodsAndContexts]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Biosamples in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Biosamples
    #'
    #' @param input_json the JSON input
    #' @return the instance of Biosamples
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total` <- this_object$`total`
      self$`methods_and_contexts` <- ApiClient$new()$deserializeObj(this_object$`methods_and_contexts`, "array[MethodsAndContexts]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Biosamples and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Biosamples: the required field `total` is missing."))
      }
      # check the required field `methods_and_contexts`
      if (!is.null(input_json$`methods_and_contexts`)) {
        stopifnot(is.vector(input_json$`methods_and_contexts`), length(input_json$`methods_and_contexts`) != 0)
        tmp <- sapply(input_json$`methods_and_contexts`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Biosamples: the required field `methods_and_contexts` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Biosamples
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      # check if the required `methods_and_contexts` is null
      if (is.null(self$`methods_and_contexts`)) {
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
      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `methods_and_contexts` is null
      if (is.null(self$`methods_and_contexts`)) {
        invalid_fields["methods_and_contexts"] <- "Non-nullable required field `methods_and_contexts` cannot be null."
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
# Biosamples$unlock()
#
## Below is an example to define the print function
# Biosamples$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Biosamples$lock()

