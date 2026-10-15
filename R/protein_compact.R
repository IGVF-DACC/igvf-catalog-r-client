#' Create a new ProteinCompact
#'
#' @description
#' ProteinCompact Class
#'
#' @docType class
#' @title ProteinCompact
#' @description ProteinCompact Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field uniprot_names  list(character)
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinCompact <- R6::R6Class(
  "ProteinCompact",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `uniprot_names` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new ProteinCompact class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param uniprot_names uniprot_names
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `uniprot_names`, `files_filesets` = NULL, ...) {
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
      if (!missing(`uniprot_names`)) {
        stopifnot(is.vector(`uniprot_names`), length(`uniprot_names`) != 0)
        sapply(`uniprot_names`, function(x) stopifnot(is.character(x)))
        self$`uniprot_names` <- `uniprot_names`
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
    #' @return ProteinCompact as a base R list.
    #' @examples
    #' # convert array of ProteinCompact (x) to a data frame
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
    #' Convert ProteinCompact to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProteinCompactObject <- list()
      if (!is.null(self$`_id`)) {
        ProteinCompactObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        ProteinCompactObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`uniprot_names`)) {
        ProteinCompactObject[["uniprot_names"]] <-
          self$`uniprot_names`
      }
      if (!is.null(self$`files_filesets`)) {
        ProteinCompactObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(ProteinCompactObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinCompact
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinCompact
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
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProteinCompact in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinCompact
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinCompact
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`uniprot_names` <- ApiClient$new()$deserializeObj(this_object$`uniprot_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProteinCompact and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProteinCompact: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinCompact: the required field `name` is missing."))
      }
      # check the required field `uniprot_names`
      if (!is.null(input_json$`uniprot_names`)) {
        stopifnot(is.vector(input_json$`uniprot_names`), length(input_json$`uniprot_names`) != 0)
        tmp <- sapply(input_json$`uniprot_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinCompact: the required field `uniprot_names` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProteinCompact
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

      # check if the required `uniprot_names` is null
      if (is.null(self$`uniprot_names`)) {
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

      # check if the required `uniprot_names` is null
      if (is.null(self$`uniprot_names`)) {
        invalid_fields["uniprot_names"] <- "Non-nullable required field `uniprot_names` cannot be null."
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
# ProteinCompact$unlock()
#
## Below is an example to define the print function
# ProteinCompact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProteinCompact$lock()

