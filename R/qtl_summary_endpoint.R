#' Create a new QtlSummaryEndpoint
#'
#' @description
#' QtlSummaryEndpoint Class
#'
#' @docType class
#' @title QtlSummaryEndpoint
#' @description QtlSummaryEndpoint Class
#' @format An \code{R6Class} generator object
#' @field qtl_type  character
#' @field neg_log10_pvalue  numeric [optional]
#' @field chr  character
#' @field biological_context  character [optional]
#' @field effect_size  numeric [optional]
#' @field gene  \link{Gene4} [optional]
#' @field name  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QtlSummaryEndpoint <- R6::R6Class(
  "QtlSummaryEndpoint",
  public = list(
    `qtl_type` = NULL,
    `neg_log10_pvalue` = NULL,
    `chr` = NULL,
    `biological_context` = NULL,
    `effect_size` = NULL,
    `gene` = NULL,
    `name` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new QtlSummaryEndpoint class.
    #'
    #' @param qtl_type qtl_type
    #' @param chr chr
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param biological_context biological_context
    #' @param effect_size effect_size
    #' @param gene gene
    #' @param name name
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`qtl_type`, `chr`, `neg_log10_pvalue` = NULL, `biological_context` = NULL, `effect_size` = NULL, `gene` = NULL, `name` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`qtl_type`)) {
        if (!(is.character(`qtl_type`) && length(`qtl_type`) == 1)) {
          stop(paste("Error! Invalid data for `qtl_type`. Must be a string:", `qtl_type`))
        }
        self$`qtl_type` <- `qtl_type`
      }
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!is.null(`effect_size`)) {
        self$`effect_size` <- `effect_size`
      }
      if (!is.null(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!is.null(`name`)) {
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
    #' @return QtlSummaryEndpoint as a base R list.
    #' @examples
    #' # convert array of QtlSummaryEndpoint (x) to a data frame
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
    #' Convert QtlSummaryEndpoint to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QtlSummaryEndpointObject <- list()
      if (!is.null(self$`qtl_type`)) {
        QtlSummaryEndpointObject[["qtl_type"]] <-
          self$`qtl_type`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        QtlSummaryEndpointObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`chr`)) {
        QtlSummaryEndpointObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`biological_context`)) {
        QtlSummaryEndpointObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`effect_size`)) {
        QtlSummaryEndpointObject[["effect_size"]] <-
          self$`effect_size`
      }
      if (!is.null(self$`gene`)) {
        QtlSummaryEndpointObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        QtlSummaryEndpointObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`files_filesets`)) {
        QtlSummaryEndpointObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(QtlSummaryEndpointObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QtlSummaryEndpoint
    #'
    #' @param input_json the JSON input
    #' @return the instance of QtlSummaryEndpoint
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`qtl_type`)) {
        self$`qtl_type` <- this_object$`qtl_type`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`effect_size`)) {
        self$`effect_size` <- this_object$`effect_size`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- Gene4$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
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
    #' @return QtlSummaryEndpoint in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QtlSummaryEndpoint
    #'
    #' @param input_json the JSON input
    #' @return the instance of QtlSummaryEndpoint
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`qtl_type` <- this_object$`qtl_type`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`chr` <- this_object$`chr`
      self$`biological_context` <- this_object$`biological_context`
      self$`effect_size` <- this_object$`effect_size`
      self$`gene` <- Gene4$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to QtlSummaryEndpoint and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `qtl_type`
      if (!is.null(input_json$`qtl_type`)) {
        if (!(is.character(input_json$`qtl_type`) && length(input_json$`qtl_type`) == 1)) {
          stop(paste("Error! Invalid data for `qtl_type`. Must be a string:", input_json$`qtl_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QtlSummaryEndpoint: the required field `qtl_type` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QtlSummaryEndpoint: the required field `chr` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QtlSummaryEndpoint
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `qtl_type` is null
      if (is.null(self$`qtl_type`)) {
        return(FALSE)
      }

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
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
      # check if the required `qtl_type` is null
      if (is.null(self$`qtl_type`)) {
        invalid_fields["qtl_type"] <- "Non-nullable required field `qtl_type` cannot be null."
      }

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
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
# QtlSummaryEndpoint$unlock()
#
## Below is an example to define the print function
# QtlSummaryEndpoint$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QtlSummaryEndpoint$lock()

