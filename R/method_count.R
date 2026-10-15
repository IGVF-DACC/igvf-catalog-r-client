#' Create a new MethodCount
#'
#' @description
#' MethodCount Class
#'
#' @docType class
#' @title MethodCount
#' @description MethodCount Class
#' @format An \code{R6Class} generator object
#' @field method  character
#' @field count  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MethodCount <- R6::R6Class(
  "MethodCount",
  public = list(
    `method` = NULL,
    `count` = NULL,

    #' @description
    #' Initialize a new MethodCount class.
    #'
    #' @param method method
    #' @param count count
    #' @param ... Other optional arguments.
    initialize = function(`method`, `count`, ...) {
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`count`)) {
        self$`count` <- `count`
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
    #' @return MethodCount as a base R list.
    #' @examples
    #' # convert array of MethodCount (x) to a data frame
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
    #' Convert MethodCount to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MethodCountObject <- list()
      if (!is.null(self$`method`)) {
        MethodCountObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`count`)) {
        MethodCountObject[["count"]] <-
          self$`count`
      }
      return(MethodCountObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MethodCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of MethodCount
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MethodCount in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MethodCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of MethodCount
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`method` <- this_object$`method`
      self$`count` <- this_object$`count`
      self
    },

    #' @description
    #' Validate JSON input with respect to MethodCount and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MethodCount: the required field `method` is missing."))
      }
      # check the required field `count`
      if (!is.null(input_json$`count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MethodCount: the required field `count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MethodCount
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `method` is null
      if (is.null(self$`method`)) {
        return(FALSE)
      }

      # check if the required `count` is null
      if (is.null(self$`count`)) {
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
      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
      }

      # check if the required `count` is null
      if (is.null(self$`count`)) {
        invalid_fields["count"] <- "Non-nullable required field `count` cannot be null."
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
# MethodCount$unlock()
#
## Below is an example to define the print function
# MethodCount$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MethodCount$lock()

