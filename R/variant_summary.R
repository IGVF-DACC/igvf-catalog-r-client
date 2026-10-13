#' Create a new VariantSummary
#'
#' @description
#' VariantSummary Class
#'
#' @docType class
#' @title VariantSummary
#' @description VariantSummary Class
#' @format An \code{R6Class} generator object
#' @field summary  \link{Summary}
#' @field allele_frequencies_gnomad  \link{AnyType} [optional]
#' @field cadd_scores  \link{CaddScores} [optional]
#' @field nearest_genes  \link{NearestGenes}
#' @field annotations  \link{Annotations}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantSummary <- R6::R6Class(
  "VariantSummary",
  public = list(
    `summary` = NULL,
    `allele_frequencies_gnomad` = NULL,
    `cadd_scores` = NULL,
    `nearest_genes` = NULL,
    `annotations` = NULL,

    #' @description
    #' Initialize a new VariantSummary class.
    #'
    #' @param summary summary
    #' @param nearest_genes nearest_genes
    #' @param annotations annotations
    #' @param allele_frequencies_gnomad allele_frequencies_gnomad
    #' @param cadd_scores cadd_scores
    #' @param ... Other optional arguments.
    initialize = function(`summary`, `nearest_genes`, `annotations`, `allele_frequencies_gnomad` = NULL, `cadd_scores` = NULL, ...) {
      if (!missing(`summary`)) {
        stopifnot(R6::is.R6(`summary`))
        self$`summary` <- `summary`
      }
      if (!missing(`nearest_genes`)) {
        stopifnot(R6::is.R6(`nearest_genes`))
        self$`nearest_genes` <- `nearest_genes`
      }
      if (!missing(`annotations`)) {
        stopifnot(R6::is.R6(`annotations`))
        self$`annotations` <- `annotations`
      }
      if (!is.null(`allele_frequencies_gnomad`)) {
        stopifnot(R6::is.R6(`allele_frequencies_gnomad`))
        self$`allele_frequencies_gnomad` <- `allele_frequencies_gnomad`
      }
      if (!is.null(`cadd_scores`)) {
        stopifnot(R6::is.R6(`cadd_scores`))
        self$`cadd_scores` <- `cadd_scores`
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
    #' @return VariantSummary as a base R list.
    #' @examples
    #' # convert array of VariantSummary (x) to a data frame
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
    #' Convert VariantSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantSummaryObject <- list()
      if (!is.null(self$`summary`)) {
        VariantSummaryObject[["summary"]] <-
          self$`summary`$toSimpleType()
      }
      if (!is.null(self$`allele_frequencies_gnomad`)) {
        VariantSummaryObject[["allele_frequencies_gnomad"]] <-
          self$`allele_frequencies_gnomad`$toSimpleType()
      }
      if (!is.null(self$`cadd_scores`)) {
        VariantSummaryObject[["cadd_scores"]] <-
          self$`cadd_scores`$toSimpleType()
      }
      if (!is.null(self$`nearest_genes`)) {
        VariantSummaryObject[["nearest_genes"]] <-
          self$`nearest_genes`$toSimpleType()
      }
      if (!is.null(self$`annotations`)) {
        VariantSummaryObject[["annotations"]] <-
          self$`annotations`$toSimpleType()
      }
      return(VariantSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- Summary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      if (!is.null(this_object$`allele_frequencies_gnomad`)) {
        `allele_frequencies_gnomad_object` <- AnyType$new()
        `allele_frequencies_gnomad_object`$fromJSON(jsonlite::toJSON(this_object$`allele_frequencies_gnomad`, auto_unbox = TRUE, digits = NA))
        self$`allele_frequencies_gnomad` <- `allele_frequencies_gnomad_object`
      }
      if (!is.null(this_object$`cadd_scores`)) {
        `cadd_scores_object` <- CaddScores$new()
        `cadd_scores_object`$fromJSON(jsonlite::toJSON(this_object$`cadd_scores`, auto_unbox = TRUE, digits = NA))
        self$`cadd_scores` <- `cadd_scores_object`
      }
      if (!is.null(this_object$`nearest_genes`)) {
        `nearest_genes_object` <- NearestGenes$new()
        `nearest_genes_object`$fromJSON(jsonlite::toJSON(this_object$`nearest_genes`, auto_unbox = TRUE, digits = NA))
        self$`nearest_genes` <- `nearest_genes_object`
      }
      if (!is.null(this_object$`annotations`)) {
        `annotations_object` <- Annotations$new()
        `annotations_object`$fromJSON(jsonlite::toJSON(this_object$`annotations`, auto_unbox = TRUE, digits = NA))
        self$`annotations` <- `annotations_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VariantSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`summary` <- Summary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self$`allele_frequencies_gnomad` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`allele_frequencies_gnomad`, auto_unbox = TRUE, digits = NA))
      self$`cadd_scores` <- CaddScores$new()$fromJSON(jsonlite::toJSON(this_object$`cadd_scores`, auto_unbox = TRUE, digits = NA))
      self$`nearest_genes` <- NearestGenes$new()$fromJSON(jsonlite::toJSON(this_object$`nearest_genes`, auto_unbox = TRUE, digits = NA))
      self$`annotations` <- Annotations$new()$fromJSON(jsonlite::toJSON(this_object$`annotations`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to VariantSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantSummary: the required field `summary` is missing."))
      }
      # check the required field `nearest_genes`
      if (!is.null(input_json$`nearest_genes`)) {
        stopifnot(R6::is.R6(input_json$`nearest_genes`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantSummary: the required field `nearest_genes` is missing."))
      }
      # check the required field `annotations`
      if (!is.null(input_json$`annotations`)) {
        stopifnot(R6::is.R6(input_json$`annotations`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantSummary: the required field `annotations` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VariantSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        return(FALSE)
      }

      # check if the required `nearest_genes` is null
      if (is.null(self$`nearest_genes`)) {
        return(FALSE)
      }

      # check if the required `annotations` is null
      if (is.null(self$`annotations`)) {
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
      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        invalid_fields["summary"] <- "Non-nullable required field `summary` cannot be null."
      }

      # check if the required `nearest_genes` is null
      if (is.null(self$`nearest_genes`)) {
        invalid_fields["nearest_genes"] <- "Non-nullable required field `nearest_genes` cannot be null."
      }

      # check if the required `annotations` is null
      if (is.null(self$`annotations`)) {
        invalid_fields["annotations"] <- "Non-nullable required field `annotations` cannot be null."
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
# VariantSummary$unlock()
#
## Below is an example to define the print function
# VariantSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VariantSummary$lock()

