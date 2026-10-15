#' Create a new Sources
#'
#' @description
#' Sources Class
#'
#' @docType class
#' @title Sources
#' @description Sources Class
#' @format An \code{R6Class} generator object
#' @field label  character
#' @field source  character
#' @field neg_log10_pvalue  numeric [optional]
#' @field biological_context  character
#' @field name  character
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Sources <- R6::R6Class(
  "Sources",
  public = list(
    `label` = NULL,
    `source` = NULL,
    `neg_log10_pvalue` = NULL,
    `biological_context` = NULL,
    `name` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Sources class.
    #'
    #' @param label label
    #' @param source source
    #' @param biological_context biological_context
    #' @param name name
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`label`, `source`, `biological_context`, `name`, `neg_log10_pvalue` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
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
    #' @return Sources as a base R list.
    #' @examples
    #' # convert array of Sources (x) to a data frame
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
    #' Convert Sources to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SourcesObject <- list()
      if (!is.null(self$`label`)) {
        SourcesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`source`)) {
        SourcesObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        SourcesObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`biological_context`)) {
        SourcesObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`name`)) {
        SourcesObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`files_filesets`)) {
        SourcesObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(SourcesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Sources
    #'
    #' @param input_json the JSON input
    #' @return the instance of Sources
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return Sources in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Sources
    #'
    #' @param input_json the JSON input
    #' @return the instance of Sources
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label` <- this_object$`label`
      self$`source` <- this_object$`source`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`biological_context` <- this_object$`biological_context`
      self$`name` <- this_object$`name`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Sources and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources: the required field `label` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources: the required field `source` is missing."))
      }
      # check the required field `biological_context`
      if (!is.null(input_json$`biological_context`)) {
        if (!(is.character(input_json$`biological_context`) && length(input_json$`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", input_json$`biological_context`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources: the required field `biological_context` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Sources
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
        invalid_fields["biological_context"] <- "Non-nullable required field `biological_context` cannot be null."
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
# Sources$unlock()
#
## Below is an example to define the print function
# Sources$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Sources$lock()

