#' Create a new Motif
#'
#' @description
#' Motif Class
#'
#' @docType class
#' @title Motif
#' @description Motif Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field tf_name  character
#' @field length  numeric
#' @field pwm  list(list(character))
#' @field source  character
#' @field source_url  character
#' @field class  character [optional]
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Motif <- R6::R6Class(
  "Motif",
  public = list(
    `name` = NULL,
    `tf_name` = NULL,
    `length` = NULL,
    `pwm` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `class` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Motif class.
    #'
    #' @param name name
    #' @param tf_name tf_name
    #' @param length length
    #' @param pwm pwm
    #' @param source source
    #' @param source_url source_url
    #' @param class class
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`name`, `tf_name`, `length`, `pwm`, `source`, `source_url`, `class` = NULL, `method` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`tf_name`)) {
        if (!(is.character(`tf_name`) && length(`tf_name`) == 1)) {
          stop(paste("Error! Invalid data for `tf_name`. Must be a string:", `tf_name`))
        }
        self$`tf_name` <- `tf_name`
      }
      if (!missing(`length`)) {
        self$`length` <- `length`
      }
      if (!missing(`pwm`)) {
        stopifnot(is.vector(`pwm`), length(`pwm`) != 0)
        sapply(`pwm`, function(x) stopifnot(R6::is.R6(x)))
        self$`pwm` <- `pwm`
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
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
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
    #' @return Motif as a base R list.
    #' @examples
    #' # convert array of Motif (x) to a data frame
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
    #' Convert Motif to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MotifObject <- list()
      if (!is.null(self$`name`)) {
        MotifObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`tf_name`)) {
        MotifObject[["tf_name"]] <-
          self$`tf_name`
      }
      if (!is.null(self$`length`)) {
        MotifObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`pwm`)) {
        MotifObject[["pwm"]] <-
          lapply(self$`pwm`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`source`)) {
        MotifObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        MotifObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`class`)) {
        MotifObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        MotifObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        MotifObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(MotifObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Motif
    #'
    #' @param input_json the JSON input
    #' @return the instance of Motif
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`tf_name`)) {
        self$`tf_name` <- this_object$`tf_name`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`pwm`)) {
        self$`pwm` <- ApiClient$new()$deserializeObj(this_object$`pwm`, "array[Array]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
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
    #' @return Motif in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Motif
    #'
    #' @param input_json the JSON input
    #' @return the instance of Motif
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`tf_name` <- this_object$`tf_name`
      self$`length` <- this_object$`length`
      self$`pwm` <- ApiClient$new()$deserializeObj(this_object$`pwm`, "array[Array]", loadNamespace("igvfcatalogclient"))
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Motif and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Motif: the required field `name` is missing."))
      }
      # check the required field `tf_name`
      if (!is.null(input_json$`tf_name`)) {
        if (!(is.character(input_json$`tf_name`) && length(input_json$`tf_name`) == 1)) {
          stop(paste("Error! Invalid data for `tf_name`. Must be a string:", input_json$`tf_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Motif: the required field `tf_name` is missing."))
      }
      # check the required field `length`
      if (!is.null(input_json$`length`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Motif: the required field `length` is missing."))
      }
      # check the required field `pwm`
      if (!is.null(input_json$`pwm`)) {
        stopifnot(is.vector(input_json$`pwm`), length(input_json$`pwm`) != 0)
        tmp <- sapply(input_json$`pwm`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Motif: the required field `pwm` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Motif: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Motif: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Motif
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

      # check if the required `tf_name` is null
      if (is.null(self$`tf_name`)) {
        return(FALSE)
      }

      # check if the required `length` is null
      if (is.null(self$`length`)) {
        return(FALSE)
      }

      # check if the required `pwm` is null
      if (is.null(self$`pwm`)) {
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

      # check if the required `tf_name` is null
      if (is.null(self$`tf_name`)) {
        invalid_fields["tf_name"] <- "Non-nullable required field `tf_name` cannot be null."
      }

      # check if the required `length` is null
      if (is.null(self$`length`)) {
        invalid_fields["length"] <- "Non-nullable required field `length` cannot be null."
      }

      # check if the required `pwm` is null
      if (is.null(self$`pwm`)) {
        invalid_fields["pwm"] <- "Non-nullable required field `pwm` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
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
# Motif$unlock()
#
## Below is an example to define the print function
# Motif$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Motif$lock()

