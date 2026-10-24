#' Create a new Grn
#'
#' @description
#' Grn Class
#'
#' @docType class
#' @title Grn
#' @description Grn Class
#' @format An \code{R6Class} generator object
#' @field response_gene  character
#' @field genomic_element  \link{GenomicElement4} [optional]
#' @field regulator_gene  character [optional]
#' @field transcript  \link{GenesTranscriptsGenesTranscript} [optional]
#' @field perturbation  character [optional]
#' @field class  character
#' @field method  character
#' @field source  character
#' @field biological_context  character
#' @field files_filesets  character
#' @field log2FC  numeric [optional]
#' @field neg_log10_pvalue  \link{GenesFromGenomicElementsPValue} [optional]
#' @field neg_log10_pvalue_adj  \link{GenesFromGenomicElementsPValue} [optional]
#' @field significant  character [optional]
#' @field p_value  \link{GenesFromGenomicElementsPValue} [optional]
#' @field p_value_adj  \link{GenesFromGenomicElementsPValue} [optional]
#' @field perturbation_efficiency_log2FC  numeric [optional]
#' @field perturbation_efficiency_neg_log10_pvalue  \link{GenesFromGenomicElementsPValue} [optional]
#' @field perturbation_efficiency_neg_log10_pvalue_adj  \link{GenesFromGenomicElementsPValue} [optional]
#' @field perturbation_efficiency_significant  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Grn <- R6::R6Class(
  "Grn",
  public = list(
    `response_gene` = NULL,
    `genomic_element` = NULL,
    `regulator_gene` = NULL,
    `transcript` = NULL,
    `perturbation` = NULL,
    `class` = NULL,
    `method` = NULL,
    `source` = NULL,
    `biological_context` = NULL,
    `files_filesets` = NULL,
    `log2FC` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `significant` = NULL,
    `p_value` = NULL,
    `p_value_adj` = NULL,
    `perturbation_efficiency_log2FC` = NULL,
    `perturbation_efficiency_neg_log10_pvalue` = NULL,
    `perturbation_efficiency_neg_log10_pvalue_adj` = NULL,
    `perturbation_efficiency_significant` = NULL,

    #' @description
    #' Initialize a new Grn class.
    #'
    #' @param response_gene response_gene
    #' @param class class
    #' @param method method
    #' @param source source
    #' @param biological_context biological_context
    #' @param files_filesets files_filesets
    #' @param genomic_element genomic_element
    #' @param regulator_gene regulator_gene
    #' @param transcript transcript
    #' @param perturbation perturbation
    #' @param log2FC log2FC
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param significant significant
    #' @param p_value p_value
    #' @param p_value_adj p_value_adj
    #' @param perturbation_efficiency_log2FC perturbation_efficiency_log2FC
    #' @param perturbation_efficiency_neg_log10_pvalue perturbation_efficiency_neg_log10_pvalue
    #' @param perturbation_efficiency_neg_log10_pvalue_adj perturbation_efficiency_neg_log10_pvalue_adj
    #' @param perturbation_efficiency_significant perturbation_efficiency_significant
    #' @param ... Other optional arguments.
    initialize = function(`response_gene`, `class`, `method`, `source`, `biological_context`, `files_filesets`, `genomic_element` = NULL, `regulator_gene` = NULL, `transcript` = NULL, `perturbation` = NULL, `log2FC` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `significant` = NULL, `p_value` = NULL, `p_value_adj` = NULL, `perturbation_efficiency_log2FC` = NULL, `perturbation_efficiency_neg_log10_pvalue` = NULL, `perturbation_efficiency_neg_log10_pvalue_adj` = NULL, `perturbation_efficiency_significant` = NULL, ...) {
      if (!missing(`response_gene`)) {
        if (!(is.character(`response_gene`) && length(`response_gene`) == 1)) {
          stop(paste("Error! Invalid data for `response_gene`. Must be a string:", `response_gene`))
        }
        self$`response_gene` <- `response_gene`
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
      if (!missing(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!missing(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!is.null(`genomic_element`)) {
        stopifnot(R6::is.R6(`genomic_element`))
        self$`genomic_element` <- `genomic_element`
      }
      if (!is.null(`regulator_gene`)) {
        if (!(is.character(`regulator_gene`) && length(`regulator_gene`) == 1)) {
          stop(paste("Error! Invalid data for `regulator_gene`. Must be a string:", `regulator_gene`))
        }
        self$`regulator_gene` <- `regulator_gene`
      }
      if (!is.null(`transcript`)) {
        stopifnot(R6::is.R6(`transcript`))
        self$`transcript` <- `transcript`
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
      if (!is.null(`neg_log10_pvalue`)) {
        stopifnot(R6::is.R6(`neg_log10_pvalue`))
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`neg_log10_pvalue_adj`)) {
        stopifnot(R6::is.R6(`neg_log10_pvalue_adj`))
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
      }
      if (!is.null(`p_value`)) {
        stopifnot(R6::is.R6(`p_value`))
        self$`p_value` <- `p_value`
      }
      if (!is.null(`p_value_adj`)) {
        stopifnot(R6::is.R6(`p_value_adj`))
        self$`p_value_adj` <- `p_value_adj`
      }
      if (!is.null(`perturbation_efficiency_log2FC`)) {
        self$`perturbation_efficiency_log2FC` <- `perturbation_efficiency_log2FC`
      }
      if (!is.null(`perturbation_efficiency_neg_log10_pvalue`)) {
        stopifnot(R6::is.R6(`perturbation_efficiency_neg_log10_pvalue`))
        self$`perturbation_efficiency_neg_log10_pvalue` <- `perturbation_efficiency_neg_log10_pvalue`
      }
      if (!is.null(`perturbation_efficiency_neg_log10_pvalue_adj`)) {
        stopifnot(R6::is.R6(`perturbation_efficiency_neg_log10_pvalue_adj`))
        self$`perturbation_efficiency_neg_log10_pvalue_adj` <- `perturbation_efficiency_neg_log10_pvalue_adj`
      }
      if (!is.null(`perturbation_efficiency_significant`)) {
        if (!(is.logical(`perturbation_efficiency_significant`) && length(`perturbation_efficiency_significant`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation_efficiency_significant`. Must be a boolean:", `perturbation_efficiency_significant`))
        }
        self$`perturbation_efficiency_significant` <- `perturbation_efficiency_significant`
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
    #' @return Grn as a base R list.
    #' @examples
    #' # convert array of Grn (x) to a data frame
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
    #' Convert Grn to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GrnObject <- list()
      if (!is.null(self$`response_gene`)) {
        GrnObject[["response_gene"]] <-
          self$`response_gene`
      }
      if (!is.null(self$`genomic_element`)) {
        GrnObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      if (!is.null(self$`regulator_gene`)) {
        GrnObject[["regulator_gene"]] <-
          self$`regulator_gene`
      }
      if (!is.null(self$`transcript`)) {
        GrnObject[["transcript"]] <-
          self$`transcript`$toSimpleType()
      }
      if (!is.null(self$`perturbation`)) {
        GrnObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`class`)) {
        GrnObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        GrnObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`source`)) {
        GrnObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`biological_context`)) {
        GrnObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`files_filesets`)) {
        GrnObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`log2FC`)) {
        GrnObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GrnObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`$toSimpleType()
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        GrnObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`$toSimpleType()
      }
      if (!is.null(self$`significant`)) {
        GrnObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`p_value`)) {
        GrnObject[["p_value"]] <-
          self$`p_value`$toSimpleType()
      }
      if (!is.null(self$`p_value_adj`)) {
        GrnObject[["p_value_adj"]] <-
          self$`p_value_adj`$toSimpleType()
      }
      if (!is.null(self$`perturbation_efficiency_log2FC`)) {
        GrnObject[["perturbation_efficiency_log2FC"]] <-
          self$`perturbation_efficiency_log2FC`
      }
      if (!is.null(self$`perturbation_efficiency_neg_log10_pvalue`)) {
        GrnObject[["perturbation_efficiency_neg_log10_pvalue"]] <-
          self$`perturbation_efficiency_neg_log10_pvalue`$toSimpleType()
      }
      if (!is.null(self$`perturbation_efficiency_neg_log10_pvalue_adj`)) {
        GrnObject[["perturbation_efficiency_neg_log10_pvalue_adj"]] <-
          self$`perturbation_efficiency_neg_log10_pvalue_adj`$toSimpleType()
      }
      if (!is.null(self$`perturbation_efficiency_significant`)) {
        GrnObject[["perturbation_efficiency_significant"]] <-
          self$`perturbation_efficiency_significant`
      }
      return(GrnObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Grn
    #'
    #' @param input_json the JSON input
    #' @return the instance of Grn
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`response_gene`)) {
        self$`response_gene` <- this_object$`response_gene`
      }
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- GenomicElement4$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      if (!is.null(this_object$`regulator_gene`)) {
        self$`regulator_gene` <- this_object$`regulator_gene`
      }
      if (!is.null(this_object$`transcript`)) {
        `transcript_object` <- GenesTranscriptsGenesTranscript$new()
        `transcript_object`$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
        self$`transcript` <- `transcript_object`
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
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
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        `neg_log10_pvalue_object` <- GenesFromGenomicElementsPValue$new()
        `neg_log10_pvalue_object`$fromJSON(jsonlite::toJSON(this_object$`neg_log10_pvalue`, auto_unbox = TRUE, digits = NA))
        self$`neg_log10_pvalue` <- `neg_log10_pvalue_object`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        `neg_log10_pvalue_adj_object` <- GenesFromGenomicElementsPValue$new()
        `neg_log10_pvalue_adj_object`$fromJSON(jsonlite::toJSON(this_object$`neg_log10_pvalue_adj`, auto_unbox = TRUE, digits = NA))
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj_object`
      }
      if (!is.null(this_object$`significant`)) {
        self$`significant` <- this_object$`significant`
      }
      if (!is.null(this_object$`p_value`)) {
        `p_value_object` <- GenesFromGenomicElementsPValue$new()
        `p_value_object`$fromJSON(jsonlite::toJSON(this_object$`p_value`, auto_unbox = TRUE, digits = NA))
        self$`p_value` <- `p_value_object`
      }
      if (!is.null(this_object$`p_value_adj`)) {
        `p_value_adj_object` <- GenesFromGenomicElementsPValue$new()
        `p_value_adj_object`$fromJSON(jsonlite::toJSON(this_object$`p_value_adj`, auto_unbox = TRUE, digits = NA))
        self$`p_value_adj` <- `p_value_adj_object`
      }
      if (!is.null(this_object$`perturbation_efficiency_log2FC`)) {
        self$`perturbation_efficiency_log2FC` <- this_object$`perturbation_efficiency_log2FC`
      }
      if (!is.null(this_object$`perturbation_efficiency_neg_log10_pvalue`)) {
        `perturbation_efficiency_neg_log10_pvalue_object` <- GenesFromGenomicElementsPValue$new()
        `perturbation_efficiency_neg_log10_pvalue_object`$fromJSON(jsonlite::toJSON(this_object$`perturbation_efficiency_neg_log10_pvalue`, auto_unbox = TRUE, digits = NA))
        self$`perturbation_efficiency_neg_log10_pvalue` <- `perturbation_efficiency_neg_log10_pvalue_object`
      }
      if (!is.null(this_object$`perturbation_efficiency_neg_log10_pvalue_adj`)) {
        `perturbation_efficiency_neg_log10_pvalue_adj_object` <- GenesFromGenomicElementsPValue$new()
        `perturbation_efficiency_neg_log10_pvalue_adj_object`$fromJSON(jsonlite::toJSON(this_object$`perturbation_efficiency_neg_log10_pvalue_adj`, auto_unbox = TRUE, digits = NA))
        self$`perturbation_efficiency_neg_log10_pvalue_adj` <- `perturbation_efficiency_neg_log10_pvalue_adj_object`
      }
      if (!is.null(this_object$`perturbation_efficiency_significant`)) {
        self$`perturbation_efficiency_significant` <- this_object$`perturbation_efficiency_significant`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Grn in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Grn
    #'
    #' @param input_json the JSON input
    #' @return the instance of Grn
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`response_gene` <- this_object$`response_gene`
      self$`genomic_element` <- GenomicElement4$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`regulator_gene` <- this_object$`regulator_gene`
      self$`transcript` <- GenesTranscriptsGenesTranscript$new()$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
      self$`perturbation` <- this_object$`perturbation`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`source` <- this_object$`source`
      self$`biological_context` <- this_object$`biological_context`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`log2FC` <- this_object$`log2FC`
      self$`neg_log10_pvalue` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`neg_log10_pvalue`, auto_unbox = TRUE, digits = NA))
      self$`neg_log10_pvalue_adj` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`neg_log10_pvalue_adj`, auto_unbox = TRUE, digits = NA))
      self$`significant` <- this_object$`significant`
      self$`p_value` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`p_value`, auto_unbox = TRUE, digits = NA))
      self$`p_value_adj` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`p_value_adj`, auto_unbox = TRUE, digits = NA))
      self$`perturbation_efficiency_log2FC` <- this_object$`perturbation_efficiency_log2FC`
      self$`perturbation_efficiency_neg_log10_pvalue` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`perturbation_efficiency_neg_log10_pvalue`, auto_unbox = TRUE, digits = NA))
      self$`perturbation_efficiency_neg_log10_pvalue_adj` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`perturbation_efficiency_neg_log10_pvalue_adj`, auto_unbox = TRUE, digits = NA))
      self$`perturbation_efficiency_significant` <- this_object$`perturbation_efficiency_significant`
      self
    },

    #' @description
    #' Validate JSON input with respect to Grn and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `response_gene`
      if (!is.null(input_json$`response_gene`)) {
        if (!(is.character(input_json$`response_gene`) && length(input_json$`response_gene`) == 1)) {
          stop(paste("Error! Invalid data for `response_gene`. Must be a string:", input_json$`response_gene`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Grn: the required field `response_gene` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Grn: the required field `class` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Grn: the required field `method` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Grn: the required field `source` is missing."))
      }
      # check the required field `biological_context`
      if (!is.null(input_json$`biological_context`)) {
        if (!(is.character(input_json$`biological_context`) && length(input_json$`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", input_json$`biological_context`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Grn: the required field `biological_context` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Grn: the required field `files_filesets` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Grn
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `response_gene` is null
      if (is.null(self$`response_gene`)) {
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

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
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
      # check if the required `response_gene` is null
      if (is.null(self$`response_gene`)) {
        invalid_fields["response_gene"] <- "Non-nullable required field `response_gene` cannot be null."
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

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
        invalid_fields["biological_context"] <- "Non-nullable required field `biological_context` cannot be null."
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
# Grn$unlock()
#
## Below is an example to define the print function
# Grn$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Grn$lock()

