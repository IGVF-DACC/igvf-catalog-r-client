#' Create a new DiseaseFromVariants
#'
#' @description
#' DiseaseFromVariants Class
#'
#' @docType class
#' @title DiseaseFromVariants
#' @description DiseaseFromVariants Class
#' @format An \code{R6Class} generator object
#' @field sequence_variant  \link{DiseaseFromVariantsSequenceVariant} [optional]
#' @field disease  \link{BiosamplesFromGenomicElementsBiosample} [optional]
#' @field gene_id  character [optional]
#' @field gene_name  character [optional]
#' @field assertion  character [optional]
#' @field pmids  list(character) [optional]
#' @field class  character [optional]
#' @field method  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DiseaseFromVariants <- R6::R6Class(
  "DiseaseFromVariants",
  public = list(
    `sequence_variant` = NULL,
    `disease` = NULL,
    `gene_id` = NULL,
    `gene_name` = NULL,
    `assertion` = NULL,
    `pmids` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new DiseaseFromVariants class.
    #'
    #' @param name name
    #' @param sequence_variant sequence_variant
    #' @param disease disease
    #' @param gene_id gene_id
    #' @param gene_name gene_name
    #' @param assertion assertion
    #' @param pmids pmids
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param source source
    #' @param source_url source_url
    #' @param ... Other optional arguments.
    initialize = function(`name`, `sequence_variant` = NULL, `disease` = NULL, `gene_id` = NULL, `gene_name` = NULL, `assertion` = NULL, `pmids` = NULL, `class` = NULL, `method` = NULL, `label` = NULL, `files_filesets` = NULL, `source` = NULL, `source_url` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`sequence_variant`)) {
        stopifnot(R6::is.R6(`sequence_variant`))
        self$`sequence_variant` <- `sequence_variant`
      }
      if (!is.null(`disease`)) {
        stopifnot(R6::is.R6(`disease`))
        self$`disease` <- `disease`
      }
      if (!is.null(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!is.null(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!is.null(`assertion`)) {
        if (!(is.character(`assertion`) && length(`assertion`) == 1)) {
          stop(paste("Error! Invalid data for `assertion`. Must be a string:", `assertion`))
        }
        self$`assertion` <- `assertion`
      }
      if (!is.null(`pmids`)) {
        stopifnot(is.vector(`pmids`), length(`pmids`) != 0)
        sapply(`pmids`, function(x) stopifnot(is.character(x)))
        self$`pmids` <- `pmids`
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
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
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
    #' @return DiseaseFromVariants as a base R list.
    #' @examples
    #' # convert array of DiseaseFromVariants (x) to a data frame
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
    #' Convert DiseaseFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DiseaseFromVariantsObject <- list()
      if (!is.null(self$`sequence_variant`)) {
        DiseaseFromVariantsObject[["sequence_variant"]] <-
          self$`sequence_variant`$toSimpleType()
      }
      if (!is.null(self$`disease`)) {
        DiseaseFromVariantsObject[["disease"]] <-
          self$`disease`$toSimpleType()
      }
      if (!is.null(self$`gene_id`)) {
        DiseaseFromVariantsObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`gene_name`)) {
        DiseaseFromVariantsObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`assertion`)) {
        DiseaseFromVariantsObject[["assertion"]] <-
          self$`assertion`
      }
      if (!is.null(self$`pmids`)) {
        DiseaseFromVariantsObject[["pmids"]] <-
          self$`pmids`
      }
      if (!is.null(self$`class`)) {
        DiseaseFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        DiseaseFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        DiseaseFromVariantsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        DiseaseFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`source`)) {
        DiseaseFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        DiseaseFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`name`)) {
        DiseaseFromVariantsObject[["name"]] <-
          self$`name`
      }
      return(DiseaseFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DiseaseFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiseaseFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sequence_variant`)) {
        `sequence_variant_object` <- DiseaseFromVariantsSequenceVariant$new()
        `sequence_variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence_variant` <- `sequence_variant_object`
      }
      if (!is.null(this_object$`disease`)) {
        `disease_object` <- BiosamplesFromGenomicElementsBiosample$new()
        `disease_object`$fromJSON(jsonlite::toJSON(this_object$`disease`, auto_unbox = TRUE, digits = NA))
        self$`disease` <- `disease_object`
      }
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`assertion`)) {
        self$`assertion` <- this_object$`assertion`
      }
      if (!is.null(this_object$`pmids`)) {
        self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DiseaseFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DiseaseFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiseaseFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sequence_variant` <- DiseaseFromVariantsSequenceVariant$new()$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
      self$`disease` <- BiosamplesFromGenomicElementsBiosample$new()$fromJSON(jsonlite::toJSON(this_object$`disease`, auto_unbox = TRUE, digits = NA))
      self$`gene_id` <- this_object$`gene_id`
      self$`gene_name` <- this_object$`gene_name`
      self$`assertion` <- this_object$`assertion`
      self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to DiseaseFromVariants and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for DiseaseFromVariants: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DiseaseFromVariants
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
# DiseaseFromVariants$unlock()
#
## Below is an example to define the print function
# DiseaseFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DiseaseFromVariants$lock()

