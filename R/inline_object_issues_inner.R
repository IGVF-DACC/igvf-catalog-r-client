#' Create a new InlineObjectIssuesInner
#'
#' @description
#' InlineObjectIssuesInner Class
#'
#' @docType class
#' @title InlineObjectIssuesInner
#' @description InlineObjectIssuesInner Class
#' @format An \code{R6Class} generator object
#' @field message  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineObjectIssuesInner <- R6::R6Class(
  "InlineObjectIssuesInner",
  public = list(
    `message` = NULL,

    #' @description
    #' Initialize a new InlineObjectIssuesInner class.
    #'
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`message`, ...) {
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return InlineObjectIssuesInner as a base R list.
    #' @examples
    #' # convert array of InlineObjectIssuesInner (x) to a data frame
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
    #' Convert InlineObjectIssuesInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InlineObjectIssuesInnerObject <- list()
      if (!is.null(self$`message`)) {
        InlineObjectIssuesInnerObject[["message"]] <-
          self$`message`
      }
      return(InlineObjectIssuesInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of InlineObjectIssuesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of InlineObjectIssuesInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return InlineObjectIssuesInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InlineObjectIssuesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of InlineObjectIssuesInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self
    },

    #' @description
    #' Validate JSON input with respect to InlineObjectIssuesInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InlineObjectIssuesInner: the required field `message` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InlineObjectIssuesInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `message` is null
      if (is.null(self$`message`)) {
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
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
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
# InlineObjectIssuesInner$unlock()
#
## Below is an example to define the print function
# InlineObjectIssuesInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InlineObjectIssuesInner$lock()

