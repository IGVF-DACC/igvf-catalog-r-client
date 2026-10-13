#' Create a new ProteinsFromTranscripts
#'
#' @description
#' ProteinsFromTranscripts Class
#'
#' @docType class
#' @title ProteinsFromTranscripts
#' @description ProteinsFromTranscripts Class
#' @format An \code{R6Class} generator object
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field protein  \link{ProteinsFromTranscriptsProtein} [optional]
#' @field transcript  \link{GenesFromTranscriptsTranscript} [optional]
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinsFromTranscripts <- R6::R6Class(
  "ProteinsFromTranscripts",
  public = list(
    `source` = NULL,
    `source_url` = NULL,
    `protein` = NULL,
    `transcript` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new ProteinsFromTranscripts class.
    #'
    #' @param name name
    #' @param source source
    #' @param source_url source_url
    #' @param protein protein
    #' @param transcript transcript
    #' @param ... Other optional arguments.
    initialize = function(`name`, `source` = NULL, `source_url` = NULL, `protein` = NULL, `transcript` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
      }
      if (!is.null(`transcript`)) {
        stopifnot(R6::is.R6(`transcript`))
        self$`transcript` <- `transcript`
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
    #' @return ProteinsFromTranscripts as a base R list.
    #' @examples
    #' # convert array of ProteinsFromTranscripts (x) to a data frame
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
    #' Convert ProteinsFromTranscripts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProteinsFromTranscriptsObject <- list()
      if (!is.null(self$`source`)) {
        ProteinsFromTranscriptsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        ProteinsFromTranscriptsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`protein`)) {
        ProteinsFromTranscriptsObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`transcript`)) {
        ProteinsFromTranscriptsObject[["transcript"]] <-
          self$`transcript`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        ProteinsFromTranscriptsObject[["name"]] <-
          self$`name`
      }
      return(ProteinsFromTranscriptsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsFromTranscripts
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinsFromTranscripts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- ProteinsFromTranscriptsProtein$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`transcript`)) {
        `transcript_object` <- GenesFromTranscriptsTranscript$new()
        `transcript_object`$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
        self$`transcript` <- `transcript_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProteinsFromTranscripts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsFromTranscripts
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinsFromTranscripts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`protein` <- ProteinsFromTranscriptsProtein$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`transcript` <- GenesFromTranscriptsTranscript$new()$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProteinsFromTranscripts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsFromTranscripts: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProteinsFromTranscripts
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# ProteinsFromTranscripts$unlock()
#
## Below is an example to define the print function
# ProteinsFromTranscripts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProteinsFromTranscripts$lock()

