#' Create a new Scores
#'
#' @description
#' Scores Class
#'
#' @docType class
#' @title Scores
#' @description Scores Class
#' @format An \code{R6Class} generator object
#' @field method  character
#' @field score  numeric [optional]
#' @field source_url  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Scores <- R6::R6Class(
  "Scores",
  public = list(
    `method` = NULL,
    `score` = NULL,
    `source_url` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Scores class.
    #'
    #' @param method method
    #' @param score score
    #' @param source_url source_url
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`method`, `score` = NULL, `source_url` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
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
    #' @return Scores as a base R list.
    #' @examples
    #' # convert array of Scores (x) to a data frame
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
    #' Convert Scores to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ScoresObject <- list()
      if (!is.null(self$`method`)) {
        ScoresObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`score`)) {
        ScoresObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`source_url`)) {
        ScoresObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`files_filesets`)) {
        ScoresObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(ScoresObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Scores
    #'
    #' @param input_json the JSON input
    #' @return the instance of Scores
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Scores in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Scores
    #'
    #' @param input_json the JSON input
    #' @return the instance of Scores
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`method` <- this_object$`method`
      self$`score` <- this_object$`score`
      self$`source_url` <- this_object$`source_url`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Scores and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Scores: the required field `method` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Scores
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
# Scores$unlock()
#
## Below is an example to define the print function
# Scores$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Scores$lock()

