#' Create a new GenesFromTranscripts
#'
#' @description
#' GenesFromTranscripts Class
#'
#' @docType class
#' @title GenesFromTranscripts
#' @description GenesFromTranscripts Class
#' @format An \code{R6Class} generator object
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field version  character [optional]
#' @field gene  \link{DiseasesFromGenesGene} [optional]
#' @field transcript  \link{GenesFromTranscriptsTranscript} [optional]
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesFromTranscripts <- R6::R6Class(
  "GenesFromTranscripts",
  public = list(
    `source` = NULL,
    `source_url` = NULL,
    `version` = NULL,
    `gene` = NULL,
    `transcript` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new GenesFromTranscripts class.
    #'
    #' @param name name
    #' @param source source
    #' @param source_url source_url
    #' @param version version
    #' @param gene gene
    #' @param transcript transcript
    #' @param ... Other optional arguments.
    initialize = function(`name`, `source` = NULL, `source_url` = NULL, `version` = NULL, `gene` = NULL, `transcript` = NULL, ...) {
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
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
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
    #' @return GenesFromTranscripts as a base R list.
    #' @examples
    #' # convert array of GenesFromTranscripts (x) to a data frame
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
    #' Convert GenesFromTranscripts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesFromTranscriptsObject <- list()
      if (!is.null(self$`source`)) {
        GenesFromTranscriptsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenesFromTranscriptsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`version`)) {
        GenesFromTranscriptsObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`gene`)) {
        GenesFromTranscriptsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`transcript`)) {
        GenesFromTranscriptsObject[["transcript"]] <-
          self$`transcript`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        GenesFromTranscriptsObject[["name"]] <-
          self$`name`
      }
      return(GenesFromTranscriptsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromTranscripts
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromTranscripts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- DiseasesFromGenesGene$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
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
    #' @return GenesFromTranscripts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromTranscripts
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromTranscripts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`version` <- this_object$`version`
      self$`gene` <- DiseasesFromGenesGene$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`transcript` <- GenesFromTranscriptsTranscript$new()$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesFromTranscripts and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenesFromTranscripts: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesFromTranscripts
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
# GenesFromTranscripts$unlock()
#
## Below is an example to define the print function
# GenesFromTranscripts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesFromTranscripts$lock()

