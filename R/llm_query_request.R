#' Create a new LlmQueryRequest
#'
#' @description
#' LlmQueryRequest Class
#'
#' @docType class
#' @title LlmQueryRequest
#' @description LlmQueryRequest Class
#' @format An \code{R6Class} generator object
#' @field query  character
#' @field password  character
#' @field verbose  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LlmQueryRequest <- R6::R6Class(
  "LlmQueryRequest",
  public = list(
    `query` = NULL,
    `password` = NULL,
    `verbose` = NULL,

    #' @description
    #' Initialize a new LlmQueryRequest class.
    #'
    #' @param query query
    #' @param password password
    #' @param verbose verbose. Default to "false".
    #' @param ... Other optional arguments.
    initialize = function(`query`, `password`, `verbose` = "false", ...) {
      if (!missing(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
      }
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!is.null(`verbose`)) {
        if (!(`verbose` %in% c("true", "false"))) {
          stop(paste("Error! \"", `verbose`, "\" cannot be assigned to `verbose`. Must be \"true\", \"false\".", sep = ""))
        }
        if (!(is.character(`verbose`) && length(`verbose`) == 1)) {
          stop(paste("Error! Invalid data for `verbose`. Must be a string:", `verbose`))
        }
        self$`verbose` <- `verbose`
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
    #' @return LlmQueryRequest as a base R list.
    #' @examples
    #' # convert array of LlmQueryRequest (x) to a data frame
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
    #' Convert LlmQueryRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LlmQueryRequestObject <- list()
      if (!is.null(self$`query`)) {
        LlmQueryRequestObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`password`)) {
        LlmQueryRequestObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`verbose`)) {
        LlmQueryRequestObject[["verbose"]] <-
          self$`verbose`
      }
      return(LlmQueryRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmQueryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmQueryRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`verbose`)) {
        if (!is.null(this_object$`verbose`) && !(this_object$`verbose` %in% c("true", "false"))) {
          stop(paste("Error! \"", this_object$`verbose`, "\" cannot be assigned to `verbose`. Must be \"true\", \"false\".", sep = ""))
        }
        self$`verbose` <- this_object$`verbose`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LlmQueryRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmQueryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmQueryRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`query` <- this_object$`query`
      self$`password` <- this_object$`password`
      if (!is.null(this_object$`verbose`) && !(this_object$`verbose` %in% c("true", "false"))) {
        stop(paste("Error! \"", this_object$`verbose`, "\" cannot be assigned to `verbose`. Must be \"true\", \"false\".", sep = ""))
      }
      self$`verbose` <- this_object$`verbose`
      self
    },

    #' @description
    #' Validate JSON input with respect to LlmQueryRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `query`
      if (!is.null(input_json$`query`)) {
        if (!(is.character(input_json$`query`) && length(input_json$`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", input_json$`query`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LlmQueryRequest: the required field `query` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LlmQueryRequest: the required field `password` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LlmQueryRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `query` is null
      if (is.null(self$`query`)) {
        return(FALSE)
      }

      if (nchar(self$`query`) > 5000) {
        return(FALSE)
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
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
      # check if the required `query` is null
      if (is.null(self$`query`)) {
        invalid_fields["query"] <- "Non-nullable required field `query` cannot be null."
      }

      if (nchar(self$`query`) > 5000) {
        invalid_fields["query"] <- "Invalid length for `query`, must be smaller than or equal to 5000."
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
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
# LlmQueryRequest$unlock()
#
## Below is an example to define the print function
# LlmQueryRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LlmQueryRequest$lock()

