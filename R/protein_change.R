#' Create a new ProteinChange
#'
#' @description
#' ProteinChange Class
#'
#' @docType class
#' @title ProteinChange
#' @description ProteinChange Class
#' @format An \code{R6Class} generator object
#' @field protein_id  character [optional]
#' @field protein_name  character [optional]
#' @field transcript_id  character [optional]
#' @field hgvsp  character [optional]
#' @field aapos  numeric [optional]
#' @field ref  character [optional]
#' @field alt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinChange <- R6::R6Class(
  "ProteinChange",
  public = list(
    `protein_id` = NULL,
    `protein_name` = NULL,
    `transcript_id` = NULL,
    `hgvsp` = NULL,
    `aapos` = NULL,
    `ref` = NULL,
    `alt` = NULL,

    #' @description
    #' Initialize a new ProteinChange class.
    #'
    #' @param protein_id protein_id
    #' @param protein_name protein_name
    #' @param transcript_id transcript_id
    #' @param hgvsp hgvsp
    #' @param aapos aapos
    #' @param ref ref
    #' @param alt alt
    #' @param ... Other optional arguments.
    initialize = function(`protein_id` = NULL, `protein_name` = NULL, `transcript_id` = NULL, `hgvsp` = NULL, `aapos` = NULL, `ref` = NULL, `alt` = NULL, ...) {
      if (!is.null(`protein_id`)) {
        if (!(is.character(`protein_id`) && length(`protein_id`) == 1)) {
          stop(paste("Error! Invalid data for `protein_id`. Must be a string:", `protein_id`))
        }
        self$`protein_id` <- `protein_id`
      }
      if (!is.null(`protein_name`)) {
        if (!(is.character(`protein_name`) && length(`protein_name`) == 1)) {
          stop(paste("Error! Invalid data for `protein_name`. Must be a string:", `protein_name`))
        }
        self$`protein_name` <- `protein_name`
      }
      if (!is.null(`transcript_id`)) {
        if (!(is.character(`transcript_id`) && length(`transcript_id`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_id`. Must be a string:", `transcript_id`))
        }
        self$`transcript_id` <- `transcript_id`
      }
      if (!is.null(`hgvsp`)) {
        if (!(is.character(`hgvsp`) && length(`hgvsp`) == 1)) {
          stop(paste("Error! Invalid data for `hgvsp`. Must be a string:", `hgvsp`))
        }
        self$`hgvsp` <- `hgvsp`
      }
      if (!is.null(`aapos`)) {
        self$`aapos` <- `aapos`
      }
      if (!is.null(`ref`)) {
        if (!(is.character(`ref`) && length(`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", `ref`))
        }
        self$`ref` <- `ref`
      }
      if (!is.null(`alt`)) {
        if (!(is.character(`alt`) && length(`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", `alt`))
        }
        self$`alt` <- `alt`
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
    #' @return ProteinChange as a base R list.
    #' @examples
    #' # convert array of ProteinChange (x) to a data frame
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
    #' Convert ProteinChange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProteinChangeObject <- list()
      if (!is.null(self$`protein_id`)) {
        ProteinChangeObject[["protein_id"]] <-
          self$`protein_id`
      }
      if (!is.null(self$`protein_name`)) {
        ProteinChangeObject[["protein_name"]] <-
          self$`protein_name`
      }
      if (!is.null(self$`transcript_id`)) {
        ProteinChangeObject[["transcript_id"]] <-
          self$`transcript_id`
      }
      if (!is.null(self$`hgvsp`)) {
        ProteinChangeObject[["hgvsp"]] <-
          self$`hgvsp`
      }
      if (!is.null(self$`aapos`)) {
        ProteinChangeObject[["aapos"]] <-
          self$`aapos`
      }
      if (!is.null(self$`ref`)) {
        ProteinChangeObject[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        ProteinChangeObject[["alt"]] <-
          self$`alt`
      }
      return(ProteinChangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinChange
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinChange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`protein_id`)) {
        self$`protein_id` <- this_object$`protein_id`
      }
      if (!is.null(this_object$`protein_name`)) {
        self$`protein_name` <- this_object$`protein_name`
      }
      if (!is.null(this_object$`transcript_id`)) {
        self$`transcript_id` <- this_object$`transcript_id`
      }
      if (!is.null(this_object$`hgvsp`)) {
        self$`hgvsp` <- this_object$`hgvsp`
      }
      if (!is.null(this_object$`aapos`)) {
        self$`aapos` <- this_object$`aapos`
      }
      if (!is.null(this_object$`ref`)) {
        self$`ref` <- this_object$`ref`
      }
      if (!is.null(this_object$`alt`)) {
        self$`alt` <- this_object$`alt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProteinChange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinChange
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinChange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`protein_id` <- this_object$`protein_id`
      self$`protein_name` <- this_object$`protein_name`
      self$`transcript_id` <- this_object$`transcript_id`
      self$`hgvsp` <- this_object$`hgvsp`
      self$`aapos` <- this_object$`aapos`
      self$`ref` <- this_object$`ref`
      self$`alt` <- this_object$`alt`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProteinChange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProteinChange
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
# ProteinChange$unlock()
#
## Below is an example to define the print function
# ProteinChange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProteinChange$lock()

