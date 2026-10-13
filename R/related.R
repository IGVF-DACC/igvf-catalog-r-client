#' Create a new Related
#'
#' @description
#' Related Class
#'
#' @docType class
#' @title Related
#' @description Related Class
#' @format An \code{R6Class} generator object
#' @field gene  \link{RelatedGene} [optional]
#' @field protein  \link{ProteinCompact} [optional]
#' @field sources  \link{RelatedSources}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Related <- R6::R6Class(
  "Related",
  public = list(
    `gene` = NULL,
    `protein` = NULL,
    `sources` = NULL,

    #' @description
    #' Initialize a new Related class.
    #'
    #' @param sources sources
    #' @param gene gene
    #' @param protein protein
    #' @param ... Other optional arguments.
    initialize = function(`sources`, `gene` = NULL, `protein` = NULL, ...) {
      if (!missing(`sources`)) {
        stopifnot(R6::is.R6(`sources`))
        self$`sources` <- `sources`
      }
      if (!is.null(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
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
    #' @return Related as a base R list.
    #' @examples
    #' # convert array of Related (x) to a data frame
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
    #' Convert Related to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RelatedObject <- list()
      if (!is.null(self$`gene`)) {
        RelatedObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`protein`)) {
        RelatedObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`sources`)) {
        RelatedObject[["sources"]] <-
          self$`sources`$toSimpleType()
      }
      return(RelatedObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Related
    #'
    #' @param input_json the JSON input
    #' @return the instance of Related
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- RelatedGene$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- ProteinCompact$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`sources`)) {
        `sources_object` <- RelatedSources$new()
        `sources_object`$fromJSON(jsonlite::toJSON(this_object$`sources`, auto_unbox = TRUE, digits = NA))
        self$`sources` <- `sources_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Related in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Related
    #'
    #' @param input_json the JSON input
    #' @return the instance of Related
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene` <- RelatedGene$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`protein` <- ProteinCompact$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`sources` <- RelatedSources$new()$fromJSON(jsonlite::toJSON(this_object$`sources`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Related and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `sources`
      if (!is.null(input_json$`sources`)) {
        stopifnot(R6::is.R6(input_json$`sources`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Related: the required field `sources` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Related
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `sources` is null
      if (is.null(self$`sources`)) {
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
      # check if the required `sources` is null
      if (is.null(self$`sources`)) {
        invalid_fields["sources"] <- "Non-nullable required field `sources` cannot be null."
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
# Related$unlock()
#
## Below is an example to define the print function
# Related$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Related$lock()

