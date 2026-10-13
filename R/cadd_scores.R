#' Create a new CaddScores
#'
#' @description
#' CaddScores Class
#'
#' @docType class
#' @title CaddScores
#' @description CaddScores Class
#' @format An \code{R6Class} generator object
#' @field raw  numeric [optional]
#' @field phread  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CaddScores <- R6::R6Class(
  "CaddScores",
  public = list(
    `raw` = NULL,
    `phread` = NULL,

    #' @description
    #' Initialize a new CaddScores class.
    #'
    #' @param raw raw
    #' @param phread phread
    #' @param ... Other optional arguments.
    initialize = function(`raw` = NULL, `phread` = NULL, ...) {
      if (!is.null(`raw`)) {
        self$`raw` <- `raw`
      }
      if (!is.null(`phread`)) {
        self$`phread` <- `phread`
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
    #' @return CaddScores as a base R list.
    #' @examples
    #' # convert array of CaddScores (x) to a data frame
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
    #' Convert CaddScores to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CaddScoresObject <- list()
      if (!is.null(self$`raw`)) {
        CaddScoresObject[["raw"]] <-
          self$`raw`
      }
      if (!is.null(self$`phread`)) {
        CaddScoresObject[["phread"]] <-
          self$`phread`
      }
      return(CaddScoresObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CaddScores
    #'
    #' @param input_json the JSON input
    #' @return the instance of CaddScores
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`raw`)) {
        self$`raw` <- this_object$`raw`
      }
      if (!is.null(this_object$`phread`)) {
        self$`phread` <- this_object$`phread`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CaddScores in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CaddScores
    #'
    #' @param input_json the JSON input
    #' @return the instance of CaddScores
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`raw` <- this_object$`raw`
      self$`phread` <- this_object$`phread`
      self
    },

    #' @description
    #' Validate JSON input with respect to CaddScores and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CaddScores
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
# CaddScores$unlock()
#
## Below is an example to define the print function
# CaddScores$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CaddScores$lock()

