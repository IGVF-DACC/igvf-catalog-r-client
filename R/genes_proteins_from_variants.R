#' Create a new GenesProteinsFromVariants
#'
#' @description
#' GenesProteinsFromVariants Class
#'
#' @docType class
#' @title GenesProteinsFromVariants
#' @description GenesProteinsFromVariants Class
#' @format An \code{R6Class} generator object
#' @field sequence_variant  \link{SequenceVariant9}
#' @field related  list(\link{Related})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesProteinsFromVariants <- R6::R6Class(
  "GenesProteinsFromVariants",
  public = list(
    `sequence_variant` = NULL,
    `related` = NULL,

    #' @description
    #' Initialize a new GenesProteinsFromVariants class.
    #'
    #' @param sequence_variant sequence_variant
    #' @param related related
    #' @param ... Other optional arguments.
    initialize = function(`sequence_variant`, `related`, ...) {
      if (!missing(`sequence_variant`)) {
        stopifnot(R6::is.R6(`sequence_variant`))
        self$`sequence_variant` <- `sequence_variant`
      }
      if (!missing(`related`)) {
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
    #' @return GenesProteinsFromVariants as a base R list.
    #' @examples
    #' # convert array of GenesProteinsFromVariants (x) to a data frame
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
    #' Convert GenesProteinsFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesProteinsFromVariantsObject <- list()
      if (!is.null(self$`sequence_variant`)) {
        GenesProteinsFromVariantsObject[["sequence_variant"]] <-
          self$`sequence_variant`$toSimpleType()
      }
      if (!is.null(self$`related`)) {
        GenesProteinsFromVariantsObject[["related"]] <-
          lapply(self$`related`, function(x) x$toSimpleType())
      }
      return(GenesProteinsFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesProteinsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesProteinsFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sequence_variant`)) {
        `sequence_variant_object` <- SequenceVariant9$new()
        `sequence_variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence_variant` <- `sequence_variant_object`
      }
      if (!is.null(this_object$`related`)) {
        self$`related` <- ApiClient$new()$deserializeObj(this_object$`related`, "array[Related]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesProteinsFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesProteinsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesProteinsFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sequence_variant` <- SequenceVariant9$new()$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
      self$`related` <- ApiClient$new()$deserializeObj(this_object$`related`, "array[Related]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesProteinsFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `sequence_variant`
      if (!is.null(input_json$`sequence_variant`)) {
        stopifnot(R6::is.R6(input_json$`sequence_variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesProteinsFromVariants: the required field `sequence_variant` is missing."))
      }
      # check the required field `related`
      if (!is.null(input_json$`related`)) {
        stopifnot(is.vector(input_json$`related`), length(input_json$`related`) != 0)
        tmp <- sapply(input_json$`related`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesProteinsFromVariants: the required field `related` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesProteinsFromVariants
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `sequence_variant` is null
      if (is.null(self$`sequence_variant`)) {
        return(FALSE)
      }

      # check if the required `related` is null
      if (is.null(self$`related`)) {
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
      # check if the required `sequence_variant` is null
      if (is.null(self$`sequence_variant`)) {
        invalid_fields["sequence_variant"] <- "Non-nullable required field `sequence_variant` cannot be null."
      }

      # check if the required `related` is null
      if (is.null(self$`related`)) {
        invalid_fields["related"] <- "Non-nullable required field `related` cannot be null."
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
# GenesProteinsFromVariants$unlock()
#
## Below is an example to define the print function
# GenesProteinsFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesProteinsFromVariants$lock()

