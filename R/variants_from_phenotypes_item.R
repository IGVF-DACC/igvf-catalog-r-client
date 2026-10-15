#' @docType class
#' @title VariantsFromPhenotypesItem
#'
#' @description VariantsFromPhenotypesItem Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantsFromPhenotypesItem <- R6::R6Class(
  "VariantsFromPhenotypesItem",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("PhenotypesFromVariants", "PhenotypesFromVariants37"),

    #' @description
    #' Initialize a new VariantsFromPhenotypesItem.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "PhenotypesFromVariants", "PhenotypesFromVariants37"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhenotypesFromVariants") {
        self$actual_instance <- instance
        self$actual_type <- "PhenotypesFromVariants"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhenotypesFromVariants37") {
        self$actual_instance <- instance
        self$actual_type <- "PhenotypesFromVariants37"
      } else {
        stop(paste("Failed to initialize VariantsFromPhenotypesItem with anyOf schemas PhenotypesFromVariants, PhenotypesFromVariants37. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsFromPhenotypesItem.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of VariantsFromPhenotypesItem.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsFromPhenotypesItem.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of VariantsFromPhenotypesItem.
    fromJSON = function(input) {
      error_messages <- list()

      `PhenotypesFromVariants_result` <- tryCatch({
          `PhenotypesFromVariants`$public_methods$validateJSON(input)
          `PhenotypesFromVariants_instance` <- `PhenotypesFromVariants`$new()
          self$actual_instance <- `PhenotypesFromVariants_instance`$fromJSON(input)
          self$actual_type <- "PhenotypesFromVariants"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`PhenotypesFromVariants_result`["error"])) {
        error_messages <- append(error_messages, `PhenotypesFromVariants_result`["message"])
      }

      `PhenotypesFromVariants37_result` <- tryCatch({
          `PhenotypesFromVariants37`$public_methods$validateJSON(input)
          `PhenotypesFromVariants37_instance` <- `PhenotypesFromVariants37`$new()
          self$actual_instance <- `PhenotypesFromVariants37_instance`$fromJSON(input)
          self$actual_type <- "PhenotypesFromVariants37"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`PhenotypesFromVariants37_result`["error"])) {
        error_messages <- append(error_messages, `PhenotypesFromVariants37_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into VariantsFromPhenotypesItem with anyOf schemas PhenotypesFromVariants, PhenotypesFromVariants37. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert VariantsFromPhenotypesItem to a base R type
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
    #' Serialize VariantsFromPhenotypesItem to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the VariantsFromPhenotypesItem.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Validate the input JSON with respect to VariantsFromPhenotypesItem and
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
#VariantsFromPhenotypesItem$unlock()
#
## Below is an example to define the print function
#VariantsFromPhenotypesItem$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#VariantsFromPhenotypesItem$lock()

