#' Create a new VariantsRegionSummary
#'
#' @description
#' VariantsRegionSummary Class
#'
#' @docType class
#' @title VariantsRegionSummary
#' @description VariantsRegionSummary Class
#' @format An \code{R6Class} generator object
#' @field variant_count  numeric
#' @field by_method  list(\link{MethodCount})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantsRegionSummary <- R6::R6Class(
  "VariantsRegionSummary",
  public = list(
    `variant_count` = NULL,
    `by_method` = NULL,

    #' @description
    #' Initialize a new VariantsRegionSummary class.
    #'
    #' @param variant_count variant_count
    #' @param by_method by_method
    #' @param ... Other optional arguments.
    initialize = function(`variant_count`, `by_method`, ...) {
      if (!missing(`variant_count`)) {
        self$`variant_count` <- `variant_count`
      }
      if (!missing(`by_method`)) {
        stopifnot(is.vector(`by_method`), length(`by_method`) != 0)
        sapply(`by_method`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_method` <- `by_method`
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
    #' @return VariantsRegionSummary as a base R list.
    #' @examples
    #' # convert array of VariantsRegionSummary (x) to a data frame
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
    #' Convert VariantsRegionSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantsRegionSummaryObject <- list()
      if (!is.null(self$`variant_count`)) {
        VariantsRegionSummaryObject[["variant_count"]] <-
          self$`variant_count`
      }
      if (!is.null(self$`by_method`)) {
        VariantsRegionSummaryObject[["by_method"]] <-
          lapply(self$`by_method`, function(x) x$toSimpleType())
      }
      return(VariantsRegionSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsRegionSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantsRegionSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variant_count`)) {
        self$`variant_count` <- this_object$`variant_count`
      }
      if (!is.null(this_object$`by_method`)) {
        self$`by_method` <- ApiClient$new()$deserializeObj(this_object$`by_method`, "array[MethodCount]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VariantsRegionSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsRegionSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantsRegionSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variant_count` <- this_object$`variant_count`
      self$`by_method` <- ApiClient$new()$deserializeObj(this_object$`by_method`, "array[MethodCount]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VariantsRegionSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `variant_count`
      if (!is.null(input_json$`variant_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsRegionSummary: the required field `variant_count` is missing."))
      }
      # check the required field `by_method`
      if (!is.null(input_json$`by_method`)) {
        stopifnot(is.vector(input_json$`by_method`), length(input_json$`by_method`) != 0)
        tmp <- sapply(input_json$`by_method`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsRegionSummary: the required field `by_method` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VariantsRegionSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `variant_count` is null
      if (is.null(self$`variant_count`)) {
        return(FALSE)
      }

      # check if the required `by_method` is null
      if (is.null(self$`by_method`)) {
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
      # check if the required `variant_count` is null
      if (is.null(self$`variant_count`)) {
        invalid_fields["variant_count"] <- "Non-nullable required field `variant_count` cannot be null."
      }

      # check if the required `by_method` is null
      if (is.null(self$`by_method`)) {
        invalid_fields["by_method"] <- "Non-nullable required field `by_method` cannot be null."
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
# VariantsRegionSummary$unlock()
#
## Below is an example to define the print function
# VariantsRegionSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VariantsRegionSummary$lock()

