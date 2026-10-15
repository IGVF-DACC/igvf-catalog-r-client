#' Create a new MotifsFromProteins
#'
#' @description
#' MotifsFromProteins Class
#'
#' @docType class
#' @title MotifsFromProteins
#' @description MotifsFromProteins Class
#' @format An \code{R6Class} generator object
#' @field source  character [optional]
#' @field protein  \link{ComplexesFromProteinsProtein} [optional]
#' @field complex  \link{ComplexesFromProteinsComplex} [optional]
#' @field motif  \link{MotifsFromProteinsMotif} [optional]
#' @field name  character
#' @field class  character [optional]
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MotifsFromProteins <- R6::R6Class(
  "MotifsFromProteins",
  public = list(
    `source` = NULL,
    `protein` = NULL,
    `complex` = NULL,
    `motif` = NULL,
    `name` = NULL,
    `class` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new MotifsFromProteins class.
    #'
    #' @param name name
    #' @param source source
    #' @param protein protein
    #' @param complex complex
    #' @param motif motif
    #' @param class class
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`name`, `source` = NULL, `protein` = NULL, `complex` = NULL, `motif` = NULL, `class` = NULL, `method` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
      }
      if (!is.null(`complex`)) {
        stopifnot(R6::is.R6(`complex`))
        self$`complex` <- `complex`
      }
      if (!is.null(`motif`)) {
        stopifnot(R6::is.R6(`motif`))
        self$`motif` <- `motif`
      }
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
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
    #' @return MotifsFromProteins as a base R list.
    #' @examples
    #' # convert array of MotifsFromProteins (x) to a data frame
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
    #' Convert MotifsFromProteins to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MotifsFromProteinsObject <- list()
      if (!is.null(self$`source`)) {
        MotifsFromProteinsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`protein`)) {
        MotifsFromProteinsObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`complex`)) {
        MotifsFromProteinsObject[["complex"]] <-
          self$`complex`$toSimpleType()
      }
      if (!is.null(self$`motif`)) {
        MotifsFromProteinsObject[["motif"]] <-
          self$`motif`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        MotifsFromProteinsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`class`)) {
        MotifsFromProteinsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        MotifsFromProteinsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        MotifsFromProteinsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(MotifsFromProteinsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MotifsFromProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of MotifsFromProteins
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- ComplexesFromProteinsProtein$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`complex`)) {
        `complex_object` <- ComplexesFromProteinsComplex$new()
        `complex_object`$fromJSON(jsonlite::toJSON(this_object$`complex`, auto_unbox = TRUE, digits = NA))
        self$`complex` <- `complex_object`
      }
      if (!is.null(this_object$`motif`)) {
        `motif_object` <- MotifsFromProteinsMotif$new()
        `motif_object`$fromJSON(jsonlite::toJSON(this_object$`motif`, auto_unbox = TRUE, digits = NA))
        self$`motif` <- `motif_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MotifsFromProteins in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MotifsFromProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of MotifsFromProteins
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`protein` <- ComplexesFromProteinsProtein$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`complex` <- ComplexesFromProteinsComplex$new()$fromJSON(jsonlite::toJSON(this_object$`complex`, auto_unbox = TRUE, digits = NA))
      self$`motif` <- MotifsFromProteinsMotif$new()$fromJSON(jsonlite::toJSON(this_object$`motif`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to MotifsFromProteins and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MotifsFromProteins: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MotifsFromProteins
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# MotifsFromProteins$unlock()
#
## Below is an example to define the print function
# MotifsFromProteins$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MotifsFromProteins$lock()

