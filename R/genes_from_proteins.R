#' Create a new GenesFromProteins
#'
#' @description
#' GenesFromProteins Class
#'
#' @docType class
#' @title GenesFromProteins
#' @description GenesFromProteins Class
#' @format An \code{R6Class} generator object
#' @field gene  \link{DiseasesFromGenesGene} [optional]
#' @field protein  \link{ComplexesFromProteinsProtein} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesFromProteins <- R6::R6Class(
  "GenesFromProteins",
  public = list(
    `gene` = NULL,
    `protein` = NULL,

    #' @description
    #' Initialize a new GenesFromProteins class.
    #'
    #' @param gene gene
    #' @param protein protein
    #' @param ... Other optional arguments.
    initialize = function(`gene` = NULL, `protein` = NULL, ...) {
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
    #' @return GenesFromProteins as a base R list.
    #' @examples
    #' # convert array of GenesFromProteins (x) to a data frame
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
    #' Convert GenesFromProteins to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesFromProteinsObject <- list()
      if (!is.null(self$`gene`)) {
        GenesFromProteinsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`protein`)) {
        GenesFromProteinsObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      return(GenesFromProteinsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromProteins
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- DiseasesFromGenesGene$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- ComplexesFromProteinsProtein$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesFromProteins in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromProteins
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene` <- DiseasesFromGenesGene$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`protein` <- ComplexesFromProteinsProtein$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesFromProteins and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesFromProteins
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
# GenesFromProteins$unlock()
#
## Below is an example to define the print function
# GenesFromProteins$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesFromProteins$lock()

