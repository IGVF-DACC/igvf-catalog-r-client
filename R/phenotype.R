#' Create a new Phenotype
#'
#' @description
#' Phenotype Class
#'
#' @docType class
#' @title Phenotype
#' @description Phenotype Class
#' @format An \code{R6Class} generator object
#' @field phenotype_id  character
#' @field phenotype_name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Phenotype <- R6::R6Class(
  "Phenotype",
  public = list(
    `phenotype_id` = NULL,
    `phenotype_name` = NULL,

    #' @description
    #' Initialize a new Phenotype class.
    #'
    #' @param phenotype_id phenotype_id
    #' @param phenotype_name phenotype_name
    #' @param ... Other optional arguments.
    initialize = function(`phenotype_id`, `phenotype_name` = NULL, ...) {
      if (!missing(`phenotype_id`)) {
        if (!(is.character(`phenotype_id`) && length(`phenotype_id`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_id`. Must be a string:", `phenotype_id`))
        }
        self$`phenotype_id` <- `phenotype_id`
      }
      if (!is.null(`phenotype_name`)) {
        if (!(is.character(`phenotype_name`) && length(`phenotype_name`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_name`. Must be a string:", `phenotype_name`))
        }
        self$`phenotype_name` <- `phenotype_name`
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
    #' @return Phenotype as a base R list.
    #' @examples
    #' # convert array of Phenotype (x) to a data frame
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
    #' Convert Phenotype to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PhenotypeObject <- list()
      if (!is.null(self$`phenotype_id`)) {
        PhenotypeObject[["phenotype_id"]] <-
          self$`phenotype_id`
      }
      if (!is.null(self$`phenotype_name`)) {
        PhenotypeObject[["phenotype_name"]] <-
          self$`phenotype_name`
      }
      return(PhenotypeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Phenotype
    #'
    #' @param input_json the JSON input
    #' @return the instance of Phenotype
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`phenotype_id`)) {
        self$`phenotype_id` <- this_object$`phenotype_id`
      }
      if (!is.null(this_object$`phenotype_name`)) {
        self$`phenotype_name` <- this_object$`phenotype_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Phenotype in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Phenotype
    #'
    #' @param input_json the JSON input
    #' @return the instance of Phenotype
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`phenotype_id` <- this_object$`phenotype_id`
      self$`phenotype_name` <- this_object$`phenotype_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to Phenotype and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `phenotype_id`
      if (!is.null(input_json$`phenotype_id`)) {
        if (!(is.character(input_json$`phenotype_id`) && length(input_json$`phenotype_id`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_id`. Must be a string:", input_json$`phenotype_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Phenotype: the required field `phenotype_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Phenotype
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `phenotype_id` is null
      if (is.null(self$`phenotype_id`)) {
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
      # check if the required `phenotype_id` is null
      if (is.null(self$`phenotype_id`)) {
        invalid_fields["phenotype_id"] <- "Non-nullable required field `phenotype_id` cannot be null."
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
# Phenotype$unlock()
#
## Below is an example to define the print function
# Phenotype$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Phenotype$lock()

