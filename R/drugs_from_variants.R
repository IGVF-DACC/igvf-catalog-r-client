#' Create a new DrugsFromVariants
#'
#' @description
#' DrugsFromVariants Class
#'
#' @docType class
#' @title DrugsFromVariants
#' @description DrugsFromVariants Class
#' @format An \code{R6Class} generator object
#' @field drug  \link{DrugsFromVariantsDrug} [optional]
#' @field _from  character
#' @field gene_names  list(character) [optional]
#' @field pmid  character [optional]
#' @field study_parameters  list(\link{StudyParameters}) [optional]
#' @field phenotype_categories  list(character) [optional]
#' @field source  character
#' @field source_url  character
#' @field name  character
#' @field class  character [optional]
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DrugsFromVariants <- R6::R6Class(
  "DrugsFromVariants",
  public = list(
    `drug` = NULL,
    `_from` = NULL,
    `gene_names` = NULL,
    `pmid` = NULL,
    `study_parameters` = NULL,
    `phenotype_categories` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `name` = NULL,
    `class` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new DrugsFromVariants class.
    #'
    #' @param _from _from
    #' @param source source
    #' @param source_url source_url
    #' @param name name
    #' @param drug drug
    #' @param gene_names gene_names
    #' @param pmid pmid
    #' @param study_parameters study_parameters
    #' @param phenotype_categories phenotype_categories
    #' @param class class
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_from`, `source`, `source_url`, `name`, `drug` = NULL, `gene_names` = NULL, `pmid` = NULL, `study_parameters` = NULL, `phenotype_categories` = NULL, `class` = NULL, `method` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`_from`)) {
        if (!(is.character(`_from`) && length(`_from`) == 1)) {
          stop(paste("Error! Invalid data for `_from`. Must be a string:", `_from`))
        }
        self$`_from` <- `_from`
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
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`drug`)) {
        stopifnot(R6::is.R6(`drug`))
        self$`drug` <- `drug`
      }
      if (!is.null(`gene_names`)) {
        stopifnot(is.vector(`gene_names`), length(`gene_names`) != 0)
        sapply(`gene_names`, function(x) stopifnot(is.character(x)))
        self$`gene_names` <- `gene_names`
      }
      if (!is.null(`pmid`)) {
        if (!(is.character(`pmid`) && length(`pmid`) == 1)) {
          stop(paste("Error! Invalid data for `pmid`. Must be a string:", `pmid`))
        }
        self$`pmid` <- `pmid`
      }
      if (!is.null(`study_parameters`)) {
        stopifnot(is.vector(`study_parameters`), length(`study_parameters`) != 0)
        sapply(`study_parameters`, function(x) stopifnot(R6::is.R6(x)))
        self$`study_parameters` <- `study_parameters`
      }
      if (!is.null(`phenotype_categories`)) {
        stopifnot(is.vector(`phenotype_categories`), length(`phenotype_categories`) != 0)
        sapply(`phenotype_categories`, function(x) stopifnot(is.character(x)))
        self$`phenotype_categories` <- `phenotype_categories`
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
    #' @return DrugsFromVariants as a base R list.
    #' @examples
    #' # convert array of DrugsFromVariants (x) to a data frame
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
    #' Convert DrugsFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DrugsFromVariantsObject <- list()
      if (!is.null(self$`drug`)) {
        DrugsFromVariantsObject[["drug"]] <-
          self$`drug`$toSimpleType()
      }
      if (!is.null(self$`_from`)) {
        DrugsFromVariantsObject[["_from"]] <-
          self$`_from`
      }
      if (!is.null(self$`gene_names`)) {
        DrugsFromVariantsObject[["gene_names"]] <-
          self$`gene_names`
      }
      if (!is.null(self$`pmid`)) {
        DrugsFromVariantsObject[["pmid"]] <-
          self$`pmid`
      }
      if (!is.null(self$`study_parameters`)) {
        DrugsFromVariantsObject[["study_parameters"]] <-
          lapply(self$`study_parameters`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`phenotype_categories`)) {
        DrugsFromVariantsObject[["phenotype_categories"]] <-
          self$`phenotype_categories`
      }
      if (!is.null(self$`source`)) {
        DrugsFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        DrugsFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`name`)) {
        DrugsFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`class`)) {
        DrugsFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        DrugsFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        DrugsFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(DrugsFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DrugsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of DrugsFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`drug`)) {
        `drug_object` <- DrugsFromVariantsDrug$new()
        `drug_object`$fromJSON(jsonlite::toJSON(this_object$`drug`, auto_unbox = TRUE, digits = NA))
        self$`drug` <- `drug_object`
      }
      if (!is.null(this_object$`_from`)) {
        self$`_from` <- this_object$`_from`
      }
      if (!is.null(this_object$`gene_names`)) {
        self$`gene_names` <- ApiClient$new()$deserializeObj(this_object$`gene_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`pmid`)) {
        self$`pmid` <- this_object$`pmid`
      }
      if (!is.null(this_object$`study_parameters`)) {
        self$`study_parameters` <- ApiClient$new()$deserializeObj(this_object$`study_parameters`, "array[StudyParameters]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`phenotype_categories`)) {
        self$`phenotype_categories` <- ApiClient$new()$deserializeObj(this_object$`phenotype_categories`, "array[character]", loadNamespace("igvfcatalogclient"))
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
    #' @return DrugsFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DrugsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of DrugsFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`drug` <- DrugsFromVariantsDrug$new()$fromJSON(jsonlite::toJSON(this_object$`drug`, auto_unbox = TRUE, digits = NA))
      self$`_from` <- this_object$`_from`
      self$`gene_names` <- ApiClient$new()$deserializeObj(this_object$`gene_names`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`pmid` <- this_object$`pmid`
      self$`study_parameters` <- ApiClient$new()$deserializeObj(this_object$`study_parameters`, "array[StudyParameters]", loadNamespace("igvfcatalogclient"))
      self$`phenotype_categories` <- ApiClient$new()$deserializeObj(this_object$`phenotype_categories`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`name` <- this_object$`name`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to DrugsFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `_from`
      if (!is.null(input_json$`_from`)) {
        if (!(is.character(input_json$`_from`) && length(input_json$`_from`) == 1)) {
          stop(paste("Error! Invalid data for `_from`. Must be a string:", input_json$`_from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DrugsFromVariants: the required field `_from` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DrugsFromVariants: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DrugsFromVariants: the required field `source_url` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DrugsFromVariants: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DrugsFromVariants
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `_from` is null
      if (is.null(self$`_from`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        return(FALSE)
      }

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
      # check if the required `_from` is null
      if (is.null(self$`_from`)) {
        invalid_fields["_from"] <- "Non-nullable required field `_from` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

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
# DrugsFromVariants$unlock()
#
## Below is an example to define the print function
# DrugsFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DrugsFromVariants$lock()

