#' Create a new CodingVariantsFromGenes
#'
#' @description
#' CodingVariantsFromGenes Class
#'
#' @docType class
#' @title CodingVariantsFromGenes
#' @description CodingVariantsFromGenes Class
#' @format An \code{R6Class} generator object
#' @field protein_change  \link{ProteinChange}
#' @field variants  list(\link{Variants}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CodingVariantsFromGenes <- R6::R6Class(
  "CodingVariantsFromGenes",
  public = list(
    `protein_change` = NULL,
    `variants` = NULL,

    #' @description
    #' Initialize a new CodingVariantsFromGenes class.
    #'
    #' @param protein_change protein_change
    #' @param variants variants
    #' @param ... Other optional arguments.
    initialize = function(`protein_change`, `variants` = NULL, ...) {
      if (!missing(`protein_change`)) {
        stopifnot(R6::is.R6(`protein_change`))
        self$`protein_change` <- `protein_change`
      }
      if (!is.null(`variants`)) {
        stopifnot(is.vector(`variants`), length(`variants`) != 0)
        sapply(`variants`, function(x) stopifnot(R6::is.R6(x)))
        self$`variants` <- `variants`
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
    #' @return CodingVariantsFromGenes as a base R list.
    #' @examples
    #' # convert array of CodingVariantsFromGenes (x) to a data frame
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
    #' Convert CodingVariantsFromGenes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CodingVariantsFromGenesObject <- list()
      if (!is.null(self$`protein_change`)) {
        CodingVariantsFromGenesObject[["protein_change"]] <-
          self$`protein_change`$toSimpleType()
      }
      if (!is.null(self$`variants`)) {
        CodingVariantsFromGenesObject[["variants"]] <-
          lapply(self$`variants`, function(x) x$toSimpleType())
      }
      return(CodingVariantsFromGenesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariantsFromGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariantsFromGenes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`protein_change`)) {
        `protein_change_object` <- ProteinChange$new()
        `protein_change_object`$fromJSON(jsonlite::toJSON(this_object$`protein_change`, auto_unbox = TRUE, digits = NA))
        self$`protein_change` <- `protein_change_object`
      }
      if (!is.null(this_object$`variants`)) {
        self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variants]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CodingVariantsFromGenes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariantsFromGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariantsFromGenes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`protein_change` <- ProteinChange$new()$fromJSON(jsonlite::toJSON(this_object$`protein_change`, auto_unbox = TRUE, digits = NA))
      self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variants]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CodingVariantsFromGenes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `protein_change`
      if (!is.null(input_json$`protein_change`)) {
        stopifnot(R6::is.R6(input_json$`protein_change`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsFromGenes: the required field `protein_change` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CodingVariantsFromGenes
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `protein_change` is null
      if (is.null(self$`protein_change`)) {
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
      # check if the required `protein_change` is null
      if (is.null(self$`protein_change`)) {
        invalid_fields["protein_change"] <- "Non-nullable required field `protein_change` cannot be null."
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
# CodingVariantsFromGenes$unlock()
#
## Below is an example to define the print function
# CodingVariantsFromGenes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CodingVariantsFromGenes$lock()

