#' Create a new LinkedFeature
#'
#' @description
#' LinkedFeature Class
#'
#' @docType class
#' @title LinkedFeature
#' @description LinkedFeature Class
#' @format An \code{R6Class} generator object
#' @field participantId  character
#' @field ranges  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LinkedFeature <- R6::R6Class(
  "LinkedFeature",
  public = list(
    `participantId` = NULL,
    `ranges` = NULL,

    #' @description
    #' Initialize a new LinkedFeature class.
    #'
    #' @param participantId participantId
    #' @param ranges ranges
    #' @param ... Other optional arguments.
    initialize = function(`participantId`, `ranges`, ...) {
      if (!missing(`participantId`)) {
        if (!(is.character(`participantId`) && length(`participantId`) == 1)) {
          stop(paste("Error! Invalid data for `participantId`. Must be a string:", `participantId`))
        }
        self$`participantId` <- `participantId`
      }
      if (!missing(`ranges`)) {
        stopifnot(is.vector(`ranges`), length(`ranges`) != 0)
        sapply(`ranges`, function(x) stopifnot(is.character(x)))
        self$`ranges` <- `ranges`
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
    #' @return LinkedFeature as a base R list.
    #' @examples
    #' # convert array of LinkedFeature (x) to a data frame
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
    #' Convert LinkedFeature to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LinkedFeatureObject <- list()
      if (!is.null(self$`participantId`)) {
        LinkedFeatureObject[["participantId"]] <-
          self$`participantId`
      }
      if (!is.null(self$`ranges`)) {
        LinkedFeatureObject[["ranges"]] <-
          self$`ranges`
      }
      return(LinkedFeatureObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LinkedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of LinkedFeature
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`participantId`)) {
        self$`participantId` <- this_object$`participantId`
      }
      if (!is.null(this_object$`ranges`)) {
        self$`ranges` <- ApiClient$new()$deserializeObj(this_object$`ranges`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LinkedFeature in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LinkedFeature
    #'
    #' @param input_json the JSON input
    #' @return the instance of LinkedFeature
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`participantId` <- this_object$`participantId`
      self$`ranges` <- ApiClient$new()$deserializeObj(this_object$`ranges`, "array[character]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to LinkedFeature and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `participantId`
      if (!is.null(input_json$`participantId`)) {
        if (!(is.character(input_json$`participantId`) && length(input_json$`participantId`) == 1)) {
          stop(paste("Error! Invalid data for `participantId`. Must be a string:", input_json$`participantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LinkedFeature: the required field `participantId` is missing."))
      }
      # check the required field `ranges`
      if (!is.null(input_json$`ranges`)) {
        stopifnot(is.vector(input_json$`ranges`), length(input_json$`ranges`) != 0)
        tmp <- sapply(input_json$`ranges`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LinkedFeature: the required field `ranges` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LinkedFeature
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `participantId` is null
      if (is.null(self$`participantId`)) {
        return(FALSE)
      }

      # check if the required `ranges` is null
      if (is.null(self$`ranges`)) {
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
      # check if the required `participantId` is null
      if (is.null(self$`participantId`)) {
        invalid_fields["participantId"] <- "Non-nullable required field `participantId` cannot be null."
      }

      # check if the required `ranges` is null
      if (is.null(self$`ranges`)) {
        invalid_fields["ranges"] <- "Non-nullable required field `ranges` cannot be null."
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
# LinkedFeature$unlock()
#
## Below is an example to define the print function
# LinkedFeature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LinkedFeature$lock()

