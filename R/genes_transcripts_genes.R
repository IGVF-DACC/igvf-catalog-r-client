#' Create a new GenesTranscriptsGenes
#'
#' @description
#' GenesTranscriptsGenes Class
#'
#' @docType class
#' @title GenesTranscriptsGenes
#' @description GenesTranscriptsGenes Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field gene_transcript  character
#' @field gene  \link{AccessibleGenomicElementPromoterOf}
#' @field transcript  \link{GenesTranscriptsGenesTranscript}
#' @field readout_gene  \link{AccessibleGenomicElementPromoterOf}
#' @field morf_id  character
#' @field transcript_mapping_method  character
#' @field log2FC  numeric
#' @field standard_error  numeric [optional]
#' @field stat  numeric [optional]
#' @field base_mean  numeric [optional]
#' @field p_value  numeric [optional]
#' @field p_value_adj  numeric [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field significant  character
#' @field name  character
#' @field label  character
#' @field class  character
#' @field method  character
#' @field perturbation  character
#' @field source  character
#' @field source_url  character
#' @field files_filesets  character
#' @field biological_context  character
#' @field biosample_term  character
#' @field treatments_term_ids  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesTranscriptsGenes <- R6::R6Class(
  "GenesTranscriptsGenes",
  public = list(
    `_id` = NULL,
    `gene_transcript` = NULL,
    `gene` = NULL,
    `transcript` = NULL,
    `readout_gene` = NULL,
    `morf_id` = NULL,
    `transcript_mapping_method` = NULL,
    `log2FC` = NULL,
    `standard_error` = NULL,
    `stat` = NULL,
    `base_mean` = NULL,
    `p_value` = NULL,
    `p_value_adj` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `significant` = NULL,
    `name` = NULL,
    `label` = NULL,
    `class` = NULL,
    `method` = NULL,
    `perturbation` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `files_filesets` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `treatments_term_ids` = NULL,

    #' @description
    #' Initialize a new GenesTranscriptsGenes class.
    #'
    #' @param _id _id
    #' @param gene_transcript gene_transcript
    #' @param gene gene
    #' @param transcript transcript
    #' @param readout_gene readout_gene
    #' @param morf_id morf_id
    #' @param transcript_mapping_method transcript_mapping_method
    #' @param log2FC log2FC
    #' @param significant significant
    #' @param name name
    #' @param label label
    #' @param class class
    #' @param method method
    #' @param perturbation perturbation
    #' @param source source
    #' @param source_url source_url
    #' @param files_filesets files_filesets
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param standard_error standard_error
    #' @param stat stat
    #' @param base_mean base_mean
    #' @param p_value p_value
    #' @param p_value_adj p_value_adj
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param treatments_term_ids treatments_term_ids
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `gene_transcript`, `gene`, `transcript`, `readout_gene`, `morf_id`, `transcript_mapping_method`, `log2FC`, `significant`, `name`, `label`, `class`, `method`, `perturbation`, `source`, `source_url`, `files_filesets`, `biological_context`, `biosample_term`, `standard_error` = NULL, `stat` = NULL, `base_mean` = NULL, `p_value` = NULL, `p_value_adj` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `treatments_term_ids` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`gene_transcript`)) {
        if (!(is.character(`gene_transcript`) && length(`gene_transcript`) == 1)) {
          stop(paste("Error! Invalid data for `gene_transcript`. Must be a string:", `gene_transcript`))
        }
        self$`gene_transcript` <- `gene_transcript`
      }
      if (!missing(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!missing(`transcript`)) {
        stopifnot(R6::is.R6(`transcript`))
        self$`transcript` <- `transcript`
      }
      if (!missing(`readout_gene`)) {
        stopifnot(R6::is.R6(`readout_gene`))
        self$`readout_gene` <- `readout_gene`
      }
      if (!missing(`morf_id`)) {
        if (!(is.character(`morf_id`) && length(`morf_id`) == 1)) {
          stop(paste("Error! Invalid data for `morf_id`. Must be a string:", `morf_id`))
        }
        self$`morf_id` <- `morf_id`
      }
      if (!missing(`transcript_mapping_method`)) {
        if (!(is.character(`transcript_mapping_method`) && length(`transcript_mapping_method`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_mapping_method`. Must be a string:", `transcript_mapping_method`))
        }
        self$`transcript_mapping_method` <- `transcript_mapping_method`
      }
      if (!missing(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!missing(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!missing(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
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
      if (!missing(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!missing(`biosample_term`)) {
        if (!(is.character(`biosample_term`) && length(`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", `biosample_term`))
        }
        self$`biosample_term` <- `biosample_term`
      }
      if (!is.null(`standard_error`)) {
        self$`standard_error` <- `standard_error`
      }
      if (!is.null(`stat`)) {
        self$`stat` <- `stat`
      }
      if (!is.null(`base_mean`)) {
        self$`base_mean` <- `base_mean`
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
      if (!is.null(`treatments_term_ids`)) {
        stopifnot(is.vector(`treatments_term_ids`), length(`treatments_term_ids`) != 0)
        sapply(`treatments_term_ids`, function(x) stopifnot(is.character(x)))
        self$`treatments_term_ids` <- `treatments_term_ids`
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
    #' @return GenesTranscriptsGenes as a base R list.
    #' @examples
    #' # convert array of GenesTranscriptsGenes (x) to a data frame
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
    #' Convert GenesTranscriptsGenes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesTranscriptsGenesObject <- list()
      if (!is.null(self$`_id`)) {
        GenesTranscriptsGenesObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`gene_transcript`)) {
        GenesTranscriptsGenesObject[["gene_transcript"]] <-
          self$`gene_transcript`
      }
      if (!is.null(self$`gene`)) {
        GenesTranscriptsGenesObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`transcript`)) {
        GenesTranscriptsGenesObject[["transcript"]] <-
          self$`transcript`$toSimpleType()
      }
      if (!is.null(self$`readout_gene`)) {
        GenesTranscriptsGenesObject[["readout_gene"]] <-
          self$`readout_gene`$toSimpleType()
      }
      if (!is.null(self$`morf_id`)) {
        GenesTranscriptsGenesObject[["morf_id"]] <-
          self$`morf_id`
      }
      if (!is.null(self$`transcript_mapping_method`)) {
        GenesTranscriptsGenesObject[["transcript_mapping_method"]] <-
          self$`transcript_mapping_method`
      }
      if (!is.null(self$`log2FC`)) {
        GenesTranscriptsGenesObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`standard_error`)) {
        GenesTranscriptsGenesObject[["standard_error"]] <-
          self$`standard_error`
      }
      if (!is.null(self$`stat`)) {
        GenesTranscriptsGenesObject[["stat"]] <-
          self$`stat`
      }
      if (!is.null(self$`base_mean`)) {
        GenesTranscriptsGenesObject[["base_mean"]] <-
          self$`base_mean`
      }
      if (!is.null(self$`p_value`)) {
        GenesTranscriptsGenesObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`p_value_adj`)) {
        GenesTranscriptsGenesObject[["p_value_adj"]] <-
          self$`p_value_adj`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GenesTranscriptsGenesObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        GenesTranscriptsGenesObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`significant`)) {
        GenesTranscriptsGenesObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`name`)) {
        GenesTranscriptsGenesObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        GenesTranscriptsGenesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`class`)) {
        GenesTranscriptsGenesObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        GenesTranscriptsGenesObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`perturbation`)) {
        GenesTranscriptsGenesObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`source`)) {
        GenesTranscriptsGenesObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenesTranscriptsGenesObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`files_filesets`)) {
        GenesTranscriptsGenesObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`biological_context`)) {
        GenesTranscriptsGenesObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        GenesTranscriptsGenesObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`treatments_term_ids`)) {
        GenesTranscriptsGenesObject[["treatments_term_ids"]] <-
          self$`treatments_term_ids`
      }
      return(GenesTranscriptsGenesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesTranscriptsGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesTranscriptsGenes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`gene_transcript`)) {
        self$`gene_transcript` <- this_object$`gene_transcript`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- AccessibleGenomicElementPromoterOf$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`transcript`)) {
        `transcript_object` <- GenesTranscriptsGenesTranscript$new()
        `transcript_object`$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
        self$`transcript` <- `transcript_object`
      }
      if (!is.null(this_object$`readout_gene`)) {
        `readout_gene_object` <- AccessibleGenomicElementPromoterOf$new()
        `readout_gene_object`$fromJSON(jsonlite::toJSON(this_object$`readout_gene`, auto_unbox = TRUE, digits = NA))
        self$`readout_gene` <- `readout_gene_object`
      }
      if (!is.null(this_object$`morf_id`)) {
        self$`morf_id` <- this_object$`morf_id`
      }
      if (!is.null(this_object$`transcript_mapping_method`)) {
        self$`transcript_mapping_method` <- this_object$`transcript_mapping_method`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`standard_error`)) {
        self$`standard_error` <- this_object$`standard_error`
      }
      if (!is.null(this_object$`stat`)) {
        self$`stat` <- this_object$`stat`
      }
      if (!is.null(this_object$`base_mean`)) {
        self$`base_mean` <- this_object$`base_mean`
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesTranscriptsGenes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesTranscriptsGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesTranscriptsGenes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`gene_transcript` <- this_object$`gene_transcript`
      self$`gene` <- AccessibleGenomicElementPromoterOf$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`transcript` <- GenesTranscriptsGenesTranscript$new()$fromJSON(jsonlite::toJSON(this_object$`transcript`, auto_unbox = TRUE, digits = NA))
      self$`readout_gene` <- AccessibleGenomicElementPromoterOf$new()$fromJSON(jsonlite::toJSON(this_object$`readout_gene`, auto_unbox = TRUE, digits = NA))
      self$`morf_id` <- this_object$`morf_id`
      self$`transcript_mapping_method` <- this_object$`transcript_mapping_method`
      self$`log2FC` <- this_object$`log2FC`
      self$`standard_error` <- this_object$`standard_error`
      self$`stat` <- this_object$`stat`
      self$`base_mean` <- this_object$`base_mean`
      self$`p_value` <- this_object$`p_value`
      self$`p_value_adj` <- this_object$`p_value_adj`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`significant` <- this_object$`significant`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`perturbation` <- this_object$`perturbation`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`biological_context` <- this_object$`biological_context`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesTranscriptsGenes and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `_id` is missing."))
      }
      # check the required field `gene_transcript`
      if (!is.null(input_json$`gene_transcript`)) {
        if (!(is.character(input_json$`gene_transcript`) && length(input_json$`gene_transcript`) == 1)) {
          stop(paste("Error! Invalid data for `gene_transcript`. Must be a string:", input_json$`gene_transcript`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `gene_transcript` is missing."))
      }
      # check the required field `gene`
      if (!is.null(input_json$`gene`)) {
        stopifnot(R6::is.R6(input_json$`gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `gene` is missing."))
      }
      # check the required field `transcript`
      if (!is.null(input_json$`transcript`)) {
        stopifnot(R6::is.R6(input_json$`transcript`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `transcript` is missing."))
      }
      # check the required field `readout_gene`
      if (!is.null(input_json$`readout_gene`)) {
        stopifnot(R6::is.R6(input_json$`readout_gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `readout_gene` is missing."))
      }
      # check the required field `morf_id`
      if (!is.null(input_json$`morf_id`)) {
        if (!(is.character(input_json$`morf_id`) && length(input_json$`morf_id`) == 1)) {
          stop(paste("Error! Invalid data for `morf_id`. Must be a string:", input_json$`morf_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `morf_id` is missing."))
      }
      # check the required field `transcript_mapping_method`
      if (!is.null(input_json$`transcript_mapping_method`)) {
        if (!(is.character(input_json$`transcript_mapping_method`) && length(input_json$`transcript_mapping_method`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_mapping_method`. Must be a string:", input_json$`transcript_mapping_method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `transcript_mapping_method` is missing."))
      }
      # check the required field `log2FC`
      if (!is.null(input_json$`log2FC`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `log2FC` is missing."))
      }
      # check the required field `significant`
      if (!is.null(input_json$`significant`)) {
        if (!(is.logical(input_json$`significant`) && length(input_json$`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", input_json$`significant`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `significant` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `name` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `label` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `class` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `method` is missing."))
      }
      # check the required field `perturbation`
      if (!is.null(input_json$`perturbation`)) {
        if (!(is.character(input_json$`perturbation`) && length(input_json$`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", input_json$`perturbation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `perturbation` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `source_url` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `files_filesets` is missing."))
      }
      # check the required field `biological_context`
      if (!is.null(input_json$`biological_context`)) {
        if (!(is.character(input_json$`biological_context`) && length(input_json$`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", input_json$`biological_context`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `biological_context` is missing."))
      }
      # check the required field `biosample_term`
      if (!is.null(input_json$`biosample_term`)) {
        if (!(is.character(input_json$`biosample_term`) && length(input_json$`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", input_json$`biosample_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesTranscriptsGenes: the required field `biosample_term` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesTranscriptsGenes
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

      # check if the required `gene_transcript` is null
      if (is.null(self$`gene_transcript`)) {
        return(FALSE)
      }

      # check if the required `morf_id` is null
      if (is.null(self$`morf_id`)) {
        return(FALSE)
      }

      # check if the required `transcript_mapping_method` is null
      if (is.null(self$`transcript_mapping_method`)) {
        return(FALSE)
      }

      # check if the required `log2FC` is null
      if (is.null(self$`log2FC`)) {
        return(FALSE)
      }

      # check if the required `significant` is null
      if (is.null(self$`significant`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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

      # check if the required `perturbation` is null
      if (is.null(self$`perturbation`)) {
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

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
        return(FALSE)
      }

      # check if the required `biosample_term` is null
      if (is.null(self$`biosample_term`)) {
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

      # check if the required `gene_transcript` is null
      if (is.null(self$`gene_transcript`)) {
        invalid_fields["gene_transcript"] <- "Non-nullable required field `gene_transcript` cannot be null."
      }

      # check if the required `morf_id` is null
      if (is.null(self$`morf_id`)) {
        invalid_fields["morf_id"] <- "Non-nullable required field `morf_id` cannot be null."
      }

      # check if the required `transcript_mapping_method` is null
      if (is.null(self$`transcript_mapping_method`)) {
        invalid_fields["transcript_mapping_method"] <- "Non-nullable required field `transcript_mapping_method` cannot be null."
      }

      # check if the required `log2FC` is null
      if (is.null(self$`log2FC`)) {
        invalid_fields["log2FC"] <- "Non-nullable required field `log2FC` cannot be null."
      }

      # check if the required `significant` is null
      if (is.null(self$`significant`)) {
        invalid_fields["significant"] <- "Non-nullable required field `significant` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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

      # check if the required `perturbation` is null
      if (is.null(self$`perturbation`)) {
        invalid_fields["perturbation"] <- "Non-nullable required field `perturbation` cannot be null."
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

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
        invalid_fields["biological_context"] <- "Non-nullable required field `biological_context` cannot be null."
      }

      # check if the required `biosample_term` is null
      if (is.null(self$`biosample_term`)) {
        invalid_fields["biosample_term"] <- "Non-nullable required field `biosample_term` cannot be null."
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
# GenesTranscriptsGenes$unlock()
#
## Below is an example to define the print function
# GenesTranscriptsGenes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesTranscriptsGenes$lock()

