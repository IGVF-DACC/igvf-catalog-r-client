#' Create a new TfBinding
#'
#' @description
#' TfBinding Class
#'
#' @docType class
#' @title TfBinding
#' @description TfBinding Class
#' @format An \code{R6Class} generator object
#' @field motif  character
#' @field count  numeric
#' @field cell_types  list(\link{CellTypes2})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TfBinding <- R6::R6Class(
  "TfBinding",
  public = list(
    `motif` = NULL,
    `count` = NULL,
    `cell_types` = NULL,

    #' @description
    #' Initialize a new TfBinding class.
    #'
    #' @param motif motif
    #' @param count count
    #' @param cell_types cell_types
    #' @param ... Other optional arguments.
    initialize = function(`motif`, `count`, `cell_types`, ...) {
      if (!missing(`motif`)) {
        if (!(is.character(`motif`) && length(`motif`) == 1)) {
          stop(paste("Error! Invalid data for `motif`. Must be a string:", `motif`))
        }
        self$`motif` <- `motif`
      }
      if (!missing(`count`)) {
        self$`count` <- `count`
      }
      if (!missing(`cell_types`)) {
        stopifnot(is.vector(`cell_types`), length(`cell_types`) != 0)
        sapply(`cell_types`, function(x) stopifnot(R6::is.R6(x)))
        self$`cell_types` <- `cell_types`
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
    #' @return TfBinding as a base R list.
    #' @examples
    #' # convert array of TfBinding (x) to a data frame
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
    #' Convert TfBinding to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TfBindingObject <- list()
      if (!is.null(self$`motif`)) {
        TfBindingObject[["motif"]] <-
          self$`motif`
      }
      if (!is.null(self$`count`)) {
        TfBindingObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`cell_types`)) {
        TfBindingObject[["cell_types"]] <-
          lapply(self$`cell_types`, function(x) x$toSimpleType())
      }
      return(TfBindingObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TfBinding
    #'
    #' @param input_json the JSON input
    #' @return the instance of TfBinding
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`motif`)) {
        self$`motif` <- this_object$`motif`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`cell_types`)) {
        self$`cell_types` <- ApiClient$new()$deserializeObj(this_object$`cell_types`, "array[CellTypes2]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TfBinding in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TfBinding
    #'
    #' @param input_json the JSON input
    #' @return the instance of TfBinding
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`motif` <- this_object$`motif`
      self$`count` <- this_object$`count`
      self$`cell_types` <- ApiClient$new()$deserializeObj(this_object$`cell_types`, "array[CellTypes2]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TfBinding and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `motif`
      if (!is.null(input_json$`motif`)) {
        if (!(is.character(input_json$`motif`) && length(input_json$`motif`) == 1)) {
          stop(paste("Error! Invalid data for `motif`. Must be a string:", input_json$`motif`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TfBinding: the required field `motif` is missing."))
      }
      # check the required field `count`
      if (!is.null(input_json$`count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TfBinding: the required field `count` is missing."))
      }
      # check the required field `cell_types`
      if (!is.null(input_json$`cell_types`)) {
        stopifnot(is.vector(input_json$`cell_types`), length(input_json$`cell_types`) != 0)
        tmp <- sapply(input_json$`cell_types`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TfBinding: the required field `cell_types` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TfBinding
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `motif` is null
      if (is.null(self$`motif`)) {
        return(FALSE)
      }

      # check if the required `count` is null
      if (is.null(self$`count`)) {
        return(FALSE)
      }

      # check if the required `cell_types` is null
      if (is.null(self$`cell_types`)) {
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
      # check if the required `motif` is null
      if (is.null(self$`motif`)) {
        invalid_fields["motif"] <- "Non-nullable required field `motif` cannot be null."
      }

      # check if the required `count` is null
      if (is.null(self$`count`)) {
        invalid_fields["count"] <- "Non-nullable required field `count` cannot be null."
      }

      # check if the required `cell_types` is null
      if (is.null(self$`cell_types`)) {
        invalid_fields["cell_types"] <- "Non-nullable required field `cell_types` cannot be null."
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
# TfBinding$unlock()
#
## Below is an example to define the print function
# TfBinding$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TfBinding$lock()

