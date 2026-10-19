#' Create a new GenesVariantsScoreSummary
#'
#' @description
#' GenesVariantsScoreSummary Class
#'
#' @docType class
#' @title GenesVariantsScoreSummary
#' @description GenesVariantsScoreSummary Class
#' @format An \code{R6Class} generator object
#' @field gene_id  character
#' @field score_field  character
#' @field total_edge_count  numeric
#' @field groups  list(\link{Groups13})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesVariantsScoreSummary <- R6::R6Class(
  "GenesVariantsScoreSummary",
  public = list(
    `gene_id` = NULL,
    `score_field` = NULL,
    `total_edge_count` = NULL,
    `groups` = NULL,

    #' @description
    #' Initialize a new GenesVariantsScoreSummary class.
    #'
    #' @param gene_id gene_id
    #' @param score_field score_field
    #' @param total_edge_count total_edge_count
    #' @param groups groups
    #' @param ... Other optional arguments.
    initialize = function(`gene_id`, `score_field`, `total_edge_count`, `groups`, ...) {
      if (!missing(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!missing(`score_field`)) {
        if (!(`score_field` %in% c("effect_size", "log2FC", "neg_log10_pvalue", "neg_log10_pvalue_adj", "power", "posterior_inclusion_probability", "coefficient_stddev"))) {
          stop(paste("Error! \"", `score_field`, "\" cannot be assigned to `score_field`. Must be \"effect_size\", \"log2FC\", \"neg_log10_pvalue\", \"neg_log10_pvalue_adj\", \"power\", \"posterior_inclusion_probability\", \"coefficient_stddev\".", sep = ""))
        }
        if (!(is.character(`score_field`) && length(`score_field`) == 1)) {
          stop(paste("Error! Invalid data for `score_field`. Must be a string:", `score_field`))
        }
        self$`score_field` <- `score_field`
      }
      if (!missing(`total_edge_count`)) {
        self$`total_edge_count` <- `total_edge_count`
      }
      if (!missing(`groups`)) {
        stopifnot(is.vector(`groups`), length(`groups`) != 0)
        sapply(`groups`, function(x) stopifnot(R6::is.R6(x)))
        self$`groups` <- `groups`
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
    #' @return GenesVariantsScoreSummary as a base R list.
    #' @examples
    #' # convert array of GenesVariantsScoreSummary (x) to a data frame
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
    #' Convert GenesVariantsScoreSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesVariantsScoreSummaryObject <- list()
      if (!is.null(self$`gene_id`)) {
        GenesVariantsScoreSummaryObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`score_field`)) {
        GenesVariantsScoreSummaryObject[["score_field"]] <-
          self$`score_field`
      }
      if (!is.null(self$`total_edge_count`)) {
        GenesVariantsScoreSummaryObject[["total_edge_count"]] <-
          self$`total_edge_count`
      }
      if (!is.null(self$`groups`)) {
        GenesVariantsScoreSummaryObject[["groups"]] <-
          lapply(self$`groups`, function(x) x$toSimpleType())
      }
      return(GenesVariantsScoreSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesVariantsScoreSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesVariantsScoreSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`score_field`)) {
        if (!is.null(this_object$`score_field`) && !(this_object$`score_field` %in% c("effect_size", "log2FC", "neg_log10_pvalue", "neg_log10_pvalue_adj", "power", "posterior_inclusion_probability", "coefficient_stddev"))) {
          stop(paste("Error! \"", this_object$`score_field`, "\" cannot be assigned to `score_field`. Must be \"effect_size\", \"log2FC\", \"neg_log10_pvalue\", \"neg_log10_pvalue_adj\", \"power\", \"posterior_inclusion_probability\", \"coefficient_stddev\".", sep = ""))
        }
        self$`score_field` <- this_object$`score_field`
      }
      if (!is.null(this_object$`total_edge_count`)) {
        self$`total_edge_count` <- this_object$`total_edge_count`
      }
      if (!is.null(this_object$`groups`)) {
        self$`groups` <- ApiClient$new()$deserializeObj(this_object$`groups`, "array[Groups13]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesVariantsScoreSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesVariantsScoreSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesVariantsScoreSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_id` <- this_object$`gene_id`
      if (!is.null(this_object$`score_field`) && !(this_object$`score_field` %in% c("effect_size", "log2FC", "neg_log10_pvalue", "neg_log10_pvalue_adj", "power", "posterior_inclusion_probability", "coefficient_stddev"))) {
        stop(paste("Error! \"", this_object$`score_field`, "\" cannot be assigned to `score_field`. Must be \"effect_size\", \"log2FC\", \"neg_log10_pvalue\", \"neg_log10_pvalue_adj\", \"power\", \"posterior_inclusion_probability\", \"coefficient_stddev\".", sep = ""))
      }
      self$`score_field` <- this_object$`score_field`
      self$`total_edge_count` <- this_object$`total_edge_count`
      self$`groups` <- ApiClient$new()$deserializeObj(this_object$`groups`, "array[Groups13]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesVariantsScoreSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gene_id`
      if (!is.null(input_json$`gene_id`)) {
        if (!(is.character(input_json$`gene_id`) && length(input_json$`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", input_json$`gene_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesVariantsScoreSummary: the required field `gene_id` is missing."))
      }
      # check the required field `score_field`
      if (!is.null(input_json$`score_field`)) {
        if (!(is.character(input_json$`score_field`) && length(input_json$`score_field`) == 1)) {
          stop(paste("Error! Invalid data for `score_field`. Must be a string:", input_json$`score_field`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesVariantsScoreSummary: the required field `score_field` is missing."))
      }
      # check the required field `total_edge_count`
      if (!is.null(input_json$`total_edge_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesVariantsScoreSummary: the required field `total_edge_count` is missing."))
      }
      # check the required field `groups`
      if (!is.null(input_json$`groups`)) {
        stopifnot(is.vector(input_json$`groups`), length(input_json$`groups`) != 0)
        tmp <- sapply(input_json$`groups`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesVariantsScoreSummary: the required field `groups` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesVariantsScoreSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        return(FALSE)
      }

      # check if the required `score_field` is null
      if (is.null(self$`score_field`)) {
        return(FALSE)
      }

      # check if the required `total_edge_count` is null
      if (is.null(self$`total_edge_count`)) {
        return(FALSE)
      }

      # check if the required `groups` is null
      if (is.null(self$`groups`)) {
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
      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        invalid_fields["gene_id"] <- "Non-nullable required field `gene_id` cannot be null."
      }

      # check if the required `score_field` is null
      if (is.null(self$`score_field`)) {
        invalid_fields["score_field"] <- "Non-nullable required field `score_field` cannot be null."
      }

      # check if the required `total_edge_count` is null
      if (is.null(self$`total_edge_count`)) {
        invalid_fields["total_edge_count"] <- "Non-nullable required field `total_edge_count` cannot be null."
      }

      # check if the required `groups` is null
      if (is.null(self$`groups`)) {
        invalid_fields["groups"] <- "Non-nullable required field `groups` cannot be null."
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
# GenesVariantsScoreSummary$unlock()
#
## Below is an example to define the print function
# GenesVariantsScoreSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesVariantsScoreSummary$lock()

