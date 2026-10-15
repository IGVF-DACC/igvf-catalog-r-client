#' Create a new CodingVariantsSummary
#'
#' @description
#' CodingVariantsSummary Class
#'
#' @docType class
#' @title CodingVariantsSummary
#' @description CodingVariantsSummary Class
#' @format An \code{R6Class} generator object
#' @field variant_id  character [optional]
#' @field hgvsp  character [optional]
#' @field gene_name  character [optional]
#' @field transcript_id  character [optional]
#' @field dataType  character
#' @field score  numeric
#' @field portalLink  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CodingVariantsSummary <- R6::R6Class(
  "CodingVariantsSummary",
  public = list(
    `variant_id` = NULL,
    `hgvsp` = NULL,
    `gene_name` = NULL,
    `transcript_id` = NULL,
    `dataType` = NULL,
    `score` = NULL,
    `portalLink` = NULL,

    #' @description
    #' Initialize a new CodingVariantsSummary class.
    #'
    #' @param dataType dataType
    #' @param score score
    #' @param portalLink portalLink
    #' @param variant_id variant_id
    #' @param hgvsp hgvsp
    #' @param gene_name gene_name
    #' @param transcript_id transcript_id
    #' @param ... Other optional arguments.
    initialize = function(`dataType`, `score`, `portalLink`, `variant_id` = NULL, `hgvsp` = NULL, `gene_name` = NULL, `transcript_id` = NULL, ...) {
      if (!missing(`dataType`)) {
        if (!(is.character(`dataType`) && length(`dataType`) == 1)) {
          stop(paste("Error! Invalid data for `dataType`. Must be a string:", `dataType`))
        }
        self$`dataType` <- `dataType`
      }
      if (!missing(`score`)) {
        self$`score` <- `score`
      }
      if (!missing(`portalLink`)) {
        if (!(is.character(`portalLink`) && length(`portalLink`) == 1)) {
          stop(paste("Error! Invalid data for `portalLink`. Must be a string:", `portalLink`))
        }
        self$`portalLink` <- `portalLink`
      }
      if (!is.null(`variant_id`)) {
        if (!(is.character(`variant_id`) && length(`variant_id`) == 1)) {
          stop(paste("Error! Invalid data for `variant_id`. Must be a string:", `variant_id`))
        }
        self$`variant_id` <- `variant_id`
      }
      if (!is.null(`hgvsp`)) {
        if (!(is.character(`hgvsp`) && length(`hgvsp`) == 1)) {
          stop(paste("Error! Invalid data for `hgvsp`. Must be a string:", `hgvsp`))
        }
        self$`hgvsp` <- `hgvsp`
      }
      if (!is.null(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!is.null(`transcript_id`)) {
        if (!(is.character(`transcript_id`) && length(`transcript_id`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_id`. Must be a string:", `transcript_id`))
        }
        self$`transcript_id` <- `transcript_id`
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
    #' @return CodingVariantsSummary as a base R list.
    #' @examples
    #' # convert array of CodingVariantsSummary (x) to a data frame
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
    #' Convert CodingVariantsSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CodingVariantsSummaryObject <- list()
      if (!is.null(self$`variant_id`)) {
        CodingVariantsSummaryObject[["variant_id"]] <-
          self$`variant_id`
      }
      if (!is.null(self$`hgvsp`)) {
        CodingVariantsSummaryObject[["hgvsp"]] <-
          self$`hgvsp`
      }
      if (!is.null(self$`gene_name`)) {
        CodingVariantsSummaryObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`transcript_id`)) {
        CodingVariantsSummaryObject[["transcript_id"]] <-
          self$`transcript_id`
      }
      if (!is.null(self$`dataType`)) {
        CodingVariantsSummaryObject[["dataType"]] <-
          self$`dataType`
      }
      if (!is.null(self$`score`)) {
        CodingVariantsSummaryObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`portalLink`)) {
        CodingVariantsSummaryObject[["portalLink"]] <-
          self$`portalLink`
      }
      return(CodingVariantsSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariantsSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariantsSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variant_id`)) {
        self$`variant_id` <- this_object$`variant_id`
      }
      if (!is.null(this_object$`hgvsp`)) {
        self$`hgvsp` <- this_object$`hgvsp`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`transcript_id`)) {
        self$`transcript_id` <- this_object$`transcript_id`
      }
      if (!is.null(this_object$`dataType`)) {
        self$`dataType` <- this_object$`dataType`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`portalLink`)) {
        self$`portalLink` <- this_object$`portalLink`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CodingVariantsSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariantsSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariantsSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variant_id` <- this_object$`variant_id`
      self$`hgvsp` <- this_object$`hgvsp`
      self$`gene_name` <- this_object$`gene_name`
      self$`transcript_id` <- this_object$`transcript_id`
      self$`dataType` <- this_object$`dataType`
      self$`score` <- this_object$`score`
      self$`portalLink` <- this_object$`portalLink`
      self
    },

    #' @description
    #' Validate JSON input with respect to CodingVariantsSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `dataType`
      if (!is.null(input_json$`dataType`)) {
        if (!(is.character(input_json$`dataType`) && length(input_json$`dataType`) == 1)) {
          stop(paste("Error! Invalid data for `dataType`. Must be a string:", input_json$`dataType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsSummary: the required field `dataType` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsSummary: the required field `score` is missing."))
      }
      # check the required field `portalLink`
      if (!is.null(input_json$`portalLink`)) {
        if (!(is.character(input_json$`portalLink`) && length(input_json$`portalLink`) == 1)) {
          stop(paste("Error! Invalid data for `portalLink`. Must be a string:", input_json$`portalLink`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsSummary: the required field `portalLink` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CodingVariantsSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `dataType` is null
      if (is.null(self$`dataType`)) {
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
      # check if the required `dataType` is null
      if (is.null(self$`dataType`)) {
        invalid_fields["dataType"] <- "Non-nullable required field `dataType` cannot be null."
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
# CodingVariantsSummary$unlock()
#
## Below is an example to define the print function
# CodingVariantsSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CodingVariantsSummary$lock()

