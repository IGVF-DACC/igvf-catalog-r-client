#' @docType class
#' @title PhenotypesFromVariantsVariant
#'
#' @description PhenotypesFromVariantsVariant Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhenotypesFromVariantsVariant <- R6::R6Class(
  "PhenotypesFromVariantsVariant",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("VariantBasic", "character"),

    #' @description
    #' Initialize a new PhenotypesFromVariantsVariant.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "VariantBasic", "character"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "VariantBasic") {
        self$actual_instance <- instance
        self$actual_type <- "VariantBasic"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "character") {
        self$actual_instance <- instance
        self$actual_type <- "character"
      } else {
        stop(paste("Failed to initialize PhenotypesFromVariantsVariant with anyOf schemas VariantBasic, character. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PhenotypesFromVariantsVariant.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhenotypesFromVariantsVariant.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhenotypesFromVariantsVariant.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhenotypesFromVariantsVariant.
    fromJSON = function(input) {
      error_messages <- list()

      `character_result` <- tryCatch({
          instance <- jsonlite::fromJSON(input, simplifyVector = FALSE)
          if (typeof(instance) != "character") {
            stop(sprintf("Data type doesn't match. Expected: %s. Actual: %s.", "character", typeof(instance)))
          }
          self$actual_instance <- `character_instance`$fromJSON(input)
          self$actual_type <- "character"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`character_result`["error"])) {
        error_messages <- append(error_messages, `character_result`["message"])
      }

      `VariantBasic_result` <- tryCatch({
          `VariantBasic`$public_methods$validateJSON(input)
          `VariantBasic_instance` <- `VariantBasic`$new()
          self$actual_instance <- `VariantBasic_instance`$fromJSON(input)
          self$actual_type <- "VariantBasic"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`VariantBasic_result`["error"])) {
        error_messages <- append(error_messages, `VariantBasic_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into PhenotypesFromVariantsVariant with anyOf schemas VariantBasic, character. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert PhenotypesFromVariantsVariant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      if (!is.null(self$actual_instance)) {
        return(self$actual_instance$toSimpleType())
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize PhenotypesFromVariantsVariant to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PhenotypesFromVariantsVariant.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Validate the input JSON with respect to PhenotypesFromVariantsVariant and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },

    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"any_of": "%s"', paste(unlist(self$any_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#PhenotypesFromVariantsVariant$unlock()
#
## Below is an example to define the print function
#PhenotypesFromVariantsVariant$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PhenotypesFromVariantsVariant$lock()

