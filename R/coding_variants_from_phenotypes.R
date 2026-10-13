#' Create a new CodingVariantsFromPhenotypes
#'
#' @description
#' CodingVariantsFromPhenotypes Class
#'
#' @docType class
#' @title CodingVariantsFromPhenotypes
#' @description CodingVariantsFromPhenotypes Class
#' @format An \code{R6Class} generator object
#' @field coding_variant  \link{CodingVariant} [optional]
#' @field phenotype  \link{PhenotypeRef} [optional]
#' @field score  numeric
#' @field method  character [optional]
#' @field class  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character [optional]
#' @field source  character
#' @field source_url  character
#' @field variant  \link{VariantBasic} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CodingVariantsFromPhenotypes <- R6::R6Class(
  "CodingVariantsFromPhenotypes",
  public = list(
    `coding_variant` = NULL,
    `phenotype` = NULL,
    `score` = NULL,
    `method` = NULL,
    `class` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `variant` = NULL,

    #' @description
    #' Initialize a new CodingVariantsFromPhenotypes class.
    #'
    #' @param score score
    #' @param source source
    #' @param source_url source_url
    #' @param coding_variant coding_variant
    #' @param phenotype phenotype
    #' @param method method
    #' @param class class
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param variant variant
    #' @param ... Other optional arguments.
    initialize = function(`score`, `source`, `source_url`, `coding_variant` = NULL, `phenotype` = NULL, `method` = NULL, `class` = NULL, `label` = NULL, `files_filesets` = NULL, `variant` = NULL, ...) {
      if (!missing(`score`)) {
        self$`score` <- `score`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`coding_variant`)) {
        stopifnot(R6::is.R6(`coding_variant`))
        self$`coding_variant` <- `coding_variant`
      }
      if (!is.null(`phenotype`)) {
        stopifnot(R6::is.R6(`phenotype`))
        self$`phenotype` <- `phenotype`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!is.null(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
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
    #' @return CodingVariantsFromPhenotypes as a base R list.
    #' @examples
    #' # convert array of CodingVariantsFromPhenotypes (x) to a data frame
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
    #' Convert CodingVariantsFromPhenotypes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CodingVariantsFromPhenotypesObject <- list()
      if (!is.null(self$`coding_variant`)) {
        CodingVariantsFromPhenotypesObject[["coding_variant"]] <-
          self$`coding_variant`$toSimpleType()
      }
      if (!is.null(self$`phenotype`)) {
        CodingVariantsFromPhenotypesObject[["phenotype"]] <-
          self$`phenotype`$toSimpleType()
      }
      if (!is.null(self$`score`)) {
        CodingVariantsFromPhenotypesObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`method`)) {
        CodingVariantsFromPhenotypesObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        CodingVariantsFromPhenotypesObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`label`)) {
        CodingVariantsFromPhenotypesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        CodingVariantsFromPhenotypesObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`source`)) {
        CodingVariantsFromPhenotypesObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        CodingVariantsFromPhenotypesObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`variant`)) {
        CodingVariantsFromPhenotypesObject[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      return(CodingVariantsFromPhenotypesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariantsFromPhenotypes
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariantsFromPhenotypes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coding_variant`)) {
        `coding_variant_object` <- CodingVariant$new()
        `coding_variant_object`$fromJSON(jsonlite::toJSON(this_object$`coding_variant`, auto_unbox = TRUE, digits = NA))
        self$`coding_variant` <- `coding_variant_object`
      }
      if (!is.null(this_object$`phenotype`)) {
        `phenotype_object` <- PhenotypeRef$new()
        `phenotype_object`$fromJSON(jsonlite::toJSON(this_object$`phenotype`, auto_unbox = TRUE, digits = NA))
        self$`phenotype` <- `phenotype_object`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- VariantBasic$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CodingVariantsFromPhenotypes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariantsFromPhenotypes
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariantsFromPhenotypes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coding_variant` <- CodingVariant$new()$fromJSON(jsonlite::toJSON(this_object$`coding_variant`, auto_unbox = TRUE, digits = NA))
      self$`phenotype` <- PhenotypeRef$new()$fromJSON(jsonlite::toJSON(this_object$`phenotype`, auto_unbox = TRUE, digits = NA))
      self$`score` <- this_object$`score`
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`variant` <- VariantBasic$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CodingVariantsFromPhenotypes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsFromPhenotypes: the required field `score` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsFromPhenotypes: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariantsFromPhenotypes: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CodingVariantsFromPhenotypes
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
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
# CodingVariantsFromPhenotypes$unlock()
#
## Below is an example to define the print function
# CodingVariantsFromPhenotypes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CodingVariantsFromPhenotypes$lock()

