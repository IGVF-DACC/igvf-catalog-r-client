#' Create a new Annotations
#'
#' @description
#' Annotations Class
#'
#' @docType class
#' @title Annotations
#' @description Annotations Class
#' @format An \code{R6Class} generator object
#' @field genes  \link{Biosamples}
#' @field drugs  \link{Biosamples}
#' @field proteins  \link{Biosamples}
#' @field diseases  \link{Biosamples}
#' @field phenotypes  \link{Biosamples}
#' @field biosamples  \link{Biosamples}
#' @field genomic_elements  \link{Biosamples}
#' @field total  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Annotations <- R6::R6Class(
  "Annotations",
  public = list(
    `genes` = NULL,
    `drugs` = NULL,
    `proteins` = NULL,
    `diseases` = NULL,
    `phenotypes` = NULL,
    `biosamples` = NULL,
    `genomic_elements` = NULL,
    `total` = NULL,

    #' @description
    #' Initialize a new Annotations class.
    #'
    #' @param genes genes
    #' @param drugs drugs
    #' @param proteins proteins
    #' @param diseases diseases
    #' @param phenotypes phenotypes
    #' @param biosamples biosamples
    #' @param genomic_elements genomic_elements
    #' @param total total
    #' @param ... Other optional arguments.
    initialize = function(`genes`, `drugs`, `proteins`, `diseases`, `phenotypes`, `biosamples`, `genomic_elements`, `total`, ...) {
      if (!missing(`genes`)) {
        stopifnot(R6::is.R6(`genes`))
        self$`genes` <- `genes`
      }
      if (!missing(`drugs`)) {
        stopifnot(R6::is.R6(`drugs`))
        self$`drugs` <- `drugs`
      }
      if (!missing(`proteins`)) {
        stopifnot(R6::is.R6(`proteins`))
        self$`proteins` <- `proteins`
      }
      if (!missing(`diseases`)) {
        stopifnot(R6::is.R6(`diseases`))
        self$`diseases` <- `diseases`
      }
      if (!missing(`phenotypes`)) {
        stopifnot(R6::is.R6(`phenotypes`))
        self$`phenotypes` <- `phenotypes`
      }
      if (!missing(`biosamples`)) {
        stopifnot(R6::is.R6(`biosamples`))
        self$`biosamples` <- `biosamples`
      }
      if (!missing(`genomic_elements`)) {
        stopifnot(R6::is.R6(`genomic_elements`))
        self$`genomic_elements` <- `genomic_elements`
      }
      if (!missing(`total`)) {
        self$`total` <- `total`
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
    #' @return Annotations as a base R list.
    #' @examples
    #' # convert array of Annotations (x) to a data frame
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
    #' Convert Annotations to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationsObject <- list()
      if (!is.null(self$`genes`)) {
        AnnotationsObject[["genes"]] <-
          self$`genes`$toSimpleType()
      }
      if (!is.null(self$`drugs`)) {
        AnnotationsObject[["drugs"]] <-
          self$`drugs`$toSimpleType()
      }
      if (!is.null(self$`proteins`)) {
        AnnotationsObject[["proteins"]] <-
          self$`proteins`$toSimpleType()
      }
      if (!is.null(self$`diseases`)) {
        AnnotationsObject[["diseases"]] <-
          self$`diseases`$toSimpleType()
      }
      if (!is.null(self$`phenotypes`)) {
        AnnotationsObject[["phenotypes"]] <-
          self$`phenotypes`$toSimpleType()
      }
      if (!is.null(self$`biosamples`)) {
        AnnotationsObject[["biosamples"]] <-
          self$`biosamples`$toSimpleType()
      }
      if (!is.null(self$`genomic_elements`)) {
        AnnotationsObject[["genomic_elements"]] <-
          self$`genomic_elements`$toSimpleType()
      }
      if (!is.null(self$`total`)) {
        AnnotationsObject[["total"]] <-
          self$`total`
      }
      return(AnnotationsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Annotations
    #'
    #' @param input_json the JSON input
    #' @return the instance of Annotations
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`genes`)) {
        `genes_object` <- Biosamples$new()
        `genes_object`$fromJSON(jsonlite::toJSON(this_object$`genes`, auto_unbox = TRUE, digits = NA))
        self$`genes` <- `genes_object`
      }
      if (!is.null(this_object$`drugs`)) {
        `drugs_object` <- Biosamples$new()
        `drugs_object`$fromJSON(jsonlite::toJSON(this_object$`drugs`, auto_unbox = TRUE, digits = NA))
        self$`drugs` <- `drugs_object`
      }
      if (!is.null(this_object$`proteins`)) {
        `proteins_object` <- Biosamples$new()
        `proteins_object`$fromJSON(jsonlite::toJSON(this_object$`proteins`, auto_unbox = TRUE, digits = NA))
        self$`proteins` <- `proteins_object`
      }
      if (!is.null(this_object$`diseases`)) {
        `diseases_object` <- Biosamples$new()
        `diseases_object`$fromJSON(jsonlite::toJSON(this_object$`diseases`, auto_unbox = TRUE, digits = NA))
        self$`diseases` <- `diseases_object`
      }
      if (!is.null(this_object$`phenotypes`)) {
        `phenotypes_object` <- Biosamples$new()
        `phenotypes_object`$fromJSON(jsonlite::toJSON(this_object$`phenotypes`, auto_unbox = TRUE, digits = NA))
        self$`phenotypes` <- `phenotypes_object`
      }
      if (!is.null(this_object$`biosamples`)) {
        `biosamples_object` <- Biosamples$new()
        `biosamples_object`$fromJSON(jsonlite::toJSON(this_object$`biosamples`, auto_unbox = TRUE, digits = NA))
        self$`biosamples` <- `biosamples_object`
      }
      if (!is.null(this_object$`genomic_elements`)) {
        `genomic_elements_object` <- Biosamples$new()
        `genomic_elements_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_elements`, auto_unbox = TRUE, digits = NA))
        self$`genomic_elements` <- `genomic_elements_object`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Annotations in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Annotations
    #'
    #' @param input_json the JSON input
    #' @return the instance of Annotations
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`genes` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`genes`, auto_unbox = TRUE, digits = NA))
      self$`drugs` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`drugs`, auto_unbox = TRUE, digits = NA))
      self$`proteins` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`proteins`, auto_unbox = TRUE, digits = NA))
      self$`diseases` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`diseases`, auto_unbox = TRUE, digits = NA))
      self$`phenotypes` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`phenotypes`, auto_unbox = TRUE, digits = NA))
      self$`biosamples` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`biosamples`, auto_unbox = TRUE, digits = NA))
      self$`genomic_elements` <- Biosamples$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_elements`, auto_unbox = TRUE, digits = NA))
      self$`total` <- this_object$`total`
      self
    },

    #' @description
    #' Validate JSON input with respect to Annotations and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `genes`
      if (!is.null(input_json$`genes`)) {
        stopifnot(R6::is.R6(input_json$`genes`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `genes` is missing."))
      }
      # check the required field `drugs`
      if (!is.null(input_json$`drugs`)) {
        stopifnot(R6::is.R6(input_json$`drugs`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `drugs` is missing."))
      }
      # check the required field `proteins`
      if (!is.null(input_json$`proteins`)) {
        stopifnot(R6::is.R6(input_json$`proteins`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `proteins` is missing."))
      }
      # check the required field `diseases`
      if (!is.null(input_json$`diseases`)) {
        stopifnot(R6::is.R6(input_json$`diseases`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `diseases` is missing."))
      }
      # check the required field `phenotypes`
      if (!is.null(input_json$`phenotypes`)) {
        stopifnot(R6::is.R6(input_json$`phenotypes`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `phenotypes` is missing."))
      }
      # check the required field `biosamples`
      if (!is.null(input_json$`biosamples`)) {
        stopifnot(R6::is.R6(input_json$`biosamples`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `biosamples` is missing."))
      }
      # check the required field `genomic_elements`
      if (!is.null(input_json$`genomic_elements`)) {
        stopifnot(R6::is.R6(input_json$`genomic_elements`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `genomic_elements` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotations: the required field `total` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Annotations
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `genes` is null
      if (is.null(self$`genes`)) {
        return(FALSE)
      }

      # check if the required `drugs` is null
      if (is.null(self$`drugs`)) {
        return(FALSE)
      }

      # check if the required `proteins` is null
      if (is.null(self$`proteins`)) {
        return(FALSE)
      }

      # check if the required `diseases` is null
      if (is.null(self$`diseases`)) {
        return(FALSE)
      }

      # check if the required `phenotypes` is null
      if (is.null(self$`phenotypes`)) {
        return(FALSE)
      }

      # check if the required `biosamples` is null
      if (is.null(self$`biosamples`)) {
        return(FALSE)
      }

      # check if the required `genomic_elements` is null
      if (is.null(self$`genomic_elements`)) {
        return(FALSE)
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
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
      # check if the required `genes` is null
      if (is.null(self$`genes`)) {
        invalid_fields["genes"] <- "Non-nullable required field `genes` cannot be null."
      }

      # check if the required `drugs` is null
      if (is.null(self$`drugs`)) {
        invalid_fields["drugs"] <- "Non-nullable required field `drugs` cannot be null."
      }

      # check if the required `proteins` is null
      if (is.null(self$`proteins`)) {
        invalid_fields["proteins"] <- "Non-nullable required field `proteins` cannot be null."
      }

      # check if the required `diseases` is null
      if (is.null(self$`diseases`)) {
        invalid_fields["diseases"] <- "Non-nullable required field `diseases` cannot be null."
      }

      # check if the required `phenotypes` is null
      if (is.null(self$`phenotypes`)) {
        invalid_fields["phenotypes"] <- "Non-nullable required field `phenotypes` cannot be null."
      }

      # check if the required `biosamples` is null
      if (is.null(self$`biosamples`)) {
        invalid_fields["biosamples"] <- "Non-nullable required field `biosamples` cannot be null."
      }

      # check if the required `genomic_elements` is null
      if (is.null(self$`genomic_elements`)) {
        invalid_fields["genomic_elements"] <- "Non-nullable required field `genomic_elements` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
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
# Annotations$unlock()
#
## Below is an example to define the print function
# Annotations$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Annotations$lock()

