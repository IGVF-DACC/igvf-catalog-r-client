#' Create a new CodingVariant
#'
#' @description
#' CodingVariant Class
#'
#' @docType class
#' @title CodingVariant
#' @description CodingVariant Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field aapos  numeric [optional]
#' @field hgvsp  character [optional]
#' @field protein_name  character [optional]
#' @field gene_name  character [optional]
#' @field ref  character [optional]
#' @field alt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CodingVariant <- R6::R6Class(
  "CodingVariant",
  public = list(
    `_id` = NULL,
    `aapos` = NULL,
    `hgvsp` = NULL,
    `protein_name` = NULL,
    `gene_name` = NULL,
    `ref` = NULL,
    `alt` = NULL,

    #' @description
    #' Initialize a new CodingVariant class.
    #'
    #' @param _id _id
    #' @param aapos aapos
    #' @param hgvsp hgvsp
    #' @param protein_name protein_name
    #' @param gene_name gene_name
    #' @param ref ref
    #' @param alt alt
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `aapos` = NULL, `hgvsp` = NULL, `protein_name` = NULL, `gene_name` = NULL, `ref` = NULL, `alt` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!is.null(`aapos`)) {
        self$`aapos` <- `aapos`
      }
      if (!is.null(`hgvsp`)) {
        if (!(is.character(`hgvsp`) && length(`hgvsp`) == 1)) {
          stop(paste("Error! Invalid data for `hgvsp`. Must be a string:", `hgvsp`))
        }
        self$`hgvsp` <- `hgvsp`
      }
      if (!is.null(`protein_name`)) {
        if (!(is.character(`protein_name`) && length(`protein_name`) == 1)) {
          stop(paste("Error! Invalid data for `protein_name`. Must be a string:", `protein_name`))
        }
        self$`protein_name` <- `protein_name`
      }
      if (!is.null(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!is.null(`ref`)) {
        if (!(is.character(`ref`) && length(`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", `ref`))
        }
        self$`ref` <- `ref`
      }
      if (!is.null(`alt`)) {
        if (!(is.character(`alt`) && length(`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", `alt`))
        }
        self$`alt` <- `alt`
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
    #' @return CodingVariant as a base R list.
    #' @examples
    #' # convert array of CodingVariant (x) to a data frame
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
    #' Convert CodingVariant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CodingVariantObject <- list()
      if (!is.null(self$`_id`)) {
        CodingVariantObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`aapos`)) {
        CodingVariantObject[["aapos"]] <-
          self$`aapos`
      }
      if (!is.null(self$`hgvsp`)) {
        CodingVariantObject[["hgvsp"]] <-
          self$`hgvsp`
      }
      if (!is.null(self$`protein_name`)) {
        CodingVariantObject[["protein_name"]] <-
          self$`protein_name`
      }
      if (!is.null(self$`gene_name`)) {
        CodingVariantObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`ref`)) {
        CodingVariantObject[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        CodingVariantObject[["alt"]] <-
          self$`alt`
      }
      return(CodingVariantObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariant
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`aapos`)) {
        self$`aapos` <- this_object$`aapos`
      }
      if (!is.null(this_object$`hgvsp`)) {
        self$`hgvsp` <- this_object$`hgvsp`
      }
      if (!is.null(this_object$`protein_name`)) {
        self$`protein_name` <- this_object$`protein_name`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`ref`)) {
        self$`ref` <- this_object$`ref`
      }
      if (!is.null(this_object$`alt`)) {
        self$`alt` <- this_object$`alt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CodingVariant in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariant
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`aapos` <- this_object$`aapos`
      self$`hgvsp` <- this_object$`hgvsp`
      self$`protein_name` <- this_object$`protein_name`
      self$`gene_name` <- this_object$`gene_name`
      self$`ref` <- this_object$`ref`
      self$`alt` <- this_object$`alt`
      self
    },

    #' @description
    #' Validate JSON input with respect to CodingVariant and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CodingVariant: the required field `_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CodingVariant
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
# CodingVariant$unlock()
#
## Below is an example to define the print function
# CodingVariant$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CodingVariant$lock()

