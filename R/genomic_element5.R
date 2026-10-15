#' Create a new GenomicElement5
#'
#' @description
#' GenomicElement5 Class
#'
#' @docType class
#' @title GenomicElement5
#' @description GenomicElement5 Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field chr  character
#' @field start  numeric
#' @field stop  numeric
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElement5 <- R6::R6Class(
  "GenomicElement5",
  public = list(
    `name` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `stop` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new GenomicElement5 class.
    #'
    #' @param name name
    #' @param chr chr
    #' @param start start
    #' @param stop stop
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`name`, `chr`, `start`, `stop`, `type`, ...) {
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
      if (!missing(`stop`)) {
        self$`stop` <- `stop`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return GenomicElement5 as a base R list.
    #' @examples
    #' # convert array of GenomicElement5 (x) to a data frame
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
    #' Convert GenomicElement5 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElement5Object <- list()
      if (!is.null(self$`name`)) {
        GenomicElement5Object[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`chr`)) {
        GenomicElement5Object[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        GenomicElement5Object[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`stop`)) {
        GenomicElement5Object[["stop"]] <-
          self$`stop`
      }
      if (!is.null(self$`type`)) {
        GenomicElement5Object[["type"]] <-
          self$`type`
      }
      return(GenomicElement5Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement5
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement5
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`stop`)) {
        self$`stop` <- this_object$`stop`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElement5 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement5
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement5
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`stop` <- this_object$`stop`
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElement5 and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement5: the required field `name` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement5: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement5: the required field `start` is missing."))
      }
      # check the required field `stop`
      if (!is.null(input_json$`stop`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement5: the required field `stop` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement5: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElement5
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      # check if the required `stop` is null
      if (is.null(self$`stop`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      # check if the required `stop` is null
      if (is.null(self$`stop`)) {
        invalid_fields["stop"] <- "Non-nullable required field `stop` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# GenomicElement5$unlock()
#
## Below is an example to define the print function
# GenomicElement5$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElement5$lock()

