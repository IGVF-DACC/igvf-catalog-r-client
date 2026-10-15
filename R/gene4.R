#' Create a new Gene4
#'
#' @description
#' Gene4 Class
#'
#' @docType class
#' @title Gene4
#' @description Gene4 Class
#' @format An \code{R6Class} generator object
#' @field gene_name  character
#' @field gene_id  character
#' @field gene_start  numeric
#' @field gene_end  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Gene4 <- R6::R6Class(
  "Gene4",
  public = list(
    `gene_name` = NULL,
    `gene_id` = NULL,
    `gene_start` = NULL,
    `gene_end` = NULL,

    #' @description
    #' Initialize a new Gene4 class.
    #'
    #' @param gene_name gene_name
    #' @param gene_id gene_id
    #' @param gene_start gene_start
    #' @param gene_end gene_end
    #' @param ... Other optional arguments.
    initialize = function(`gene_name`, `gene_id`, `gene_start`, `gene_end`, ...) {
      if (!missing(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!missing(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!missing(`gene_start`)) {
        self$`gene_start` <- `gene_start`
      }
      if (!missing(`gene_end`)) {
        self$`gene_end` <- `gene_end`
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
    #' @return Gene4 as a base R list.
    #' @examples
    #' # convert array of Gene4 (x) to a data frame
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
    #' Convert Gene4 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Gene4Object <- list()
      if (!is.null(self$`gene_name`)) {
        Gene4Object[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`gene_id`)) {
        Gene4Object[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`gene_start`)) {
        Gene4Object[["gene_start"]] <-
          self$`gene_start`
      }
      if (!is.null(self$`gene_end`)) {
        Gene4Object[["gene_end"]] <-
          self$`gene_end`
      }
      return(Gene4Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of Gene4
    #'
    #' @param input_json the JSON input
    #' @return the instance of Gene4
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`gene_start`)) {
        self$`gene_start` <- this_object$`gene_start`
      }
      if (!is.null(this_object$`gene_end`)) {
        self$`gene_end` <- this_object$`gene_end`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Gene4 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Gene4
    #'
    #' @param input_json the JSON input
    #' @return the instance of Gene4
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_name` <- this_object$`gene_name`
      self$`gene_id` <- this_object$`gene_id`
      self$`gene_start` <- this_object$`gene_start`
      self$`gene_end` <- this_object$`gene_end`
      self
    },

    #' @description
    #' Validate JSON input with respect to Gene4 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gene_name`
      if (!is.null(input_json$`gene_name`)) {
        if (!(is.character(input_json$`gene_name`) && length(input_json$`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", input_json$`gene_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene4: the required field `gene_name` is missing."))
      }
      # check the required field `gene_id`
      if (!is.null(input_json$`gene_id`)) {
        if (!(is.character(input_json$`gene_id`) && length(input_json$`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", input_json$`gene_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene4: the required field `gene_id` is missing."))
      }
      # check the required field `gene_start`
      if (!is.null(input_json$`gene_start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene4: the required field `gene_start` is missing."))
      }
      # check the required field `gene_end`
      if (!is.null(input_json$`gene_end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene4: the required field `gene_end` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Gene4
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        return(FALSE)
      }

      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        return(FALSE)
      }

      # check if the required `gene_start` is null
      if (is.null(self$`gene_start`)) {
        return(FALSE)
      }

      # check if the required `gene_end` is null
      if (is.null(self$`gene_end`)) {
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
      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        invalid_fields["gene_name"] <- "Non-nullable required field `gene_name` cannot be null."
      }

      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        invalid_fields["gene_id"] <- "Non-nullable required field `gene_id` cannot be null."
      }

      # check if the required `gene_start` is null
      if (is.null(self$`gene_start`)) {
        invalid_fields["gene_start"] <- "Non-nullable required field `gene_start` cannot be null."
      }

      # check if the required `gene_end` is null
      if (is.null(self$`gene_end`)) {
        invalid_fields["gene_end"] <- "Non-nullable required field `gene_end` cannot be null."
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
# Gene4$unlock()
#
## Below is an example to define the print function
# Gene4$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Gene4$lock()

