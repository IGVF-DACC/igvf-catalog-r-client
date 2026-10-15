#' Create a new GenomicElement
#'
#' @description
#' GenomicElement Class
#'
#' @docType class
#' @title GenomicElement
#' @description GenomicElement Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character [optional]
#' @field chr  character [optional]
#' @field start  numeric [optional]
#' @field end  numeric [optional]
#' @field type  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field source_annotation  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElement <- R6::R6Class(
  "GenomicElement",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `type` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `source_annotation` = NULL,

    #' @description
    #' Initialize a new GenomicElement class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param type type
    #' @param source source
    #' @param source_url source_url
    #' @param source_annotation source_annotation
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name` = NULL, `chr` = NULL, `start` = NULL, `end` = NULL, `type` = NULL, `source` = NULL, `source_url` = NULL, `source_annotation` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!is.null(`start`)) {
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        self$`end` <- `end`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
      if (!is.null(`source_annotation`)) {
        if (!(is.character(`source_annotation`) && length(`source_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `source_annotation`. Must be a string:", `source_annotation`))
        }
        self$`source_annotation` <- `source_annotation`
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
    #' @return GenomicElement as a base R list.
    #' @examples
    #' # convert array of GenomicElement (x) to a data frame
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
    #' Convert GenomicElement to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElementObject <- list()
      if (!is.null(self$`_id`)) {
        GenomicElementObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        GenomicElementObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`chr`)) {
        GenomicElementObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        GenomicElementObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        GenomicElementObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`type`)) {
        GenomicElementObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`source`)) {
        GenomicElementObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenomicElementObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`source_annotation`)) {
        GenomicElementObject[["source_annotation"]] <-
          self$`source_annotation`
      }
      return(GenomicElementObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`source_annotation`)) {
        self$`source_annotation` <- this_object$`source_annotation`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElement in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`type` <- this_object$`type`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`source_annotation` <- this_object$`source_annotation`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElement and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `_id`
      if (!is.null(input_json$`_id`)) {
        if (!(is.character(input_json$`_id`) && length(input_json$`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", input_json$`_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement: the required field `_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElement
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
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
# GenomicElement$unlock()
#
## Below is an example to define the print function
# GenomicElement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElement$lock()

