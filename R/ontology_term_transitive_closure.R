#' Create a new OntologyTermTransitiveClosure
#'
#' @description
#' OntologyTermTransitiveClosure Class
#'
#' @docType class
#' @title OntologyTermTransitiveClosure
#' @description OntologyTermTransitiveClosure Class
#' @format An \code{R6Class} generator object
#' @field vertices  named list(\link{OntologyTermBasic})
#' @field paths  list(list(\link{Paths}))
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OntologyTermTransitiveClosure <- R6::R6Class(
  "OntologyTermTransitiveClosure",
  public = list(
    `vertices` = NULL,
    `paths` = NULL,

    #' @description
    #' Initialize a new OntologyTermTransitiveClosure class.
    #'
    #' @param vertices vertices
    #' @param paths paths
    #' @param ... Other optional arguments.
    initialize = function(`vertices`, `paths`, ...) {
      if (!missing(`vertices`)) {
        stopifnot(is.vector(`vertices`), length(`vertices`) != 0)
        sapply(`vertices`, function(x) stopifnot(R6::is.R6(x)))
        self$`vertices` <- `vertices`
      }
      if (!missing(`paths`)) {
        stopifnot(is.vector(`paths`), length(`paths`) != 0)
        sapply(`paths`, function(x) stopifnot(R6::is.R6(x)))
        self$`paths` <- `paths`
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
    #' @return OntologyTermTransitiveClosure as a base R list.
    #' @examples
    #' # convert array of OntologyTermTransitiveClosure (x) to a data frame
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
    #' Convert OntologyTermTransitiveClosure to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OntologyTermTransitiveClosureObject <- list()
      if (!is.null(self$`vertices`)) {
        OntologyTermTransitiveClosureObject[["vertices"]] <-
          lapply(self$`vertices`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`paths`)) {
        OntologyTermTransitiveClosureObject[["paths"]] <-
          lapply(self$`paths`, function(x) x$toSimpleType())
      }
      return(OntologyTermTransitiveClosureObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OntologyTermTransitiveClosure
    #'
    #' @param input_json the JSON input
    #' @return the instance of OntologyTermTransitiveClosure
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`vertices`)) {
        self$`vertices` <- ApiClient$new()$deserializeObj(this_object$`vertices`, "map(OntologyTermBasic)", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`paths`)) {
        self$`paths` <- ApiClient$new()$deserializeObj(this_object$`paths`, "array[Array]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OntologyTermTransitiveClosure in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OntologyTermTransitiveClosure
    #'
    #' @param input_json the JSON input
    #' @return the instance of OntologyTermTransitiveClosure
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`vertices` <- ApiClient$new()$deserializeObj(this_object$`vertices`, "map(OntologyTermBasic)", loadNamespace("igvfcatalogclient"))
      self$`paths` <- ApiClient$new()$deserializeObj(this_object$`paths`, "array[Array]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OntologyTermTransitiveClosure and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `vertices`
      if (!is.null(input_json$`vertices`)) {
        stopifnot(is.vector(input_json$`vertices`), length(input_json$`vertices`) != 0)
        tmp <- sapply(input_json$`vertices`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermTransitiveClosure: the required field `vertices` is missing."))
      }
      # check the required field `paths`
      if (!is.null(input_json$`paths`)) {
        stopifnot(is.vector(input_json$`paths`), length(input_json$`paths`) != 0)
        tmp <- sapply(input_json$`paths`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OntologyTermTransitiveClosure: the required field `paths` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OntologyTermTransitiveClosure
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `vertices` is null
      if (is.null(self$`vertices`)) {
        return(FALSE)
      }

      # check if the required `paths` is null
      if (is.null(self$`paths`)) {
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
      # check if the required `vertices` is null
      if (is.null(self$`vertices`)) {
        invalid_fields["vertices"] <- "Non-nullable required field `vertices` cannot be null."
      }

      # check if the required `paths` is null
      if (is.null(self$`paths`)) {
        invalid_fields["paths"] <- "Non-nullable required field `paths` cannot be null."
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
# OntologyTermTransitiveClosure$unlock()
#
## Below is an example to define the print function
# OntologyTermTransitiveClosure$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OntologyTermTransitiveClosure$lock()

