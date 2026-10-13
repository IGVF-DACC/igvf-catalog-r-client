#' Create a new AnnotationsFromGoTerms
#'
#' @description
#' AnnotationsFromGoTerms Class
#'
#' @docType class
#' @title AnnotationsFromGoTerms
#' @description AnnotationsFromGoTerms Class
#' @format An \code{R6Class} generator object
#' @field gene_product_id  character
#' @field gene_product_name  character [optional]
#' @field go_term_name  character
#' @field source  character
#' @field gene_product_type  character
#' @field gene_product_symbol  character
#' @field qualifier  list(character)
#' @field organism  character
#' @field evidence  character
#' @field go_id  character
#' @field name  character
#' @field class  character [optional]
#' @field method  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationsFromGoTerms <- R6::R6Class(
  "AnnotationsFromGoTerms",
  public = list(
    `gene_product_id` = NULL,
    `gene_product_name` = NULL,
    `go_term_name` = NULL,
    `source` = NULL,
    `gene_product_type` = NULL,
    `gene_product_symbol` = NULL,
    `qualifier` = NULL,
    `organism` = NULL,
    `evidence` = NULL,
    `go_id` = NULL,
    `name` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new AnnotationsFromGoTerms class.
    #'
    #' @param gene_product_id gene_product_id
    #' @param go_term_name go_term_name
    #' @param source source
    #' @param gene_product_type gene_product_type
    #' @param gene_product_symbol gene_product_symbol
    #' @param qualifier qualifier
    #' @param organism organism
    #' @param evidence evidence
    #' @param go_id go_id
    #' @param name name
    #' @param gene_product_name gene_product_name
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`gene_product_id`, `go_term_name`, `source`, `gene_product_type`, `gene_product_symbol`, `qualifier`, `organism`, `evidence`, `go_id`, `name`, `gene_product_name` = NULL, `class` = NULL, `method` = NULL, `label` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`gene_product_id`)) {
        if (!(is.character(`gene_product_id`) && length(`gene_product_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_id`. Must be a string:", `gene_product_id`))
        }
        self$`gene_product_id` <- `gene_product_id`
      }
      if (!missing(`go_term_name`)) {
        if (!(is.character(`go_term_name`) && length(`go_term_name`) == 1)) {
          stop(paste("Error! Invalid data for `go_term_name`. Must be a string:", `go_term_name`))
        }
        self$`go_term_name` <- `go_term_name`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`gene_product_type`)) {
        if (!(is.character(`gene_product_type`) && length(`gene_product_type`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_type`. Must be a string:", `gene_product_type`))
        }
        self$`gene_product_type` <- `gene_product_type`
      }
      if (!missing(`gene_product_symbol`)) {
        if (!(is.character(`gene_product_symbol`) && length(`gene_product_symbol`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_symbol`. Must be a string:", `gene_product_symbol`))
        }
        self$`gene_product_symbol` <- `gene_product_symbol`
      }
      if (!missing(`qualifier`)) {
        stopifnot(is.vector(`qualifier`), length(`qualifier`) != 0)
        sapply(`qualifier`, function(x) stopifnot(is.character(x)))
        self$`qualifier` <- `qualifier`
      }
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
      }
      if (!missing(`evidence`)) {
        if (!(is.character(`evidence`) && length(`evidence`) == 1)) {
          stop(paste("Error! Invalid data for `evidence`. Must be a string:", `evidence`))
        }
        self$`evidence` <- `evidence`
      }
      if (!missing(`go_id`)) {
        if (!(is.character(`go_id`) && length(`go_id`) == 1)) {
          stop(paste("Error! Invalid data for `go_id`. Must be a string:", `go_id`))
        }
        self$`go_id` <- `go_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`gene_product_name`)) {
        if (!(is.character(`gene_product_name`) && length(`gene_product_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_name`. Must be a string:", `gene_product_name`))
        }
        self$`gene_product_name` <- `gene_product_name`
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
    #' @return AnnotationsFromGoTerms as a base R list.
    #' @examples
    #' # convert array of AnnotationsFromGoTerms (x) to a data frame
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
    #' Convert AnnotationsFromGoTerms to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationsFromGoTermsObject <- list()
      if (!is.null(self$`gene_product_id`)) {
        AnnotationsFromGoTermsObject[["gene_product_id"]] <-
          self$`gene_product_id`
      }
      if (!is.null(self$`gene_product_name`)) {
        AnnotationsFromGoTermsObject[["gene_product_name"]] <-
          self$`gene_product_name`
      }
      if (!is.null(self$`go_term_name`)) {
        AnnotationsFromGoTermsObject[["go_term_name"]] <-
          self$`go_term_name`
      }
      if (!is.null(self$`source`)) {
        AnnotationsFromGoTermsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`gene_product_type`)) {
        AnnotationsFromGoTermsObject[["gene_product_type"]] <-
          self$`gene_product_type`
      }
      if (!is.null(self$`gene_product_symbol`)) {
        AnnotationsFromGoTermsObject[["gene_product_symbol"]] <-
          self$`gene_product_symbol`
      }
      if (!is.null(self$`qualifier`)) {
        AnnotationsFromGoTermsObject[["qualifier"]] <-
          self$`qualifier`
      }
      if (!is.null(self$`organism`)) {
        AnnotationsFromGoTermsObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`evidence`)) {
        AnnotationsFromGoTermsObject[["evidence"]] <-
          self$`evidence`
      }
      if (!is.null(self$`go_id`)) {
        AnnotationsFromGoTermsObject[["go_id"]] <-
          self$`go_id`
      }
      if (!is.null(self$`name`)) {
        AnnotationsFromGoTermsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`class`)) {
        AnnotationsFromGoTermsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        AnnotationsFromGoTermsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        AnnotationsFromGoTermsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        AnnotationsFromGoTermsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(AnnotationsFromGoTermsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationsFromGoTerms
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationsFromGoTerms
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_product_id`)) {
        self$`gene_product_id` <- this_object$`gene_product_id`
      }
      if (!is.null(this_object$`gene_product_name`)) {
        self$`gene_product_name` <- this_object$`gene_product_name`
      }
      if (!is.null(this_object$`go_term_name`)) {
        self$`go_term_name` <- this_object$`go_term_name`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`gene_product_type`)) {
        self$`gene_product_type` <- this_object$`gene_product_type`
      }
      if (!is.null(this_object$`gene_product_symbol`)) {
        self$`gene_product_symbol` <- this_object$`gene_product_symbol`
      }
      if (!is.null(this_object$`qualifier`)) {
        self$`qualifier` <- ApiClient$new()$deserializeObj(this_object$`qualifier`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
      }
      if (!is.null(this_object$`evidence`)) {
        self$`evidence` <- this_object$`evidence`
      }
      if (!is.null(this_object$`go_id`)) {
        self$`go_id` <- this_object$`go_id`
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
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
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
    #' @return AnnotationsFromGoTerms in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationsFromGoTerms
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationsFromGoTerms
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_product_id` <- this_object$`gene_product_id`
      self$`gene_product_name` <- this_object$`gene_product_name`
      self$`go_term_name` <- this_object$`go_term_name`
      self$`source` <- this_object$`source`
      self$`gene_product_type` <- this_object$`gene_product_type`
      self$`gene_product_symbol` <- this_object$`gene_product_symbol`
      self$`qualifier` <- ApiClient$new()$deserializeObj(this_object$`qualifier`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`organism` <- this_object$`organism`
      self$`evidence` <- this_object$`evidence`
      self$`go_id` <- this_object$`go_id`
      self$`name` <- this_object$`name`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationsFromGoTerms and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gene_product_id`
      if (!is.null(input_json$`gene_product_id`)) {
        if (!(is.character(input_json$`gene_product_id`) && length(input_json$`gene_product_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_id`. Must be a string:", input_json$`gene_product_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `gene_product_id` is missing."))
      }
      # check the required field `go_term_name`
      if (!is.null(input_json$`go_term_name`)) {
        if (!(is.character(input_json$`go_term_name`) && length(input_json$`go_term_name`) == 1)) {
          stop(paste("Error! Invalid data for `go_term_name`. Must be a string:", input_json$`go_term_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `go_term_name` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `source` is missing."))
      }
      # check the required field `gene_product_type`
      if (!is.null(input_json$`gene_product_type`)) {
        if (!(is.character(input_json$`gene_product_type`) && length(input_json$`gene_product_type`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_type`. Must be a string:", input_json$`gene_product_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `gene_product_type` is missing."))
      }
      # check the required field `gene_product_symbol`
      if (!is.null(input_json$`gene_product_symbol`)) {
        if (!(is.character(input_json$`gene_product_symbol`) && length(input_json$`gene_product_symbol`) == 1)) {
          stop(paste("Error! Invalid data for `gene_product_symbol`. Must be a string:", input_json$`gene_product_symbol`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `gene_product_symbol` is missing."))
      }
      # check the required field `qualifier`
      if (!is.null(input_json$`qualifier`)) {
        stopifnot(is.vector(input_json$`qualifier`), length(input_json$`qualifier`) != 0)
        tmp <- sapply(input_json$`qualifier`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `qualifier` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `organism` is missing."))
      }
      # check the required field `evidence`
      if (!is.null(input_json$`evidence`)) {
        if (!(is.character(input_json$`evidence`) && length(input_json$`evidence`) == 1)) {
          stop(paste("Error! Invalid data for `evidence`. Must be a string:", input_json$`evidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `evidence` is missing."))
      }
      # check the required field `go_id`
      if (!is.null(input_json$`go_id`)) {
        if (!(is.character(input_json$`go_id`) && length(input_json$`go_id`) == 1)) {
          stop(paste("Error! Invalid data for `go_id`. Must be a string:", input_json$`go_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `go_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationsFromGoTerms: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationsFromGoTerms
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gene_product_id` is null
      if (is.null(self$`gene_product_id`)) {
        return(FALSE)
      }

      # check if the required `go_term_name` is null
      if (is.null(self$`go_term_name`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `gene_product_type` is null
      if (is.null(self$`gene_product_type`)) {
        return(FALSE)
      }

      # check if the required `gene_product_symbol` is null
      if (is.null(self$`gene_product_symbol`)) {
        return(FALSE)
      }

      # check if the required `qualifier` is null
      if (is.null(self$`qualifier`)) {
        return(FALSE)
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        return(FALSE)
      }

      # check if the required `evidence` is null
      if (is.null(self$`evidence`)) {
        return(FALSE)
      }

      # check if the required `go_id` is null
      if (is.null(self$`go_id`)) {
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
      # check if the required `gene_product_id` is null
      if (is.null(self$`gene_product_id`)) {
        invalid_fields["gene_product_id"] <- "Non-nullable required field `gene_product_id` cannot be null."
      }

      # check if the required `go_term_name` is null
      if (is.null(self$`go_term_name`)) {
        invalid_fields["go_term_name"] <- "Non-nullable required field `go_term_name` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `gene_product_type` is null
      if (is.null(self$`gene_product_type`)) {
        invalid_fields["gene_product_type"] <- "Non-nullable required field `gene_product_type` cannot be null."
      }

      # check if the required `gene_product_symbol` is null
      if (is.null(self$`gene_product_symbol`)) {
        invalid_fields["gene_product_symbol"] <- "Non-nullable required field `gene_product_symbol` cannot be null."
      }

      # check if the required `qualifier` is null
      if (is.null(self$`qualifier`)) {
        invalid_fields["qualifier"] <- "Non-nullable required field `qualifier` cannot be null."
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        invalid_fields["organism"] <- "Non-nullable required field `organism` cannot be null."
      }

      # check if the required `evidence` is null
      if (is.null(self$`evidence`)) {
        invalid_fields["evidence"] <- "Non-nullable required field `evidence` cannot be null."
      }

      # check if the required `go_id` is null
      if (is.null(self$`go_id`)) {
        invalid_fields["go_id"] <- "Non-nullable required field `go_id` cannot be null."
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
# AnnotationsFromGoTerms$unlock()
#
## Below is an example to define the print function
# AnnotationsFromGoTerms$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationsFromGoTerms$lock()

