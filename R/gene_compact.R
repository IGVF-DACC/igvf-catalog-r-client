#' Create a new GeneCompact
#'
#' @description
#' GeneCompact Class
#'
#' @docType class
#' @title GeneCompact
#' @description GeneCompact Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field chr  character
#' @field gene_id  character
#' @field hgnc  character [optional]
#' @field name  character
#' @field organism  character
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeneCompact <- R6::R6Class(
  "GeneCompact",
  public = list(
    `_id` = NULL,
    `chr` = NULL,
    `gene_id` = NULL,
    `hgnc` = NULL,
    `name` = NULL,
    `organism` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new GeneCompact class.
    #'
    #' @param _id _id
    #' @param chr chr
    #' @param gene_id gene_id
    #' @param name name
    #' @param organism organism
    #' @param hgnc hgnc
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `chr`, `gene_id`, `name`, `organism`, `hgnc` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!missing(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
      }
      if (!is.null(`hgnc`)) {
        if (!(is.character(`hgnc`) && length(`hgnc`) == 1)) {
          stop(paste("Error! Invalid data for `hgnc`. Must be a string:", `hgnc`))
        }
        self$`hgnc` <- `hgnc`
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
    #' @return GeneCompact as a base R list.
    #' @examples
    #' # convert array of GeneCompact (x) to a data frame
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
    #' Convert GeneCompact to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeneCompactObject <- list()
      if (!is.null(self$`_id`)) {
        GeneCompactObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`chr`)) {
        GeneCompactObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`gene_id`)) {
        GeneCompactObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`hgnc`)) {
        GeneCompactObject[["hgnc"]] <-
          self$`hgnc`
      }
      if (!is.null(self$`name`)) {
        GeneCompactObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organism`)) {
        GeneCompactObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`files_filesets`)) {
        GeneCompactObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(GeneCompactObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeneCompact
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeneCompact
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`hgnc`)) {
        self$`hgnc` <- this_object$`hgnc`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
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
    #' @return GeneCompact in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeneCompact
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeneCompact
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`chr` <- this_object$`chr`
      self$`gene_id` <- this_object$`gene_id`
      self$`hgnc` <- this_object$`hgnc`
      self$`name` <- this_object$`name`
      self$`organism` <- this_object$`organism`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeneCompact and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GeneCompact: the required field `_id` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneCompact: the required field `chr` is missing."))
      }
      # check the required field `gene_id`
      if (!is.null(input_json$`gene_id`)) {
        if (!(is.character(input_json$`gene_id`) && length(input_json$`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", input_json$`gene_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneCompact: the required field `gene_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneCompact: the required field `name` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneCompact: the required field `organism` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeneCompact
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        invalid_fields["gene_id"] <- "Non-nullable required field `gene_id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        invalid_fields["organism"] <- "Non-nullable required field `organism` cannot be null."
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
# GeneCompact$unlock()
#
## Below is an example to define the print function
# GeneCompact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeneCompact$lock()

