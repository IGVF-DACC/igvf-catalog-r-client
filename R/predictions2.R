#' Create a new Predictions2
#'
#' @description
#' Predictions2 Class
#'
#' @docType class
#' @title Predictions2
#' @description Predictions2 Class
#' @format An \code{R6Class} generator object
#' @field qtls  list(\link{Qtls3}) [optional]
#' @field tf_binding  list(\link{TfBinding}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Predictions2 <- R6::R6Class(
  "Predictions2",
  public = list(
    `qtls` = NULL,
    `tf_binding` = NULL,

    #' @description
    #' Initialize a new Predictions2 class.
    #'
    #' @param qtls qtls
    #' @param tf_binding tf_binding
    #' @param ... Other optional arguments.
    initialize = function(`qtls` = NULL, `tf_binding` = NULL, ...) {
      if (!is.null(`qtls`)) {
        stopifnot(is.vector(`qtls`), length(`qtls`) != 0)
        sapply(`qtls`, function(x) stopifnot(R6::is.R6(x)))
        self$`qtls` <- `qtls`
      }
      if (!is.null(`tf_binding`)) {
        stopifnot(is.vector(`tf_binding`), length(`tf_binding`) != 0)
        sapply(`tf_binding`, function(x) stopifnot(R6::is.R6(x)))
        self$`tf_binding` <- `tf_binding`
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
    #' @return Predictions2 as a base R list.
    #' @examples
    #' # convert array of Predictions2 (x) to a data frame
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
    #' Convert Predictions2 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Predictions2Object <- list()
      if (!is.null(self$`qtls`)) {
        Predictions2Object[["qtls"]] <-
          lapply(self$`qtls`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`tf_binding`)) {
        Predictions2Object[["tf_binding"]] <-
          lapply(self$`tf_binding`, function(x) x$toSimpleType())
      }
      return(Predictions2Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of Predictions2
    #'
    #' @param input_json the JSON input
    #' @return the instance of Predictions2
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`qtls`)) {
        self$`qtls` <- ApiClient$new()$deserializeObj(this_object$`qtls`, "array[Qtls3]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`tf_binding`)) {
        self$`tf_binding` <- ApiClient$new()$deserializeObj(this_object$`tf_binding`, "array[TfBinding]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Predictions2 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Predictions2
    #'
    #' @param input_json the JSON input
    #' @return the instance of Predictions2
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`qtls` <- ApiClient$new()$deserializeObj(this_object$`qtls`, "array[Qtls3]", loadNamespace("igvfcatalogclient"))
      self$`tf_binding` <- ApiClient$new()$deserializeObj(this_object$`tf_binding`, "array[TfBinding]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Predictions2 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Predictions2
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# Predictions2$unlock()
#
## Below is an example to define the print function
# Predictions2$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Predictions2$lock()

