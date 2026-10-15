#' Create a new Complex
#'
#' @description
#' Complex Class
#'
#' @docType class
#' @title Complex
#' @description Complex Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field alias  list(character) [optional]
#' @field molecules  list(character) [optional]
#' @field evidence_code  character [optional]
#' @field experimental_evidence  character [optional]
#' @field description  character [optional]
#' @field complex_assembly  \link{ComplexComplexAssembly} [optional]
#' @field complex_source  character [optional]
#' @field reactome_xref  list(character) [optional]
#' @field class  character [optional]
#' @field method  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character [optional]
#' @field source  character
#' @field source_url  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Complex <- R6::R6Class(
  "Complex",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `alias` = NULL,
    `molecules` = NULL,
    `evidence_code` = NULL,
    `experimental_evidence` = NULL,
    `description` = NULL,
    `complex_assembly` = NULL,
    `complex_source` = NULL,
    `reactome_xref` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `source` = NULL,
    `source_url` = NULL,

    #' @description
    #' Initialize a new Complex class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param source source
    #' @param source_url source_url
    #' @param alias alias
    #' @param molecules molecules
    #' @param evidence_code evidence_code
    #' @param experimental_evidence experimental_evidence
    #' @param description description
    #' @param complex_assembly complex_assembly
    #' @param complex_source complex_source
    #' @param reactome_xref reactome_xref
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `source`, `source_url`, `alias` = NULL, `molecules` = NULL, `evidence_code` = NULL, `experimental_evidence` = NULL, `description` = NULL, `complex_assembly` = NULL, `complex_source` = NULL, `reactome_xref` = NULL, `class` = NULL, `method` = NULL, `label` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`alias`)) {
        stopifnot(is.vector(`alias`), length(`alias`) != 0)
        sapply(`alias`, function(x) stopifnot(is.character(x)))
        self$`alias` <- `alias`
      }
      if (!is.null(`molecules`)) {
        stopifnot(is.vector(`molecules`), length(`molecules`) != 0)
        sapply(`molecules`, function(x) stopifnot(is.character(x)))
        self$`molecules` <- `molecules`
      }
      if (!is.null(`evidence_code`)) {
        if (!(is.character(`evidence_code`) && length(`evidence_code`) == 1)) {
          stop(paste("Error! Invalid data for `evidence_code`. Must be a string:", `evidence_code`))
        }
        self$`evidence_code` <- `evidence_code`
      }
      if (!is.null(`experimental_evidence`)) {
        if (!(is.character(`experimental_evidence`) && length(`experimental_evidence`) == 1)) {
          stop(paste("Error! Invalid data for `experimental_evidence`. Must be a string:", `experimental_evidence`))
        }
        self$`experimental_evidence` <- `experimental_evidence`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`complex_assembly`)) {
        stopifnot(R6::is.R6(`complex_assembly`))
        self$`complex_assembly` <- `complex_assembly`
      }
      if (!is.null(`complex_source`)) {
        if (!(is.character(`complex_source`) && length(`complex_source`) == 1)) {
          stop(paste("Error! Invalid data for `complex_source`. Must be a string:", `complex_source`))
        }
        self$`complex_source` <- `complex_source`
      }
      if (!is.null(`reactome_xref`)) {
        stopifnot(is.vector(`reactome_xref`), length(`reactome_xref`) != 0)
        sapply(`reactome_xref`, function(x) stopifnot(is.character(x)))
        self$`reactome_xref` <- `reactome_xref`
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
    #' @return Complex as a base R list.
    #' @examples
    #' # convert array of Complex (x) to a data frame
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
    #' Convert Complex to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComplexObject <- list()
      if (!is.null(self$`_id`)) {
        ComplexObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        ComplexObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`alias`)) {
        ComplexObject[["alias"]] <-
          self$`alias`
      }
      if (!is.null(self$`molecules`)) {
        ComplexObject[["molecules"]] <-
          self$`molecules`
      }
      if (!is.null(self$`evidence_code`)) {
        ComplexObject[["evidence_code"]] <-
          self$`evidence_code`
      }
      if (!is.null(self$`experimental_evidence`)) {
        ComplexObject[["experimental_evidence"]] <-
          self$`experimental_evidence`
      }
      if (!is.null(self$`description`)) {
        ComplexObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`complex_assembly`)) {
        ComplexObject[["complex_assembly"]] <-
          self$`complex_assembly`$toSimpleType()
      }
      if (!is.null(self$`complex_source`)) {
        ComplexObject[["complex_source"]] <-
          self$`complex_source`
      }
      if (!is.null(self$`reactome_xref`)) {
        ComplexObject[["reactome_xref"]] <-
          self$`reactome_xref`
      }
      if (!is.null(self$`class`)) {
        ComplexObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        ComplexObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        ComplexObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        ComplexObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`source`)) {
        ComplexObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        ComplexObject[["source_url"]] <-
          self$`source_url`
      }
      return(ComplexObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Complex
    #'
    #' @param input_json the JSON input
    #' @return the instance of Complex
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`alias`)) {
        self$`alias` <- ApiClient$new()$deserializeObj(this_object$`alias`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`molecules`)) {
        self$`molecules` <- ApiClient$new()$deserializeObj(this_object$`molecules`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`evidence_code`)) {
        self$`evidence_code` <- this_object$`evidence_code`
      }
      if (!is.null(this_object$`experimental_evidence`)) {
        self$`experimental_evidence` <- this_object$`experimental_evidence`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`complex_assembly`)) {
        `complex_assembly_object` <- ComplexComplexAssembly$new()
        `complex_assembly_object`$fromJSON(jsonlite::toJSON(this_object$`complex_assembly`, auto_unbox = TRUE, digits = NA))
        self$`complex_assembly` <- `complex_assembly_object`
      }
      if (!is.null(this_object$`complex_source`)) {
        self$`complex_source` <- this_object$`complex_source`
      }
      if (!is.null(this_object$`reactome_xref`)) {
        self$`reactome_xref` <- ApiClient$new()$deserializeObj(this_object$`reactome_xref`, "array[character]", loadNamespace("igvfcatalogclient"))
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Complex in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Complex
    #'
    #' @param input_json the JSON input
    #' @return the instance of Complex
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`alias` <- ApiClient$new()$deserializeObj(this_object$`alias`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`molecules` <- ApiClient$new()$deserializeObj(this_object$`molecules`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`evidence_code` <- this_object$`evidence_code`
      self$`experimental_evidence` <- this_object$`experimental_evidence`
      self$`description` <- this_object$`description`
      self$`complex_assembly` <- ComplexComplexAssembly$new()$fromJSON(jsonlite::toJSON(this_object$`complex_assembly`, auto_unbox = TRUE, digits = NA))
      self$`complex_source` <- this_object$`complex_source`
      self$`reactome_xref` <- ApiClient$new()$deserializeObj(this_object$`reactome_xref`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to Complex and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `_id`
      if (!is.null(input_json$`_id`)) {
        if (!(is.character(input_json$`_id`) && length(input_json$`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", input_json$`_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Complex: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Complex: the required field `name` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Complex: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Complex: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Complex
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

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
# Complex$unlock()
#
## Below is an example to define the print function
# Complex$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Complex$lock()

