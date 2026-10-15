#' Create a new ProteinBasic
#'
#' @description
#' ProteinBasic Class
#'
#' @docType class
#' @title ProteinBasic
#' @description ProteinBasic Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character [optional]
#' @field uniprot_names  list(character) [optional]
#' @field uniprot_full_names  list(character) [optional]
#' @field uniprot_ids  list(character) [optional]
#' @field MANE_Select  character [optional]
#' @field organism  character
#' @field source  character
#' @field source_url  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinBasic <- R6::R6Class(
  "ProteinBasic",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `uniprot_names` = NULL,
    `uniprot_full_names` = NULL,
    `uniprot_ids` = NULL,
    `MANE_Select` = NULL,
    `organism` = NULL,
    `source` = NULL,
    `source_url` = NULL,

    #' @description
    #' Initialize a new ProteinBasic class.
    #'
    #' @param _id _id
    #' @param organism organism
    #' @param source source
    #' @param source_url source_url
    #' @param name name
    #' @param uniprot_names uniprot_names
    #' @param uniprot_full_names uniprot_full_names
    #' @param uniprot_ids uniprot_ids
    #' @param MANE_Select MANE_Select
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `organism`, `source`, `source_url`, `name` = NULL, `uniprot_names` = NULL, `uniprot_full_names` = NULL, `uniprot_ids` = NULL, `MANE_Select` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`uniprot_names`)) {
        stopifnot(is.vector(`uniprot_names`), length(`uniprot_names`) != 0)
        sapply(`uniprot_names`, function(x) stopifnot(is.character(x)))
        self$`uniprot_names` <- `uniprot_names`
      }
      if (!is.null(`uniprot_full_names`)) {
        stopifnot(is.vector(`uniprot_full_names`), length(`uniprot_full_names`) != 0)
        sapply(`uniprot_full_names`, function(x) stopifnot(is.character(x)))
        self$`uniprot_full_names` <- `uniprot_full_names`
      }
      if (!is.null(`uniprot_ids`)) {
        stopifnot(is.vector(`uniprot_ids`), length(`uniprot_ids`) != 0)
        sapply(`uniprot_ids`, function(x) stopifnot(is.character(x)))
        self$`uniprot_ids` <- `uniprot_ids`
      }
      if (!is.null(`MANE_Select`)) {
        if (!(is.logical(`MANE_Select`) && length(`MANE_Select`) == 1)) {
          stop(paste("Error! Invalid data for `MANE_Select`. Must be a boolean:", `MANE_Select`))
        }
        self$`MANE_Select` <- `MANE_Select`
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
    #' @return ProteinBasic as a base R list.
    #' @examples
    #' # convert array of ProteinBasic (x) to a data frame
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
    #' Convert ProteinBasic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProteinBasicObject <- list()
      if (!is.null(self$`_id`)) {
        ProteinBasicObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        ProteinBasicObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`uniprot_names`)) {
        ProteinBasicObject[["uniprot_names"]] <-
          self$`uniprot_names`
      }
      if (!is.null(self$`uniprot_full_names`)) {
        ProteinBasicObject[["uniprot_full_names"]] <-
          self$`uniprot_full_names`
      }
      if (!is.null(self$`uniprot_ids`)) {
        ProteinBasicObject[["uniprot_ids"]] <-
          self$`uniprot_ids`
      }
      if (!is.null(self$`MANE_Select`)) {
        ProteinBasicObject[["MANE_Select"]] <-
          self$`MANE_Select`
      }
      if (!is.null(self$`organism`)) {
        ProteinBasicObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`source`)) {
        ProteinBasicObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        ProteinBasicObject[["source_url"]] <-
          self$`source_url`
      }
      return(ProteinBasicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinBasic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinBasic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`uniprot_names`)) {
        self$`uniprot_names` <- ApiClient$new()$deserializeObj(this_object$`uniprot_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`uniprot_full_names`)) {
        self$`uniprot_full_names` <- ApiClient$new()$deserializeObj(this_object$`uniprot_full_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`uniprot_ids`)) {
        self$`uniprot_ids` <- ApiClient$new()$deserializeObj(this_object$`uniprot_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`MANE_Select`)) {
        self$`MANE_Select` <- this_object$`MANE_Select`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProteinBasic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinBasic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinBasic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`uniprot_names` <- ApiClient$new()$deserializeObj(this_object$`uniprot_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`uniprot_full_names` <- ApiClient$new()$deserializeObj(this_object$`uniprot_full_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`uniprot_ids` <- ApiClient$new()$deserializeObj(this_object$`uniprot_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`MANE_Select` <- this_object$`MANE_Select`
      self$`organism` <- this_object$`organism`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProteinBasic and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProteinBasic: the required field `_id` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinBasic: the required field `organism` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinBasic: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinBasic: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProteinBasic
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

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        invalid_fields["organism"] <- "Non-nullable required field `organism` cannot be null."
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
# ProteinBasic$unlock()
#
## Below is an example to define the print function
# ProteinBasic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProteinBasic$lock()

