#' @docType class
#' @title ProteinsProteinsProtein1
#'
#' @description ProteinsProteinsProtein1 Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinsProteinsProtein1 <- R6::R6Class(
  "ProteinsProteinsProtein1",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("array[ProteinBasic]", "character"),

    #' @description
    #' Initialize a new ProteinsProteinsProtein1.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "array[ProteinBasic]", "character"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "array[ProteinBasic]") {
        self$actual_instance <- instance
        self$actual_type <- "array[ProteinBasic]"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "character") {
        self$actual_instance <- instance
        self$actual_type <- "character"
      } else {
        stop(paste("Failed to initialize ProteinsProteinsProtein1 with anyOf schemas array[ProteinBasic], character. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsProteinsProtein1.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ProteinsProteinsProtein1.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsProteinsProtein1.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ProteinsProteinsProtein1.
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

      `array[ProteinBasic]_result` <- tryCatch({
          `array[ProteinBasic]`$public_methods$validateJSON(input)
          `array[ProteinBasic]_instance` <- `array[ProteinBasic]`$new()
          self$actual_instance <- `array[ProteinBasic]_instance`$fromJSON(input)
          self$actual_type <- "array[ProteinBasic]"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`array[ProteinBasic]_result`["error"])) {
        error_messages <- append(error_messages, `array[ProteinBasic]_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into ProteinsProteinsProtein1 with anyOf schemas array[ProteinBasic], character. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ProteinsProteinsProtein1 to a base R type
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
    #' Serialize ProteinsProteinsProtein1 to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ProteinsProteinsProtein1.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Validate the input JSON with respect to ProteinsProteinsProtein1 and
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
#ProteinsProteinsProtein1$unlock()
#
## Below is an example to define the print function
#ProteinsProteinsProtein1$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ProteinsProteinsProtein1$lock()

