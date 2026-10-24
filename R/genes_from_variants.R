#' Create a new GenesFromVariants
#'
#' @description
#' GenesFromVariants Class
#'
#' @docType class
#' @title GenesFromVariants
#' @description GenesFromVariants Class
#' @format An \code{R6Class} generator object
#' @field gene  \link{AccessibleGenomicElementPromoterOf}
#' @field sequence_variant  \link{GenesFromVariantsSequenceVariant}
#' @field intron_chr  character [optional]
#' @field intron_start  numeric [optional]
#' @field intron_end  numeric [optional]
#' @field effect_size  numeric [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field log2FC  numeric [optional]
#' @field posterior_inclusion_probability  numeric [optional]
#' @field coefficient_stddev  numeric [optional]
#' @field power  numeric [optional]
#' @field significant  character [optional]
#' @field standard_error  numeric [optional]
#' @field z_score  numeric [optional]
#' @field credible_set_min_r2  numeric [optional]
#' @field method  character [optional]
#' @field perturbation  character [optional]
#' @field source  character
#' @field source_url  character
#' @field label  character
#' @field p_value  numeric [optional]
#' @field chr  character [optional]
#' @field biological_context  character
#' @field biosample_term  character
#' @field study  \link{GenesFromVariantsStudy} [optional]
#' @field name  character [optional]
#' @field class  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesFromVariants <- R6::R6Class(
  "GenesFromVariants",
  public = list(
    `gene` = NULL,
    `sequence_variant` = NULL,
    `intron_chr` = NULL,
    `intron_start` = NULL,
    `intron_end` = NULL,
    `effect_size` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `log2FC` = NULL,
    `posterior_inclusion_probability` = NULL,
    `coefficient_stddev` = NULL,
    `power` = NULL,
    `significant` = NULL,
    `standard_error` = NULL,
    `z_score` = NULL,
    `credible_set_min_r2` = NULL,
    `method` = NULL,
    `perturbation` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `label` = NULL,
    `p_value` = NULL,
    `chr` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `study` = NULL,
    `name` = NULL,
    `class` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new GenesFromVariants class.
    #'
    #' @param gene gene
    #' @param sequence_variant sequence_variant
    #' @param source source
    #' @param source_url source_url
    #' @param label label
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param intron_chr intron_chr
    #' @param intron_start intron_start
    #' @param intron_end intron_end
    #' @param effect_size effect_size
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param log2FC log2FC
    #' @param posterior_inclusion_probability posterior_inclusion_probability
    #' @param coefficient_stddev coefficient_stddev
    #' @param power power
    #' @param significant significant
    #' @param standard_error standard_error
    #' @param z_score z_score
    #' @param credible_set_min_r2 credible_set_min_r2
    #' @param method method
    #' @param perturbation perturbation
    #' @param p_value p_value
    #' @param chr chr
    #' @param study study
    #' @param name name
    #' @param class class
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`gene`, `sequence_variant`, `source`, `source_url`, `label`, `biological_context`, `biosample_term`, `intron_chr` = NULL, `intron_start` = NULL, `intron_end` = NULL, `effect_size` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `log2FC` = NULL, `posterior_inclusion_probability` = NULL, `coefficient_stddev` = NULL, `power` = NULL, `significant` = NULL, `standard_error` = NULL, `z_score` = NULL, `credible_set_min_r2` = NULL, `method` = NULL, `perturbation` = NULL, `p_value` = NULL, `chr` = NULL, `study` = NULL, `name` = NULL, `class` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!missing(`sequence_variant`)) {
        stopifnot(R6::is.R6(`sequence_variant`))
        self$`sequence_variant` <- `sequence_variant`
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
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
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
      if (!is.null(`intron_chr`)) {
        if (!(is.character(`intron_chr`) && length(`intron_chr`) == 1)) {
          stop(paste("Error! Invalid data for `intron_chr`. Must be a string:", `intron_chr`))
        }
        self$`intron_chr` <- `intron_chr`
      }
      if (!is.null(`intron_start`)) {
        self$`intron_start` <- `intron_start`
      }
      if (!is.null(`intron_end`)) {
        self$`intron_end` <- `intron_end`
      }
      if (!is.null(`effect_size`)) {
        self$`effect_size` <- `effect_size`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!is.null(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!is.null(`posterior_inclusion_probability`)) {
        self$`posterior_inclusion_probability` <- `posterior_inclusion_probability`
      }
      if (!is.null(`coefficient_stddev`)) {
        self$`coefficient_stddev` <- `coefficient_stddev`
      }
      if (!is.null(`power`)) {
        self$`power` <- `power`
      }
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
      }
      if (!is.null(`standard_error`)) {
        self$`standard_error` <- `standard_error`
      }
      if (!is.null(`z_score`)) {
        self$`z_score` <- `z_score`
      }
      if (!is.null(`credible_set_min_r2`)) {
        self$`credible_set_min_r2` <- `credible_set_min_r2`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
      }
      if (!is.null(`p_value`)) {
        self$`p_value` <- `p_value`
      }
      if (!is.null(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!is.null(`study`)) {
        stopifnot(R6::is.R6(`study`))
        self$`study` <- `study`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
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
    #' @return GenesFromVariants as a base R list.
    #' @examples
    #' # convert array of GenesFromVariants (x) to a data frame
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
    #' Convert GenesFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesFromVariantsObject <- list()
      if (!is.null(self$`gene`)) {
        GenesFromVariantsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`sequence_variant`)) {
        GenesFromVariantsObject[["sequence_variant"]] <-
          self$`sequence_variant`$toSimpleType()
      }
      if (!is.null(self$`intron_chr`)) {
        GenesFromVariantsObject[["intron_chr"]] <-
          self$`intron_chr`
      }
      if (!is.null(self$`intron_start`)) {
        GenesFromVariantsObject[["intron_start"]] <-
          self$`intron_start`
      }
      if (!is.null(self$`intron_end`)) {
        GenesFromVariantsObject[["intron_end"]] <-
          self$`intron_end`
      }
      if (!is.null(self$`effect_size`)) {
        GenesFromVariantsObject[["effect_size"]] <-
          self$`effect_size`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GenesFromVariantsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        GenesFromVariantsObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`log2FC`)) {
        GenesFromVariantsObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`posterior_inclusion_probability`)) {
        GenesFromVariantsObject[["posterior_inclusion_probability"]] <-
          self$`posterior_inclusion_probability`
      }
      if (!is.null(self$`coefficient_stddev`)) {
        GenesFromVariantsObject[["coefficient_stddev"]] <-
          self$`coefficient_stddev`
      }
      if (!is.null(self$`power`)) {
        GenesFromVariantsObject[["power"]] <-
          self$`power`
      }
      if (!is.null(self$`significant`)) {
        GenesFromVariantsObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`standard_error`)) {
        GenesFromVariantsObject[["standard_error"]] <-
          self$`standard_error`
      }
      if (!is.null(self$`z_score`)) {
        GenesFromVariantsObject[["z_score"]] <-
          self$`z_score`
      }
      if (!is.null(self$`credible_set_min_r2`)) {
        GenesFromVariantsObject[["credible_set_min_r2"]] <-
          self$`credible_set_min_r2`
      }
      if (!is.null(self$`method`)) {
        GenesFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`perturbation`)) {
        GenesFromVariantsObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`source`)) {
        GenesFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenesFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`label`)) {
        GenesFromVariantsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`p_value`)) {
        GenesFromVariantsObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`chr`)) {
        GenesFromVariantsObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`biological_context`)) {
        GenesFromVariantsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        GenesFromVariantsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`study`)) {
        GenesFromVariantsObject[["study"]] <-
          self$`study`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        GenesFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`class`)) {
        GenesFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`files_filesets`)) {
        GenesFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(GenesFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- AccessibleGenomicElementPromoterOf$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`sequence_variant`)) {
        `sequence_variant_object` <- GenesFromVariantsSequenceVariant$new()
        `sequence_variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence_variant` <- `sequence_variant_object`
      }
      if (!is.null(this_object$`intron_chr`)) {
        self$`intron_chr` <- this_object$`intron_chr`
      }
      if (!is.null(this_object$`intron_start`)) {
        self$`intron_start` <- this_object$`intron_start`
      }
      if (!is.null(this_object$`intron_end`)) {
        self$`intron_end` <- this_object$`intron_end`
      }
      if (!is.null(this_object$`effect_size`)) {
        self$`effect_size` <- this_object$`effect_size`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`posterior_inclusion_probability`)) {
        self$`posterior_inclusion_probability` <- this_object$`posterior_inclusion_probability`
      }
      if (!is.null(this_object$`coefficient_stddev`)) {
        self$`coefficient_stddev` <- this_object$`coefficient_stddev`
      }
      if (!is.null(this_object$`power`)) {
        self$`power` <- this_object$`power`
      }
      if (!is.null(this_object$`significant`)) {
        self$`significant` <- this_object$`significant`
      }
      if (!is.null(this_object$`standard_error`)) {
        self$`standard_error` <- this_object$`standard_error`
      }
      if (!is.null(this_object$`z_score`)) {
        self$`z_score` <- this_object$`z_score`
      }
      if (!is.null(this_object$`credible_set_min_r2`)) {
        self$`credible_set_min_r2` <- this_object$`credible_set_min_r2`
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
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`p_value`)) {
        self$`p_value` <- this_object$`p_value`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`biosample_term`)) {
        self$`biosample_term` <- this_object$`biosample_term`
      }
      if (!is.null(this_object$`study`)) {
        `study_object` <- GenesFromVariantsStudy$new()
        `study_object`$fromJSON(jsonlite::toJSON(this_object$`study`, auto_unbox = TRUE, digits = NA))
        self$`study` <- `study_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
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
    #' @return GenesFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene` <- AccessibleGenomicElementPromoterOf$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`sequence_variant` <- GenesFromVariantsSequenceVariant$new()$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
      self$`intron_chr` <- this_object$`intron_chr`
      self$`intron_start` <- this_object$`intron_start`
      self$`intron_end` <- this_object$`intron_end`
      self$`effect_size` <- this_object$`effect_size`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`log2FC` <- this_object$`log2FC`
      self$`posterior_inclusion_probability` <- this_object$`posterior_inclusion_probability`
      self$`coefficient_stddev` <- this_object$`coefficient_stddev`
      self$`power` <- this_object$`power`
      self$`significant` <- this_object$`significant`
      self$`standard_error` <- this_object$`standard_error`
      self$`z_score` <- this_object$`z_score`
      self$`credible_set_min_r2` <- this_object$`credible_set_min_r2`
      self$`method` <- this_object$`method`
      self$`perturbation` <- this_object$`perturbation`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`label` <- this_object$`label`
      self$`p_value` <- this_object$`p_value`
      self$`chr` <- this_object$`chr`
      self$`biological_context` <- this_object$`biological_context`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`study` <- GenesFromVariantsStudy$new()$fromJSON(jsonlite::toJSON(this_object$`study`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`class` <- this_object$`class`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gene`
      if (!is.null(input_json$`gene`)) {
        stopifnot(R6::is.R6(input_json$`gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `gene` is missing."))
      }
      # check the required field `sequence_variant`
      if (!is.null(input_json$`sequence_variant`)) {
        stopifnot(R6::is.R6(input_json$`sequence_variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `sequence_variant` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `source_url` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `label` is missing."))
      }
      # check the required field `biological_context`
      if (!is.null(input_json$`biological_context`)) {
        if (!(is.character(input_json$`biological_context`) && length(input_json$`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", input_json$`biological_context`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `biological_context` is missing."))
      }
      # check the required field `biosample_term`
      if (!is.null(input_json$`biosample_term`)) {
        if (!(is.character(input_json$`biosample_term`) && length(input_json$`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", input_json$`biosample_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromVariants: the required field `biosample_term` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesFromVariants
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

      # check if the required `label` is null
      if (is.null(self$`label`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
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
# GenesFromVariants$unlock()
#
## Below is an example to define the print function
# GenesFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesFromVariants$lock()

