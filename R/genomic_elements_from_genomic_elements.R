#' Create a new GenomicElementsFromGenomicElements
#'
#' @description
#' GenomicElementsFromGenomicElements Class
#'
#' @docType class
#' @title GenomicElementsFromGenomicElements
#' @description GenomicElementsFromGenomicElements Class
#' @format An \code{R6Class} generator object
#' @field perturbed_genomic_element  \link{GenomicElementsFromGenomicElementsPerturbedGenomicElement}
#' @field accessible_genomic_element  \link{GenomicElementsFromGenomicElementsPerturbedGenomicElement}
#' @field name  character
#' @field inverse_name  character
#' @field label  character
#' @field class  character
#' @field method  character
#' @field source  character
#' @field source_url  character
#' @field files_filesets  character
#' @field biological_context  character [optional]
#' @field biosample_term  character [optional]
#' @field treatments_term_ids  list(character) [optional]
#' @field perturbation  character [optional]
#' @field log2FC  numeric [optional]
#' @field p_value  numeric [optional]
#' @field p_value_adj  numeric [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field significant  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElementsFromGenomicElements <- R6::R6Class(
  "GenomicElementsFromGenomicElements",
  public = list(
    `perturbed_genomic_element` = NULL,
    `accessible_genomic_element` = NULL,
    `name` = NULL,
    `inverse_name` = NULL,
    `label` = NULL,
    `class` = NULL,
    `method` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `files_filesets` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `treatments_term_ids` = NULL,
    `perturbation` = NULL,
    `log2FC` = NULL,
    `p_value` = NULL,
    `p_value_adj` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `significant` = NULL,

    #' @description
    #' Initialize a new GenomicElementsFromGenomicElements class.
    #'
    #' @param perturbed_genomic_element perturbed_genomic_element
    #' @param accessible_genomic_element accessible_genomic_element
    #' @param name name
    #' @param inverse_name inverse_name
    #' @param label label
    #' @param class class
    #' @param method method
    #' @param source source
    #' @param source_url source_url
    #' @param files_filesets files_filesets
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param treatments_term_ids treatments_term_ids
    #' @param perturbation perturbation
    #' @param log2FC log2FC
    #' @param p_value p_value
    #' @param p_value_adj p_value_adj
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param significant significant
    #' @param ... Other optional arguments.
    initialize = function(`perturbed_genomic_element`, `accessible_genomic_element`, `name`, `inverse_name`, `label`, `class`, `method`, `source`, `source_url`, `files_filesets`, `biological_context` = NULL, `biosample_term` = NULL, `treatments_term_ids` = NULL, `perturbation` = NULL, `log2FC` = NULL, `p_value` = NULL, `p_value_adj` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `significant` = NULL, ...) {
      if (!missing(`perturbed_genomic_element`)) {
        stopifnot(R6::is.R6(`perturbed_genomic_element`))
        self$`perturbed_genomic_element` <- `perturbed_genomic_element`
      }
      if (!missing(`accessible_genomic_element`)) {
        stopifnot(R6::is.R6(`accessible_genomic_element`))
        self$`accessible_genomic_element` <- `accessible_genomic_element`
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
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
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
      if (!missing(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!is.null(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!is.null(`biosample_term`)) {
        if (!(is.character(`biosample_term`) && length(`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", `biosample_term`))
        }
        self$`biosample_term` <- `biosample_term`
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
      if (!is.null(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!is.null(`p_value`)) {
        self$`p_value` <- `p_value`
      }
      if (!is.null(`p_value_adj`)) {
        self$`p_value_adj` <- `p_value_adj`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
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
    #' @return GenomicElementsFromGenomicElements as a base R list.
    #' @examples
    #' # convert array of GenomicElementsFromGenomicElements (x) to a data frame
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
    #' Convert GenomicElementsFromGenomicElements to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElementsFromGenomicElementsObject <- list()
      if (!is.null(self$`perturbed_genomic_element`)) {
        GenomicElementsFromGenomicElementsObject[["perturbed_genomic_element"]] <-
          self$`perturbed_genomic_element`$toSimpleType()
      }
      if (!is.null(self$`accessible_genomic_element`)) {
        GenomicElementsFromGenomicElementsObject[["accessible_genomic_element"]] <-
          self$`accessible_genomic_element`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        GenomicElementsFromGenomicElementsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`inverse_name`)) {
        GenomicElementsFromGenomicElementsObject[["inverse_name"]] <-
          self$`inverse_name`
      }
      if (!is.null(self$`label`)) {
        GenomicElementsFromGenomicElementsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`class`)) {
        GenomicElementsFromGenomicElementsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        GenomicElementsFromGenomicElementsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`source`)) {
        GenomicElementsFromGenomicElementsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenomicElementsFromGenomicElementsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`files_filesets`)) {
        GenomicElementsFromGenomicElementsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`biological_context`)) {
        GenomicElementsFromGenomicElementsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        GenomicElementsFromGenomicElementsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`treatments_term_ids`)) {
        GenomicElementsFromGenomicElementsObject[["treatments_term_ids"]] <-
          self$`treatments_term_ids`
      }
      if (!is.null(self$`perturbation`)) {
        GenomicElementsFromGenomicElementsObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`log2FC`)) {
        GenomicElementsFromGenomicElementsObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`p_value`)) {
        GenomicElementsFromGenomicElementsObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`p_value_adj`)) {
        GenomicElementsFromGenomicElementsObject[["p_value_adj"]] <-
          self$`p_value_adj`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GenomicElementsFromGenomicElementsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        GenomicElementsFromGenomicElementsObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`significant`)) {
        GenomicElementsFromGenomicElementsObject[["significant"]] <-
          self$`significant`
      }
      return(GenomicElementsFromGenomicElementsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsFromGenomicElements
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsFromGenomicElements
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`perturbed_genomic_element`)) {
        `perturbed_genomic_element_object` <- GenomicElementsFromGenomicElementsPerturbedGenomicElement$new()
        `perturbed_genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`perturbed_genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`perturbed_genomic_element` <- `perturbed_genomic_element_object`
      }
      if (!is.null(this_object$`accessible_genomic_element`)) {
        `accessible_genomic_element_object` <- GenomicElementsFromGenomicElementsPerturbedGenomicElement$new()
        `accessible_genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`accessible_genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`accessible_genomic_element` <- `accessible_genomic_element_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`inverse_name`)) {
        self$`inverse_name` <- this_object$`inverse_name`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`biosample_term`)) {
        self$`biosample_term` <- this_object$`biosample_term`
      }
      if (!is.null(this_object$`treatments_term_ids`)) {
        self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`p_value`)) {
        self$`p_value` <- this_object$`p_value`
      }
      if (!is.null(this_object$`p_value_adj`)) {
        self$`p_value_adj` <- this_object$`p_value_adj`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`significant`)) {
        self$`significant` <- this_object$`significant`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElementsFromGenomicElements in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsFromGenomicElements
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsFromGenomicElements
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`perturbed_genomic_element` <- GenomicElementsFromGenomicElementsPerturbedGenomicElement$new()$fromJSON(jsonlite::toJSON(this_object$`perturbed_genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`accessible_genomic_element` <- GenomicElementsFromGenomicElementsPerturbedGenomicElement$new()$fromJSON(jsonlite::toJSON(this_object$`accessible_genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`inverse_name` <- this_object$`inverse_name`
      self$`label` <- this_object$`label`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`biological_context` <- this_object$`biological_context`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`perturbation` <- this_object$`perturbation`
      self$`log2FC` <- this_object$`log2FC`
      self$`p_value` <- this_object$`p_value`
      self$`p_value_adj` <- this_object$`p_value_adj`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`significant` <- this_object$`significant`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElementsFromGenomicElements and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `perturbed_genomic_element`
      if (!is.null(input_json$`perturbed_genomic_element`)) {
        stopifnot(R6::is.R6(input_json$`perturbed_genomic_element`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `perturbed_genomic_element` is missing."))
      }
      # check the required field `accessible_genomic_element`
      if (!is.null(input_json$`accessible_genomic_element`)) {
        stopifnot(R6::is.R6(input_json$`accessible_genomic_element`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `accessible_genomic_element` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `name` is missing."))
      }
      # check the required field `inverse_name`
      if (!is.null(input_json$`inverse_name`)) {
        if (!(is.character(input_json$`inverse_name`) && length(input_json$`inverse_name`) == 1)) {
          stop(paste("Error! Invalid data for `inverse_name`. Must be a string:", input_json$`inverse_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `inverse_name` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `label` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `class` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `method` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `source_url` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromGenomicElements: the required field `files_filesets` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElementsFromGenomicElements
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `perturbed_genomic_element` is null
      if (is.null(self$`perturbed_genomic_element`)) {
        return(FALSE)
      }

      # check if the required `accessible_genomic_element` is null
      if (is.null(self$`accessible_genomic_element`)) {
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

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        return(FALSE)
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
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

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
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
      # check if the required `perturbed_genomic_element` is null
      if (is.null(self$`perturbed_genomic_element`)) {
        invalid_fields["perturbed_genomic_element"] <- "Non-nullable required field `perturbed_genomic_element` cannot be null."
      }

      # check if the required `accessible_genomic_element` is null
      if (is.null(self$`accessible_genomic_element`)) {
        invalid_fields["accessible_genomic_element"] <- "Non-nullable required field `accessible_genomic_element` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `inverse_name` is null
      if (is.null(self$`inverse_name`)) {
        invalid_fields["inverse_name"] <- "Non-nullable required field `inverse_name` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
        invalid_fields["files_filesets"] <- "Non-nullable required field `files_filesets` cannot be null."
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
# GenomicElementsFromGenomicElements$unlock()
#
## Below is an example to define the print function
# GenomicElementsFromGenomicElements$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElementsFromGenomicElements$lock()

