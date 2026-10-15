#' Create a new GenomicElement4
#'
#' @description
#' GenomicElement4 Class
#'
#' @docType class
#' @title GenomicElement4
#' @description GenomicElement4 Class
#' @format An \code{R6Class} generator object
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @field regulator_gene  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElement4 <- R6::R6Class(
  "GenomicElement4",
  public = list(
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `regulator_gene` = NULL,

    #' @description
    #' Initialize a new GenomicElement4 class.
    #'
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param regulator_gene regulator_gene
    #' @param ... Other optional arguments.
    initialize = function(`chr`, `start`, `end`, `regulator_gene`, ...) {
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!missing(`start`)) {
        self$`start` <- `start`
      }
      if (!missing(`end`)) {
        self$`end` <- `end`
      }
      if (!missing(`regulator_gene`)) {
        if (!(is.character(`regulator_gene`) && length(`regulator_gene`) == 1)) {
          stop(paste("Error! Invalid data for `regulator_gene`. Must be a string:", `regulator_gene`))
        }
        self$`regulator_gene` <- `regulator_gene`
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
    #' @return GenomicElement4 as a base R list.
    #' @examples
    #' # convert array of GenomicElement4 (x) to a data frame
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
    #' Convert GenomicElement4 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElement4Object <- list()
      if (!is.null(self$`chr`)) {
        GenomicElement4Object[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        GenomicElement4Object[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        GenomicElement4Object[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`regulator_gene`)) {
        GenomicElement4Object[["regulator_gene"]] <-
          self$`regulator_gene`
      }
      return(GenomicElement4Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement4
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement4
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`regulator_gene`)) {
        self$`regulator_gene` <- this_object$`regulator_gene`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElement4 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElement4
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElement4
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`regulator_gene` <- this_object$`regulator_gene`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElement4 and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement4: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement4: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement4: the required field `end` is missing."))
      }
      # check the required field `regulator_gene`
      if (!is.null(input_json$`regulator_gene`)) {
        if (!(is.character(input_json$`regulator_gene`) && length(input_json$`regulator_gene`) == 1)) {
          stop(paste("Error! Invalid data for `regulator_gene`. Must be a string:", input_json$`regulator_gene`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElement4: the required field `regulator_gene` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElement4
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

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      # check if the required `end` is null
      if (is.null(self$`end`)) {
        return(FALSE)
      }

      # check if the required `regulator_gene` is null
      if (is.null(self$`regulator_gene`)) {
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

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
      }

      # check if the required `regulator_gene` is null
      if (is.null(self$`regulator_gene`)) {
        invalid_fields["regulator_gene"] <- "Non-nullable required field `regulator_gene` cannot be null."
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
# GenomicElement4$unlock()
#
## Below is an example to define the print function
# GenomicElement4$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElement4$lock()

