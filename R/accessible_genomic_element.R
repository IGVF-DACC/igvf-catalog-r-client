#' Create a new AccessibleGenomicElement
#'
#' @description
#' AccessibleGenomicElement Class
#'
#' @docType class
#' @title AccessibleGenomicElement
#' @description AccessibleGenomicElement Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @field type  character [optional]
#' @field source_annotation  character [optional]
#' @field promoter_of  \link{AccessibleGenomicElementPromoterOf} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccessibleGenomicElement <- R6::R6Class(
  "AccessibleGenomicElement",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `type` = NULL,
    `source_annotation` = NULL,
    `promoter_of` = NULL,

    #' @description
    #' Initialize a new AccessibleGenomicElement class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param type type
    #' @param source_annotation source_annotation
    #' @param promoter_of promoter_of
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `chr`, `start`, `end`, `type` = NULL, `source_annotation` = NULL, `promoter_of` = NULL, ...) {
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
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!missing(`start`)) {
        self$`start` <- `start`
      }
      if (!missing(`end`)) {
        self$`end` <- `end`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`source_annotation`)) {
        if (!(is.character(`source_annotation`) && length(`source_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `source_annotation`. Must be a string:", `source_annotation`))
        }
        self$`source_annotation` <- `source_annotation`
      }
      if (!is.null(`promoter_of`)) {
        stopifnot(R6::is.R6(`promoter_of`))
        self$`promoter_of` <- `promoter_of`
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
    #' @return AccessibleGenomicElement as a base R list.
    #' @examples
    #' # convert array of AccessibleGenomicElement (x) to a data frame
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
    #' Convert AccessibleGenomicElement to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccessibleGenomicElementObject <- list()
      if (!is.null(self$`_id`)) {
        AccessibleGenomicElementObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        AccessibleGenomicElementObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`chr`)) {
        AccessibleGenomicElementObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        AccessibleGenomicElementObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        AccessibleGenomicElementObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`type`)) {
        AccessibleGenomicElementObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`source_annotation`)) {
        AccessibleGenomicElementObject[["source_annotation"]] <-
          self$`source_annotation`
      }
      if (!is.null(self$`promoter_of`)) {
        AccessibleGenomicElementObject[["promoter_of"]] <-
          self$`promoter_of`$toSimpleType()
      }
      return(AccessibleGenomicElementObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccessibleGenomicElement
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccessibleGenomicElement
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
      if (!is.null(this_object$`source_annotation`)) {
        self$`source_annotation` <- this_object$`source_annotation`
      }
      if (!is.null(this_object$`promoter_of`)) {
        `promoter_of_object` <- AccessibleGenomicElementPromoterOf$new()
        `promoter_of_object`$fromJSON(jsonlite::toJSON(this_object$`promoter_of`, auto_unbox = TRUE, digits = NA))
        self$`promoter_of` <- `promoter_of_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccessibleGenomicElement in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccessibleGenomicElement
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccessibleGenomicElement
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`type` <- this_object$`type`
      self$`source_annotation` <- this_object$`source_annotation`
      self$`promoter_of` <- AccessibleGenomicElementPromoterOf$new()$fromJSON(jsonlite::toJSON(this_object$`promoter_of`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AccessibleGenomicElement and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement: the required field `name` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement: the required field `end` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccessibleGenomicElement
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      # check if the required `end` is null
      if (is.null(self$`end`)) {
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
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
# AccessibleGenomicElement$unlock()
#
## Below is an example to define the print function
# AccessibleGenomicElement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccessibleGenomicElement$lock()

