#' Create a new GeneProgramsGenePrograms
#'
#' @description
#' GeneProgramsGenePrograms Class
#'
#' @docType class
#' @title GeneProgramsGenePrograms
#' @description GeneProgramsGenePrograms Class
#' @format An \code{R6Class} generator object
#' @field source  character
#' @field source_url  character [optional]
#' @field files_filesets  character
#' @field class  character
#' @field method  character
#' @field label  character
#' @field biosample_term  character [optional]
#' @field biological_context  character [optional]
#' @field treatments_term_ids  list(character) [optional]
#' @field perturbation  character [optional]
#' @field _id  character
#' @field gene_program_1  \link{GeneProgramsFromGenesGeneProgram}
#' @field gene_program_2  \link{GeneProgramsFromGenesGeneProgram}
#' @field name  character
#' @field inverse_name  character
#' @field pearson_correlation  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeneProgramsGenePrograms <- R6::R6Class(
  "GeneProgramsGenePrograms",
  public = list(
    `source` = NULL,
    `source_url` = NULL,
    `files_filesets` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `biosample_term` = NULL,
    `biological_context` = NULL,
    `treatments_term_ids` = NULL,
    `perturbation` = NULL,
    `_id` = NULL,
    `gene_program_1` = NULL,
    `gene_program_2` = NULL,
    `name` = NULL,
    `inverse_name` = NULL,
    `pearson_correlation` = NULL,

    #' @description
    #' Initialize a new GeneProgramsGenePrograms class.
    #'
    #' @param source source
    #' @param files_filesets files_filesets
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param _id _id
    #' @param gene_program_1 gene_program_1
    #' @param gene_program_2 gene_program_2
    #' @param name name
    #' @param inverse_name inverse_name
    #' @param pearson_correlation pearson_correlation
    #' @param source_url source_url
    #' @param biosample_term biosample_term
    #' @param biological_context biological_context
    #' @param treatments_term_ids treatments_term_ids
    #' @param perturbation perturbation
    #' @param ... Other optional arguments.
    initialize = function(`source`, `files_filesets`, `class`, `method`, `label`, `_id`, `gene_program_1`, `gene_program_2`, `name`, `inverse_name`, `pearson_correlation`, `source_url` = NULL, `biosample_term` = NULL, `biological_context` = NULL, `treatments_term_ids` = NULL, `perturbation` = NULL, ...) {
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!missing(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`gene_program_1`)) {
        stopifnot(R6::is.R6(`gene_program_1`))
        self$`gene_program_1` <- `gene_program_1`
      }
      if (!missing(`gene_program_2`)) {
        stopifnot(R6::is.R6(`gene_program_2`))
        self$`gene_program_2` <- `gene_program_2`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`inverse_name`)) {
        if (!(is.character(`inverse_name`) && length(`inverse_name`) == 1)) {
          stop(paste("Error! Invalid data for `inverse_name`. Must be a string:", `inverse_name`))
        }
        self$`inverse_name` <- `inverse_name`
      }
      if (!missing(`pearson_correlation`)) {
        self$`pearson_correlation` <- `pearson_correlation`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`biosample_term`)) {
        if (!(is.character(`biosample_term`) && length(`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", `biosample_term`))
        }
        self$`biosample_term` <- `biosample_term`
      }
      if (!is.null(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!is.null(`treatments_term_ids`)) {
        stopifnot(is.vector(`treatments_term_ids`), length(`treatments_term_ids`) != 0)
        sapply(`treatments_term_ids`, function(x) stopifnot(is.character(x)))
        self$`treatments_term_ids` <- `treatments_term_ids`
      }
      if (!is.null(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
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
    #' @return GeneProgramsGenePrograms as a base R list.
    #' @examples
    #' # convert array of GeneProgramsGenePrograms (x) to a data frame
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
    #' Convert GeneProgramsGenePrograms to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeneProgramsGeneProgramsObject <- list()
      if (!is.null(self$`source`)) {
        GeneProgramsGeneProgramsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GeneProgramsGeneProgramsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`files_filesets`)) {
        GeneProgramsGeneProgramsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`class`)) {
        GeneProgramsGeneProgramsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        GeneProgramsGeneProgramsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        GeneProgramsGeneProgramsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`biosample_term`)) {
        GeneProgramsGeneProgramsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`biological_context`)) {
        GeneProgramsGeneProgramsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`treatments_term_ids`)) {
        GeneProgramsGeneProgramsObject[["treatments_term_ids"]] <-
          self$`treatments_term_ids`
      }
      if (!is.null(self$`perturbation`)) {
        GeneProgramsGeneProgramsObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`_id`)) {
        GeneProgramsGeneProgramsObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`gene_program_1`)) {
        GeneProgramsGeneProgramsObject[["gene_program_1"]] <-
          self$`gene_program_1`$toSimpleType()
      }
      if (!is.null(self$`gene_program_2`)) {
        GeneProgramsGeneProgramsObject[["gene_program_2"]] <-
          self$`gene_program_2`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        GeneProgramsGeneProgramsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`inverse_name`)) {
        GeneProgramsGeneProgramsObject[["inverse_name"]] <-
          self$`inverse_name`
      }
      if (!is.null(self$`pearson_correlation`)) {
        GeneProgramsGeneProgramsObject[["pearson_correlation"]] <-
          self$`pearson_correlation`
      }
      return(GeneProgramsGeneProgramsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeneProgramsGenePrograms
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeneProgramsGenePrograms
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
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
      if (!is.null(this_object$`biosample_term`)) {
        self$`biosample_term` <- this_object$`biosample_term`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`treatments_term_ids`)) {
        self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`gene_program_1`)) {
        `gene_program_1_object` <- GeneProgramsFromGenesGeneProgram$new()
        `gene_program_1_object`$fromJSON(jsonlite::toJSON(this_object$`gene_program_1`, auto_unbox = TRUE, digits = NA))
        self$`gene_program_1` <- `gene_program_1_object`
      }
      if (!is.null(this_object$`gene_program_2`)) {
        `gene_program_2_object` <- GeneProgramsFromGenesGeneProgram$new()
        `gene_program_2_object`$fromJSON(jsonlite::toJSON(this_object$`gene_program_2`, auto_unbox = TRUE, digits = NA))
        self$`gene_program_2` <- `gene_program_2_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`inverse_name`)) {
        self$`inverse_name` <- this_object$`inverse_name`
      }
      if (!is.null(this_object$`pearson_correlation`)) {
        self$`pearson_correlation` <- this_object$`pearson_correlation`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeneProgramsGenePrograms in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeneProgramsGenePrograms
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeneProgramsGenePrograms
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`biological_context` <- this_object$`biological_context`
      self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`perturbation` <- this_object$`perturbation`
      self$`_id` <- this_object$`_id`
      self$`gene_program_1` <- GeneProgramsFromGenesGeneProgram$new()$fromJSON(jsonlite::toJSON(this_object$`gene_program_1`, auto_unbox = TRUE, digits = NA))
      self$`gene_program_2` <- GeneProgramsFromGenesGeneProgram$new()$fromJSON(jsonlite::toJSON(this_object$`gene_program_2`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`inverse_name` <- this_object$`inverse_name`
      self$`pearson_correlation` <- this_object$`pearson_correlation`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeneProgramsGenePrograms and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `source` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `files_filesets` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `class` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `method` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `label` is missing."))
      }
      # check the required field `_id`
      if (!is.null(input_json$`_id`)) {
        if (!(is.character(input_json$`_id`) && length(input_json$`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", input_json$`_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `_id` is missing."))
      }
      # check the required field `gene_program_1`
      if (!is.null(input_json$`gene_program_1`)) {
        stopifnot(R6::is.R6(input_json$`gene_program_1`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `gene_program_1` is missing."))
      }
      # check the required field `gene_program_2`
      if (!is.null(input_json$`gene_program_2`)) {
        stopifnot(R6::is.R6(input_json$`gene_program_2`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `gene_program_2` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `name` is missing."))
      }
      # check the required field `inverse_name`
      if (!is.null(input_json$`inverse_name`)) {
        if (!(is.character(input_json$`inverse_name`) && length(input_json$`inverse_name`) == 1)) {
          stop(paste("Error! Invalid data for `inverse_name`. Must be a string:", input_json$`inverse_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `inverse_name` is missing."))
      }
      # check the required field `pearson_correlation`
      if (!is.null(input_json$`pearson_correlation`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneProgramsGenePrograms: the required field `pearson_correlation` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeneProgramsGenePrograms
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

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
        return(FALSE)
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        return(FALSE)
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        return(FALSE)
      }

      # check if the required `gene_program_1` is null
      if (is.null(self$`gene_program_1`)) {
        return(FALSE)
      }

      # check if the required `gene_program_2` is null
      if (is.null(self$`gene_program_2`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `inverse_name` is null
      if (is.null(self$`inverse_name`)) {
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

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
        invalid_fields["files_filesets"] <- "Non-nullable required field `files_filesets` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

      # check if the required `gene_program_1` is null
      if (is.null(self$`gene_program_1`)) {
        invalid_fields["gene_program_1"] <- "Non-nullable required field `gene_program_1` cannot be null."
      }

      # check if the required `gene_program_2` is null
      if (is.null(self$`gene_program_2`)) {
        invalid_fields["gene_program_2"] <- "Non-nullable required field `gene_program_2` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `inverse_name` is null
      if (is.null(self$`inverse_name`)) {
        invalid_fields["inverse_name"] <- "Non-nullable required field `inverse_name` cannot be null."
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
# GeneProgramsGenePrograms$unlock()
#
## Below is an example to define the print function
# GeneProgramsGenePrograms$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeneProgramsGenePrograms$lock()

