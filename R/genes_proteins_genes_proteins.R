#' Create a new GenesProteinsGenesProteins
#'
#' @description
#' GenesProteinsGenesProteins Class
#'
#' @docType class
#' @title GenesProteinsGenesProteins
#' @description GenesProteinsGenesProteins Class
#' @format An \code{R6Class} generator object
#' @field protein  \link{ProteinCompact} [optional]
#' @field gene  \link{GeneCompact} [optional]
#' @field related  list(\link{RelatedItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesProteinsGenesProteins <- R6::R6Class(
  "GenesProteinsGenesProteins",
  public = list(
    `protein` = NULL,
    `gene` = NULL,
    `related` = NULL,

    #' @description
    #' Initialize a new GenesProteinsGenesProteins class.
    #'
    #' @param protein protein
    #' @param gene gene
    #' @param related related
    #' @param ... Other optional arguments.
    initialize = function(`protein` = NULL, `gene` = NULL, `related` = NULL, ...) {
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
      }
      if (!is.null(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!is.null(`related`)) {
        stopifnot(is.vector(`related`), length(`related`) != 0)
        sapply(`related`, function(x) stopifnot(R6::is.R6(x)))
        self$`related` <- `related`
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
    #' @return GenesProteinsGenesProteins as a base R list.
    #' @examples
    #' # convert array of GenesProteinsGenesProteins (x) to a data frame
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
    #' Convert GenesProteinsGenesProteins to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesProteinsGenesProteinsObject <- list()
      if (!is.null(self$`protein`)) {
        GenesProteinsGenesProteinsObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`gene`)) {
        GenesProteinsGenesProteinsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`related`)) {
        GenesProteinsGenesProteinsObject[["related"]] <-
          lapply(self$`related`, function(x) x$toSimpleType())
      }
      return(GenesProteinsGenesProteinsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesProteinsGenesProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesProteinsGenesProteins
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- ProteinCompact$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- GeneCompact$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`related`)) {
        self$`related` <- ApiClient$new()$deserializeObj(this_object$`related`, "array[RelatedItem]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesProteinsGenesProteins in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesProteinsGenesProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesProteinsGenesProteins
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`protein` <- ProteinCompact$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`gene` <- GeneCompact$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`related` <- ApiClient$new()$deserializeObj(this_object$`related`, "array[RelatedItem]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesProteinsGenesProteins and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesProteinsGenesProteins
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# GenesProteinsGenesProteins$unlock()
#
## Below is an example to define the print function
# GenesProteinsGenesProteins$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesProteinsGenesProteins$lock()

