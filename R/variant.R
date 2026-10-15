#' Create a new Variant
#'
#' @description
#' Variant Class
#'
#' @docType class
#' @title Variant
#' @description Variant Class
#' @format An \code{R6Class} generator object
#' @field chr  character
#' @field pos  numeric
#' @field spdi  character [optional]
#' @field rsid  \link{ComplexComplexAssembly} [optional]
#' @field ca_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Variant <- R6::R6Class(
  "Variant",
  public = list(
    `chr` = NULL,
    `pos` = NULL,
    `spdi` = NULL,
    `rsid` = NULL,
    `ca_id` = NULL,

    #' @description
    #' Initialize a new Variant class.
    #'
    #' @param chr chr
    #' @param pos pos
    #' @param spdi spdi
    #' @param rsid rsid
    #' @param ca_id ca_id
    #' @param ... Other optional arguments.
    initialize = function(`chr`, `pos`, `spdi` = NULL, `rsid` = NULL, `ca_id` = NULL, ...) {
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!missing(`pos`)) {
        self$`pos` <- `pos`
      }
      if (!is.null(`spdi`)) {
        if (!(is.character(`spdi`) && length(`spdi`) == 1)) {
          stop(paste("Error! Invalid data for `spdi`. Must be a string:", `spdi`))
        }
        self$`spdi` <- `spdi`
      }
      if (!is.null(`rsid`)) {
        stopifnot(R6::is.R6(`rsid`))
        self$`rsid` <- `rsid`
      }
      if (!is.null(`ca_id`)) {
        if (!(is.character(`ca_id`) && length(`ca_id`) == 1)) {
          stop(paste("Error! Invalid data for `ca_id`. Must be a string:", `ca_id`))
        }
        self$`ca_id` <- `ca_id`
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
    #' @return Variant as a base R list.
    #' @examples
    #' # convert array of Variant (x) to a data frame
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
    #' Convert Variant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantObject <- list()
      if (!is.null(self$`chr`)) {
        VariantObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`pos`)) {
        VariantObject[["pos"]] <-
          self$`pos`
      }
      if (!is.null(self$`spdi`)) {
        VariantObject[["spdi"]] <-
          self$`spdi`
      }
      if (!is.null(self$`rsid`)) {
        VariantObject[["rsid"]] <-
          self$`rsid`$toSimpleType()
      }
      if (!is.null(self$`ca_id`)) {
        VariantObject[["ca_id"]] <-
          self$`ca_id`
      }
      return(VariantObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Variant
    #'
    #' @param input_json the JSON input
    #' @return the instance of Variant
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`pos`)) {
        self$`pos` <- this_object$`pos`
      }
      if (!is.null(this_object$`spdi`)) {
        self$`spdi` <- this_object$`spdi`
      }
      if (!is.null(this_object$`rsid`)) {
        `rsid_object` <- ComplexComplexAssembly$new()
        `rsid_object`$fromJSON(jsonlite::toJSON(this_object$`rsid`, auto_unbox = TRUE, digits = NA))
        self$`rsid` <- `rsid_object`
      }
      if (!is.null(this_object$`ca_id`)) {
        self$`ca_id` <- this_object$`ca_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Variant in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Variant
    #'
    #' @param input_json the JSON input
    #' @return the instance of Variant
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chr` <- this_object$`chr`
      self$`pos` <- this_object$`pos`
      self$`spdi` <- this_object$`spdi`
      self$`rsid` <- ComplexComplexAssembly$new()$fromJSON(jsonlite::toJSON(this_object$`rsid`, auto_unbox = TRUE, digits = NA))
      self$`ca_id` <- this_object$`ca_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to Variant and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Variant: the required field `chr` is missing."))
      }
      # check the required field `pos`
      if (!is.null(input_json$`pos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Variant: the required field `pos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Variant
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `pos` is null
      if (is.null(self$`pos`)) {
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
      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `pos` is null
      if (is.null(self$`pos`)) {
        invalid_fields["pos"] <- "Non-nullable required field `pos` cannot be null."
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
# Variant$unlock()
#
## Below is an example to define the print function
# Variant$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Variant$lock()

