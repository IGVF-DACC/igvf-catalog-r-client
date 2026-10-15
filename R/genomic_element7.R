#' Create a new GenomicElement7
#'
#' @description
#' GenomicElement7 Class
#'
#' @docType class
#' @title GenomicElement7
#' @description GenomicElement7 Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field type  character [optional]
#' @field chr  character [optional]
#' @field start  numeric [optional]
#' @field end  numeric [optional]
#' @field name  character
#' @field source_annotation  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElement7 <- R6::R6Class(
  "GenomicElement7",
  public = list(
    `_id` = NULL,
    `type` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `name` = NULL,
    `source_annotation` = NULL,

    #' @description
    #' Initialize a new GenomicElement7 class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param type type
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param source_annotation source_annotation
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `type` = NULL, `chr` = NULL, `start` = NULL, `end` = NULL, `source_annotation` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return GenomicElement7 as a base R list.
    #' @examples
    #' # convert array of GenomicElement7 (x) to a data frame
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
    #' Convert GenomicElement7 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElement7Object <- list()
      if (!is.null(self$`_id`)) {
        GenomicElement7Object[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`type`)) {
        GenomicElement7Object[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`chr`)) {
        GenomicElement7Object[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        GenomicElement7Object[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        GenomicElement7Object[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`name`)) {
        GenomicElement7Object[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`source_annotation`)) {
        GenomicElement7Object[["source_annotation"]] <-
          self$`source_annotation`
      }
      return(GenomicElement7Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement7
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement7
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return GenomicElement7 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement7
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement7
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`type` <- this_object$`type`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`name` <- this_object$`name`
      self$`source_annotation` <- this_object$`source_annotation`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElement7 and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement7: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement7: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElement7
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

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
# GenomicElement7$unlock()
#
## Below is an example to define the print function
# GenomicElement7$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElement7$lock()

