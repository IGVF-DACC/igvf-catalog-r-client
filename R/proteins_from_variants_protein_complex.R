#' @docType class
#' @title ProteinsFromVariantsProteinComplex
#'
#' @description ProteinsFromVariantsProteinComplex Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinsFromVariantsProteinComplex <- R6::R6Class(
  "ProteinsFromVariantsProteinComplex",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("Complex", "ProteinComplexOption"),

    #' @description
    #' Initialize a new ProteinsFromVariantsProteinComplex.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "Complex", "ProteinComplexOption"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "Complex") {
        self$actual_instance <- instance
        self$actual_type <- "Complex"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ProteinComplexOption") {
        self$actual_instance <- instance
        self$actual_type <- "ProteinComplexOption"
      } else {
        stop(paste("Failed to initialize ProteinsFromVariantsProteinComplex with anyOf schemas Complex, ProteinComplexOption. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsFromVariantsProteinComplex.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ProteinsFromVariantsProteinComplex.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsFromVariantsProteinComplex.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ProteinsFromVariantsProteinComplex.
    fromJSON = function(input) {
      error_messages <- list()

      `ProteinComplexOption_result` <- tryCatch({
          `ProteinComplexOption`$public_methods$validateJSON(input)
          `ProteinComplexOption_instance` <- `ProteinComplexOption`$new()
          self$actual_instance <- `ProteinComplexOption_instance`$fromJSON(input)
          self$actual_type <- "ProteinComplexOption"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`ProteinComplexOption_result`["error"])) {
        error_messages <- append(error_messages, `ProteinComplexOption_result`["message"])
      }

      `Complex_result` <- tryCatch({
          `Complex`$public_methods$validateJSON(input)
          `Complex_instance` <- `Complex`$new()
          self$actual_instance <- `Complex_instance`$fromJSON(input)
          self$actual_type <- "Complex"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`Complex_result`["error"])) {
        error_messages <- append(error_messages, `Complex_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into ProteinsFromVariantsProteinComplex with anyOf schemas Complex, ProteinComplexOption. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ProteinsFromVariantsProteinComplex to a base R type
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
    #' Serialize ProteinsFromVariantsProteinComplex to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ProteinsFromVariantsProteinComplex.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Validate the input JSON with respect to ProteinsFromVariantsProteinComplex and
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
#ProteinsFromVariantsProteinComplex$unlock()
#
## Below is an example to define the print function
#ProteinsFromVariantsProteinComplex$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ProteinsFromVariantsProteinComplex$lock()

