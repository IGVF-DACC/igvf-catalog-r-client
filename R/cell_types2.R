#' Create a new CellTypes2
#'
#' @description
#' CellTypes2 Class
#'
#' @docType class
#' @title CellTypes2
#' @description CellTypes2 Class
#' @format An \code{R6Class} generator object
#' @field cell_type  character
#' @field count  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CellTypes2 <- R6::R6Class(
  "CellTypes2",
  public = list(
    `cell_type` = NULL,
    `count` = NULL,

    #' @description
    #' Initialize a new CellTypes2 class.
    #'
    #' @param cell_type cell_type
    #' @param count count
    #' @param ... Other optional arguments.
    initialize = function(`cell_type`, `count`, ...) {
      if (!missing(`cell_type`)) {
        if (!(is.character(`cell_type`) && length(`cell_type`) == 1)) {
          stop(paste("Error! Invalid data for `cell_type`. Must be a string:", `cell_type`))
        }
        self$`cell_type` <- `cell_type`
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
    #' @return CellTypes2 as a base R list.
    #' @examples
    #' # convert array of CellTypes2 (x) to a data frame
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
    #' Convert CellTypes2 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CellTypes2Object <- list()
      if (!is.null(self$`cell_type`)) {
        CellTypes2Object[["cell_type"]] <-
          self$`cell_type`
      }
      if (!is.null(self$`count`)) {
        CellTypes2Object[["count"]] <-
          self$`count`
      }
      return(CellTypes2Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of CellTypes2
    #'
    #' @param input_json the JSON input
    #' @return the instance of CellTypes2
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cell_type`)) {
        self$`cell_type` <- this_object$`cell_type`
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
    #' @return CellTypes2 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CellTypes2
    #'
    #' @param input_json the JSON input
    #' @return the instance of CellTypes2
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cell_type` <- this_object$`cell_type`
      self$`count` <- this_object$`count`
      self
    },

    #' @description
    #' Validate JSON input with respect to CellTypes2 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cell_type`
      if (!is.null(input_json$`cell_type`)) {
        if (!(is.character(input_json$`cell_type`) && length(input_json$`cell_type`) == 1)) {
          stop(paste("Error! Invalid data for `cell_type`. Must be a string:", input_json$`cell_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CellTypes2: the required field `cell_type` is missing."))
      }
      # check the required field `count`
      if (!is.null(input_json$`count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CellTypes2: the required field `count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CellTypes2
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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
# CellTypes2$unlock()
#
## Below is an example to define the print function
# CellTypes2$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CellTypes2$lock()

