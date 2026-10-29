#' Create a new AccessibleGenomicElement11
#'
#' @description
#' AccessibleGenomicElement11 Class
#'
#' @docType class
#' @title AccessibleGenomicElement11
#' @description AccessibleGenomicElement11 Class
#' @format An \code{R6Class} generator object
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @field strand  character [optional]
#' @field name  character
#' @field method  character [optional]
#' @field source_annotation  character
#' @field type  character
#' @field source  character
#' @field source_url  character
#' @field _id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccessibleGenomicElement11 <- R6::R6Class(
  "AccessibleGenomicElement11",
  public = list(
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `strand` = NULL,
    `name` = NULL,
    `method` = NULL,
    `source_annotation` = NULL,
    `type` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `_id` = NULL,

    #' @description
    #' Initialize a new AccessibleGenomicElement11 class.
    #'
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param name name
    #' @param source_annotation source_annotation
    #' @param type type
    #' @param source source
    #' @param source_url source_url
    #' @param _id _id
    #' @param strand strand
    #' @param method method
    #' @param ... Other optional arguments.
    initialize = function(`chr`, `start`, `end`, `name`, `source_annotation`, `type`, `source`, `source_url`, `_id`, `strand` = NULL, `method` = NULL, ...) {
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
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`source_annotation`)) {
        if (!(is.character(`source_annotation`) && length(`source_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `source_annotation`. Must be a string:", `source_annotation`))
        }
        self$`source_annotation` <- `source_annotation`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!is.null(`strand`)) {
        if (!(is.character(`strand`) && length(`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", `strand`))
        }
        self$`strand` <- `strand`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
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
    #' @return AccessibleGenomicElement11 as a base R list.
    #' @examples
    #' # convert array of AccessibleGenomicElement11 (x) to a data frame
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
    #' Convert AccessibleGenomicElement11 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccessibleGenomicElement11Object <- list()
      if (!is.null(self$`chr`)) {
        AccessibleGenomicElement11Object[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        AccessibleGenomicElement11Object[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        AccessibleGenomicElement11Object[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`strand`)) {
        AccessibleGenomicElement11Object[["strand"]] <-
          self$`strand`
      }
      if (!is.null(self$`name`)) {
        AccessibleGenomicElement11Object[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`method`)) {
        AccessibleGenomicElement11Object[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`source_annotation`)) {
        AccessibleGenomicElement11Object[["source_annotation"]] <-
          self$`source_annotation`
      }
      if (!is.null(self$`type`)) {
        AccessibleGenomicElement11Object[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`source`)) {
        AccessibleGenomicElement11Object[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        AccessibleGenomicElement11Object[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`_id`)) {
        AccessibleGenomicElement11Object[["_id"]] <-
          self$`_id`
      }
      return(AccessibleGenomicElement11Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccessibleGenomicElement11
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccessibleGenomicElement11
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`strand`)) {
        self$`strand` <- this_object$`strand`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`source_annotation`)) {
        self$`source_annotation` <- this_object$`source_annotation`
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
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccessibleGenomicElement11 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccessibleGenomicElement11
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccessibleGenomicElement11
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`strand` <- this_object$`strand`
      self$`name` <- this_object$`name`
      self$`method` <- this_object$`method`
      self$`source_annotation` <- this_object$`source_annotation`
      self$`type` <- this_object$`type`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`_id` <- this_object$`_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccessibleGenomicElement11 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `end` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `name` is missing."))
      }
      # check the required field `source_annotation`
      if (!is.null(input_json$`source_annotation`)) {
        if (!(is.character(input_json$`source_annotation`) && length(input_json$`source_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `source_annotation`. Must be a string:", input_json$`source_annotation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `source_annotation` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `type` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `source_url` is missing."))
      }
      # check the required field `_id`
      if (!is.null(input_json$`_id`)) {
        if (!(is.character(input_json$`_id`) && length(input_json$`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", input_json$`_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccessibleGenomicElement11: the required field `_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccessibleGenomicElement11
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        return(FALSE)
      }

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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

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
# AccessibleGenomicElement11$unlock()
#
## Below is an example to define the print function
# AccessibleGenomicElement11$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccessibleGenomicElement11$lock()

