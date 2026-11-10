#' Create a new Sources5
#'
#' @description
#' Sources5 Class
#'
#' @docType class
#' @title Sources5
#' @description Sources5 Class
#' @format An \code{R6Class} generator object
#' @field motif  character
#' @field source  character
#' @field name  character
#' @field files_filesets  character [optional]
#' @field preferred_assay_titles  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Sources5 <- R6::R6Class(
  "Sources5",
  public = list(
    `motif` = NULL,
    `source` = NULL,
    `name` = NULL,
    `files_filesets` = NULL,
    `preferred_assay_titles` = NULL,

    #' @description
    #' Initialize a new Sources5 class.
    #'
    #' @param motif motif
    #' @param source source
    #' @param name name
    #' @param files_filesets files_filesets
    #' @param preferred_assay_titles preferred_assay_titles
    #' @param ... Other optional arguments.
    initialize = function(`motif`, `source`, `name`, `files_filesets` = NULL, `preferred_assay_titles` = NULL, ...) {
      if (!missing(`motif`)) {
        if (!(is.character(`motif`) && length(`motif`) == 1)) {
          stop(paste("Error! Invalid data for `motif`. Must be a string:", `motif`))
        }
        self$`motif` <- `motif`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!is.null(`preferred_assay_titles`)) {
        stopifnot(is.vector(`preferred_assay_titles`), length(`preferred_assay_titles`) != 0)
        sapply(`preferred_assay_titles`, function(x) stopifnot(is.character(x)))
        self$`preferred_assay_titles` <- `preferred_assay_titles`
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
    #' @return Sources5 as a base R list.
    #' @examples
    #' # convert array of Sources5 (x) to a data frame
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
    #' Convert Sources5 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Sources5Object <- list()
      if (!is.null(self$`motif`)) {
        Sources5Object[["motif"]] <-
          self$`motif`
      }
      if (!is.null(self$`source`)) {
        Sources5Object[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`name`)) {
        Sources5Object[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`files_filesets`)) {
        Sources5Object[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`preferred_assay_titles`)) {
        Sources5Object[["preferred_assay_titles"]] <-
          self$`preferred_assay_titles`
      }
      return(Sources5Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of Sources5
    #'
    #' @param input_json the JSON input
    #' @return the instance of Sources5
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`motif`)) {
        self$`motif` <- this_object$`motif`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`preferred_assay_titles`)) {
        self$`preferred_assay_titles` <- ApiClient$new()$deserializeObj(this_object$`preferred_assay_titles`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Sources5 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Sources5
    #'
    #' @param input_json the JSON input
    #' @return the instance of Sources5
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`motif` <- this_object$`motif`
      self$`source` <- this_object$`source`
      self$`name` <- this_object$`name`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`preferred_assay_titles` <- ApiClient$new()$deserializeObj(this_object$`preferred_assay_titles`, "array[character]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Sources5 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `motif`
      if (!is.null(input_json$`motif`)) {
        if (!(is.character(input_json$`motif`) && length(input_json$`motif`) == 1)) {
          stop(paste("Error! Invalid data for `motif`. Must be a string:", input_json$`motif`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources5: the required field `motif` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources5: the required field `source` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Sources5: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Sources5
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source` is null
      if (is.null(self$`source`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
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
# Sources5$unlock()
#
## Below is an example to define the print function
# Sources5$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Sources5$lock()

