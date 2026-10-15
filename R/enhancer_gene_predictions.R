#' Create a new EnhancerGenePredictions
#'
#' @description
#' EnhancerGenePredictions Class
#'
#' @docType class
#' @title EnhancerGenePredictions
#' @description EnhancerGenePredictions Class
#' @format An \code{R6Class} generator object
#' @field gene  \link{GeneRef}
#' @field elements  \link{EnhancerGenePredictionsElements}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EnhancerGenePredictions <- R6::R6Class(
  "EnhancerGenePredictions",
  public = list(
    `gene` = NULL,
    `elements` = NULL,

    #' @description
    #' Initialize a new EnhancerGenePredictions class.
    #'
    #' @param gene gene
    #' @param elements elements
    #' @param ... Other optional arguments.
    initialize = function(`gene`, `elements`, ...) {
      if (!missing(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!missing(`elements`)) {
        stopifnot(R6::is.R6(`elements`))
        self$`elements` <- `elements`
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
    #' @return EnhancerGenePredictions as a base R list.
    #' @examples
    #' # convert array of EnhancerGenePredictions (x) to a data frame
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
    #' Convert EnhancerGenePredictions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EnhancerGenePredictionsObject <- list()
      if (!is.null(self$`gene`)) {
        EnhancerGenePredictionsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`elements`)) {
        EnhancerGenePredictionsObject[["elements"]] <-
          self$`elements`$toSimpleType()
      }
      return(EnhancerGenePredictionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EnhancerGenePredictions
    #'
    #' @param input_json the JSON input
    #' @return the instance of EnhancerGenePredictions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- GeneRef$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`elements`)) {
        `elements_object` <- EnhancerGenePredictionsElements$new()
        `elements_object`$fromJSON(jsonlite::toJSON(this_object$`elements`, auto_unbox = TRUE, digits = NA))
        self$`elements` <- `elements_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EnhancerGenePredictions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EnhancerGenePredictions
    #'
    #' @param input_json the JSON input
    #' @return the instance of EnhancerGenePredictions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene` <- GeneRef$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`elements` <- EnhancerGenePredictionsElements$new()$fromJSON(jsonlite::toJSON(this_object$`elements`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to EnhancerGenePredictions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gene`
      if (!is.null(input_json$`gene`)) {
        stopifnot(R6::is.R6(input_json$`gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EnhancerGenePredictions: the required field `gene` is missing."))
      }
      # check the required field `elements`
      if (!is.null(input_json$`elements`)) {
        stopifnot(R6::is.R6(input_json$`elements`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EnhancerGenePredictions: the required field `elements` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EnhancerGenePredictions
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gene` is null
      if (is.null(self$`gene`)) {
        return(FALSE)
      }

      # check if the required `elements` is null
      if (is.null(self$`elements`)) {
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
      # check if the required `gene` is null
      if (is.null(self$`gene`)) {
        invalid_fields["gene"] <- "Non-nullable required field `gene` cannot be null."
      }

      # check if the required `elements` is null
      if (is.null(self$`elements`)) {
        invalid_fields["elements"] <- "Non-nullable required field `elements` cannot be null."
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
# EnhancerGenePredictions$unlock()
#
## Below is an example to define the print function
# EnhancerGenePredictions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EnhancerGenePredictions$lock()

