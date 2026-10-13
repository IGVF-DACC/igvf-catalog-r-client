#' Create a new Variants
#'
#' @description
#' Variants Class
#'
#' @docType class
#' @title Variants
#' @description Variants Class
#' @format An \code{R6Class} generator object
#' @field variant  \link{VariantBasic}
#' @field scores  list(\link{Scores})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Variants <- R6::R6Class(
  "Variants",
  public = list(
    `variant` = NULL,
    `scores` = NULL,

    #' @description
    #' Initialize a new Variants class.
    #'
    #' @param variant variant
    #' @param scores scores
    #' @param ... Other optional arguments.
    initialize = function(`variant`, `scores`, ...) {
      if (!missing(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
      }
      if (!missing(`scores`)) {
        stopifnot(is.vector(`scores`), length(`scores`) != 0)
        sapply(`scores`, function(x) stopifnot(R6::is.R6(x)))
        self$`scores` <- `scores`
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
    #' @return Variants as a base R list.
    #' @examples
    #' # convert array of Variants (x) to a data frame
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
    #' Convert Variants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantsObject <- list()
      if (!is.null(self$`variant`)) {
        VariantsObject[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      if (!is.null(self$`scores`)) {
        VariantsObject[["scores"]] <-
          lapply(self$`scores`, function(x) x$toSimpleType())
      }
      return(VariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Variants
    #'
    #' @param input_json the JSON input
    #' @return the instance of Variants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- VariantBasic$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
      }
      if (!is.null(this_object$`scores`)) {
        self$`scores` <- ApiClient$new()$deserializeObj(this_object$`scores`, "array[Scores]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Variants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Variants
    #'
    #' @param input_json the JSON input
    #' @return the instance of Variants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variant` <- VariantBasic$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self$`scores` <- ApiClient$new()$deserializeObj(this_object$`scores`, "array[Scores]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Variants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `variant`
      if (!is.null(input_json$`variant`)) {
        stopifnot(R6::is.R6(input_json$`variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Variants: the required field `variant` is missing."))
      }
      # check the required field `scores`
      if (!is.null(input_json$`scores`)) {
        stopifnot(is.vector(input_json$`scores`), length(input_json$`scores`) != 0)
        tmp <- sapply(input_json$`scores`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Variants: the required field `scores` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Variants
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `scores` is null
      if (is.null(self$`scores`)) {
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
      # check if the required `scores` is null
      if (is.null(self$`scores`)) {
        invalid_fields["scores"] <- "Non-nullable required field `scores` cannot be null."
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
# Variants$unlock()
#
## Below is an example to define the print function
# Variants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Variants$lock()

