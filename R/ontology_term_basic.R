#' Create a new OntologyTermBasic
#'
#' @description
#' OntologyTermBasic Class
#'
#' @docType class
#' @title OntologyTermBasic
#' @description OntologyTermBasic Class
#' @format An \code{R6Class} generator object
#' @field uri  character
#' @field term_id  character
#' @field name  character
#' @field synonyms  list(character)
#' @field description  character
#' @field source  character
#' @field subontology  character [optional]
#' @field class  character [optional]
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OntologyTermBasic <- R6::R6Class(
  "OntologyTermBasic",
  public = list(
    `uri` = NULL,
    `term_id` = NULL,
    `name` = NULL,
    `synonyms` = NULL,
    `description` = NULL,
    `source` = NULL,
    `subontology` = NULL,
    `class` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new OntologyTermBasic class.
    #'
    #' @param uri uri
    #' @param term_id term_id
    #' @param name name
    #' @param synonyms synonyms
    #' @param description description
    #' @param source source
    #' @param subontology subontology
    #' @param class class
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`uri`, `term_id`, `name`, `synonyms`, `description`, `source`, `subontology` = NULL, `class` = NULL, `method` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`uri`)) {
        if (!(is.character(`uri`) && length(`uri`) == 1)) {
          stop(paste("Error! Invalid data for `uri`. Must be a string:", `uri`))
        }
        self$`uri` <- `uri`
      }
      if (!missing(`term_id`)) {
        if (!(is.character(`term_id`) && length(`term_id`) == 1)) {
          stop(paste("Error! Invalid data for `term_id`. Must be a string:", `term_id`))
        }
        self$`term_id` <- `term_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`synonyms`)) {
        stopifnot(is.vector(`synonyms`), length(`synonyms`) != 0)
        sapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`subontology`)) {
        if (!(is.character(`subontology`) && length(`subontology`) == 1)) {
          stop(paste("Error! Invalid data for `subontology`. Must be a string:", `subontology`))
        }
        self$`subontology` <- `subontology`
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
    #' @return OntologyTermBasic as a base R list.
    #' @examples
    #' # convert array of OntologyTermBasic (x) to a data frame
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
    #' Convert OntologyTermBasic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OntologyTermBasicObject <- list()
      if (!is.null(self$`uri`)) {
        OntologyTermBasicObject[["uri"]] <-
          self$`uri`
      }
      if (!is.null(self$`term_id`)) {
        OntologyTermBasicObject[["term_id"]] <-
          self$`term_id`
      }
      if (!is.null(self$`name`)) {
        OntologyTermBasicObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`synonyms`)) {
        OntologyTermBasicObject[["synonyms"]] <-
          self$`synonyms`
      }
      if (!is.null(self$`description`)) {
        OntologyTermBasicObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`source`)) {
        OntologyTermBasicObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`subontology`)) {
        OntologyTermBasicObject[["subontology"]] <-
          self$`subontology`
      }
      if (!is.null(self$`class`)) {
        OntologyTermBasicObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        OntologyTermBasicObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        OntologyTermBasicObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(OntologyTermBasicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OntologyTermBasic
    #'
    #' @param input_json the JSON input
    #' @return the instance of OntologyTermBasic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uri`)) {
        self$`uri` <- this_object$`uri`
      }
      if (!is.null(this_object$`term_id`)) {
        self$`term_id` <- this_object$`term_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`synonyms`)) {
        self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`subontology`)) {
        self$`subontology` <- this_object$`subontology`
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
    #' @return OntologyTermBasic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OntologyTermBasic
    #'
    #' @param input_json the JSON input
    #' @return the instance of OntologyTermBasic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uri` <- this_object$`uri`
      self$`term_id` <- this_object$`term_id`
      self$`name` <- this_object$`name`
      self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`description` <- this_object$`description`
      self$`source` <- this_object$`source`
      self$`subontology` <- this_object$`subontology`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to OntologyTermBasic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `uri`
      if (!is.null(input_json$`uri`)) {
        if (!(is.character(input_json$`uri`) && length(input_json$`uri`) == 1)) {
          stop(paste("Error! Invalid data for `uri`. Must be a string:", input_json$`uri`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermBasic: the required field `uri` is missing."))
      }
      # check the required field `term_id`
      if (!is.null(input_json$`term_id`)) {
        if (!(is.character(input_json$`term_id`) && length(input_json$`term_id`) == 1)) {
          stop(paste("Error! Invalid data for `term_id`. Must be a string:", input_json$`term_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermBasic: the required field `term_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermBasic: the required field `name` is missing."))
      }
      # check the required field `synonyms`
      if (!is.null(input_json$`synonyms`)) {
        stopifnot(is.vector(input_json$`synonyms`), length(input_json$`synonyms`) != 0)
        tmp <- sapply(input_json$`synonyms`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermBasic: the required field `synonyms` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermBasic: the required field `description` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermBasic: the required field `source` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OntologyTermBasic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `uri` is null
      if (is.null(self$`uri`)) {
        return(FALSE)
      }

      # check if the required `term_id` is null
      if (is.null(self$`term_id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `synonyms` is null
      if (is.null(self$`synonyms`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
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
      # check if the required `uri` is null
      if (is.null(self$`uri`)) {
        invalid_fields["uri"] <- "Non-nullable required field `uri` cannot be null."
      }

      # check if the required `term_id` is null
      if (is.null(self$`term_id`)) {
        invalid_fields["term_id"] <- "Non-nullable required field `term_id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `synonyms` is null
      if (is.null(self$`synonyms`)) {
        invalid_fields["synonyms"] <- "Non-nullable required field `synonyms` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
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
# OntologyTermBasic$unlock()
#
## Below is an example to define the print function
# OntologyTermBasic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OntologyTermBasic$lock()

