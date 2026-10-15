#' Create a new Predictions
#'
#' @description
#' Predictions Class
#'
#' @docType class
#' @title Predictions
#' @description Predictions Class
#' @format An \code{R6Class} generator object
#' @field cell_types  list(character)
#' @field genes  list(\link{Genes})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Predictions <- R6::R6Class(
  "Predictions",
  public = list(
    `cell_types` = NULL,
    `genes` = NULL,

    #' @description
    #' Initialize a new Predictions class.
    #'
    #' @param cell_types cell_types
    #' @param genes genes
    #' @param ... Other optional arguments.
    initialize = function(`cell_types`, `genes`, ...) {
      if (!missing(`cell_types`)) {
        stopifnot(is.vector(`cell_types`), length(`cell_types`) != 0)
        sapply(`cell_types`, function(x) stopifnot(is.character(x)))
        self$`cell_types` <- `cell_types`
      }
      if (!missing(`genes`)) {
        stopifnot(is.vector(`genes`), length(`genes`) != 0)
        sapply(`genes`, function(x) stopifnot(R6::is.R6(x)))
        self$`genes` <- `genes`
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
    #' @return Predictions as a base R list.
    #' @examples
    #' # convert array of Predictions (x) to a data frame
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
    #' Convert Predictions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PredictionsObject <- list()
      if (!is.null(self$`cell_types`)) {
        PredictionsObject[["cell_types"]] <-
          self$`cell_types`
      }
      if (!is.null(self$`genes`)) {
        PredictionsObject[["genes"]] <-
          lapply(self$`genes`, function(x) x$toSimpleType())
      }
      return(PredictionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Predictions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Predictions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cell_types`)) {
        self$`cell_types` <- ApiClient$new()$deserializeObj(this_object$`cell_types`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`genes`)) {
        self$`genes` <- ApiClient$new()$deserializeObj(this_object$`genes`, "array[Genes]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Predictions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Predictions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Predictions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cell_types` <- ApiClient$new()$deserializeObj(this_object$`cell_types`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`genes` <- ApiClient$new()$deserializeObj(this_object$`genes`, "array[Genes]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Predictions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cell_types`
      if (!is.null(input_json$`cell_types`)) {
        stopifnot(is.vector(input_json$`cell_types`), length(input_json$`cell_types`) != 0)
        tmp <- sapply(input_json$`cell_types`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Predictions: the required field `cell_types` is missing."))
      }
      # check the required field `genes`
      if (!is.null(input_json$`genes`)) {
        stopifnot(is.vector(input_json$`genes`), length(input_json$`genes`) != 0)
        tmp <- sapply(input_json$`genes`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Predictions: the required field `genes` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Predictions
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cell_types` is null
      if (is.null(self$`cell_types`)) {
        return(FALSE)
      }

      # check if the required `genes` is null
      if (is.null(self$`genes`)) {
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
      # check if the required `cell_types` is null
      if (is.null(self$`cell_types`)) {
        invalid_fields["cell_types"] <- "Non-nullable required field `cell_types` cannot be null."
      }

      # check if the required `genes` is null
      if (is.null(self$`genes`)) {
        invalid_fields["genes"] <- "Non-nullable required field `genes` cannot be null."
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
# Predictions$unlock()
#
## Below is an example to define the print function
# Predictions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Predictions$lock()

