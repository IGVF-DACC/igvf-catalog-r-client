#' Create a new LlmQuery
#'
#' @description
#' LlmQuery Class
#'
#' @docType class
#' @title LlmQuery
#' @description LlmQuery Class
#' @format An \code{R6Class} generator object
#' @field query  character
#' @field aql  character [optional]
#' @field aql_result  list(\link{AnyType}) [optional]
#' @field answer  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LlmQuery <- R6::R6Class(
  "LlmQuery",
  public = list(
    `query` = NULL,
    `aql` = NULL,
    `aql_result` = NULL,
    `answer` = NULL,

    #' @description
    #' Initialize a new LlmQuery class.
    #'
    #' @param query query
    #' @param answer answer
    #' @param aql aql
    #' @param aql_result aql_result
    #' @param ... Other optional arguments.
    initialize = function(`query`, `answer`, `aql` = NULL, `aql_result` = NULL, ...) {
      if (!missing(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
      }
      if (!missing(`answer`)) {
        if (!(is.character(`answer`) && length(`answer`) == 1)) {
          stop(paste("Error! Invalid data for `answer`. Must be a string:", `answer`))
        }
        self$`answer` <- `answer`
      }
      if (!is.null(`aql`)) {
        if (!(is.character(`aql`) && length(`aql`) == 1)) {
          stop(paste("Error! Invalid data for `aql`. Must be a string:", `aql`))
        }
        self$`aql` <- `aql`
      }
      if (!is.null(`aql_result`)) {
        stopifnot(is.vector(`aql_result`), length(`aql_result`) != 0)
        sapply(`aql_result`, function(x) stopifnot(R6::is.R6(x)))
        self$`aql_result` <- `aql_result`
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
    #' @return LlmQuery as a base R list.
    #' @examples
    #' # convert array of LlmQuery (x) to a data frame
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
    #' Convert LlmQuery to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LlmQueryObject <- list()
      if (!is.null(self$`query`)) {
        LlmQueryObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`aql`)) {
        LlmQueryObject[["aql"]] <-
          self$`aql`
      }
      if (!is.null(self$`aql_result`)) {
        LlmQueryObject[["aql_result"]] <-
          lapply(self$`aql_result`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`answer`)) {
        LlmQueryObject[["answer"]] <-
          self$`answer`
      }
      return(LlmQueryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmQuery
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmQuery
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`aql`)) {
        self$`aql` <- this_object$`aql`
      }
      if (!is.null(this_object$`aql_result`)) {
        self$`aql_result` <- ApiClient$new()$deserializeObj(this_object$`aql_result`, "array[AnyType]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`answer`)) {
        self$`answer` <- this_object$`answer`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LlmQuery in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmQuery
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmQuery
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`query` <- this_object$`query`
      self$`aql` <- this_object$`aql`
      self$`aql_result` <- ApiClient$new()$deserializeObj(this_object$`aql_result`, "array[AnyType]", loadNamespace("igvfcatalogclient"))
      self$`answer` <- this_object$`answer`
      self
    },

    #' @description
    #' Validate JSON input with respect to LlmQuery and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for LlmQuery: the required field `query` is missing."))
      }
      # check the required field `answer`
      if (!is.null(input_json$`answer`)) {
        if (!(is.character(input_json$`answer`) && length(input_json$`answer`) == 1)) {
          stop(paste("Error! Invalid data for `answer`. Must be a string:", input_json$`answer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LlmQuery: the required field `answer` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LlmQuery
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

      if (nchar(self$`aql`) > 5000) {
        return(FALSE)
      }

      if (length(self$`aql_result`) > 5) {
        return(FALSE)
      }

      # check if the required `answer` is null
      if (is.null(self$`answer`)) {
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

      if (nchar(self$`aql`) > 5000) {
        invalid_fields["aql"] <- "Invalid length for `aql`, must be smaller than or equal to 5000."
      }

      if (length(self$`aql_result`) > 5) {
        invalid_fields["aql_result"] <- "Invalid length for `aql_result`, number of items must be less than or equal to 5."
      }

      # check if the required `answer` is null
      if (is.null(self$`answer`)) {
        invalid_fields["answer"] <- "Non-nullable required field `answer` cannot be null."
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
# LlmQuery$unlock()
#
## Below is an example to define the print function
# LlmQuery$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LlmQuery$lock()

