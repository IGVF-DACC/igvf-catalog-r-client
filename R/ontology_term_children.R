#' Create a new OntologyTermChildren
#'
#' @description
#' OntologyTermChildren Class
#'
#' @docType class
#' @title OntologyTermChildren
#' @description OntologyTermChildren Class
#' @format An \code{R6Class} generator object
#' @field term  \link{OntologyTerm}
#' @field relationship_type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OntologyTermChildren <- R6::R6Class(
  "OntologyTermChildren",
  public = list(
    `term` = NULL,
    `relationship_type` = NULL,

    #' @description
    #' Initialize a new OntologyTermChildren class.
    #'
    #' @param term term
    #' @param relationship_type relationship_type
    #' @param ... Other optional arguments.
    initialize = function(`term`, `relationship_type`, ...) {
      if (!missing(`term`)) {
        stopifnot(R6::is.R6(`term`))
        self$`term` <- `term`
      }
      if (!missing(`relationship_type`)) {
        if (!(is.character(`relationship_type`) && length(`relationship_type`) == 1)) {
          stop(paste("Error! Invalid data for `relationship_type`. Must be a string:", `relationship_type`))
        }
        self$`relationship_type` <- `relationship_type`
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
    #' @return OntologyTermChildren as a base R list.
    #' @examples
    #' # convert array of OntologyTermChildren (x) to a data frame
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
    #' Convert OntologyTermChildren to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OntologyTermChildrenObject <- list()
      if (!is.null(self$`term`)) {
        OntologyTermChildrenObject[["term"]] <-
          self$`term`$toSimpleType()
      }
      if (!is.null(self$`relationship_type`)) {
        OntologyTermChildrenObject[["relationship_type"]] <-
          self$`relationship_type`
      }
      return(OntologyTermChildrenObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OntologyTermChildren
    #'
    #' @param input_json the JSON input
    #' @return the instance of OntologyTermChildren
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`term`)) {
        `term_object` <- OntologyTerm$new()
        `term_object`$fromJSON(jsonlite::toJSON(this_object$`term`, auto_unbox = TRUE, digits = NA))
        self$`term` <- `term_object`
      }
      if (!is.null(this_object$`relationship_type`)) {
        self$`relationship_type` <- this_object$`relationship_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OntologyTermChildren in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OntologyTermChildren
    #'
    #' @param input_json the JSON input
    #' @return the instance of OntologyTermChildren
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`term` <- OntologyTerm$new()$fromJSON(jsonlite::toJSON(this_object$`term`, auto_unbox = TRUE, digits = NA))
      self$`relationship_type` <- this_object$`relationship_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to OntologyTermChildren and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `term`
      if (!is.null(input_json$`term`)) {
        stopifnot(R6::is.R6(input_json$`term`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermChildren: the required field `term` is missing."))
      }
      # check the required field `relationship_type`
      if (!is.null(input_json$`relationship_type`)) {
        if (!(is.character(input_json$`relationship_type`) && length(input_json$`relationship_type`) == 1)) {
          stop(paste("Error! Invalid data for `relationship_type`. Must be a string:", input_json$`relationship_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermChildren: the required field `relationship_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OntologyTermChildren
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `term` is null
      if (is.null(self$`term`)) {
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
      # check if the required `term` is null
      if (is.null(self$`term`)) {
        invalid_fields["term"] <- "Non-nullable required field `term` cannot be null."
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
# OntologyTermChildren$unlock()
#
## Below is an example to define the print function
# OntologyTermChildren$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OntologyTermChildren$lock()

