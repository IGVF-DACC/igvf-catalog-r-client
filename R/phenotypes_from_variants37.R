#' Create a new PhenotypesFromVariants37
#'
#' @description
#' PhenotypesFromVariants37 Class
#'
#' @docType class
#' @title PhenotypesFromVariants37
#' @description PhenotypesFromVariants37 Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field biological_context  character [optional]
#' @field source  character
#' @field source_url  character
#' @field score  numeric [optional]
#' @field effect_size  numeric [optional]
#' @field z_score  numeric [optional]
#' @field p_value  numeric [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field significant  character [optional]
#' @field num_guides  numeric [optional]
#' @field edit_rate_mean  numeric [optional]
#' @field effect_size_ci95_lower  numeric [optional]
#' @field effect_size_ci95_upper  numeric [optional]
#' @field p_value_adj  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field perturbation  character [optional]
#' @field protein_id  character [optional]
#' @field exon  character [optional]
#' @field target  character [optional]
#' @field consequence  character [optional]
#' @field standard_error  numeric [optional]
#' @field 95_ci_upper  numeric [optional]
#' @field 95_ci_lower  numeric [optional]
#' @field amino_acid_change  character [optional]
#' @field hgvs_p  character [optional]
#' @field functional_consequence  character [optional]
#' @field functional_consequence_zscore  numeric [optional]
#' @field variant_qc_flag  character [optional]
#' @field method  character
#' @field class  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character
#' @field biosample_term  character [optional]
#' @field phenotype_term  character
#' @field variant  \link{PhenotypesFromVariantsVariant}
#' @field phenotype_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhenotypesFromVariants37 <- R6::R6Class(
  "PhenotypesFromVariants37",
  public = list(
    `name` = NULL,
    `biological_context` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `score` = NULL,
    `effect_size` = NULL,
    `z_score` = NULL,
    `p_value` = NULL,
    `neg_log10_pvalue` = NULL,
    `significant` = NULL,
    `num_guides` = NULL,
    `edit_rate_mean` = NULL,
    `effect_size_ci95_lower` = NULL,
    `effect_size_ci95_upper` = NULL,
    `p_value_adj` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `perturbation` = NULL,
    `protein_id` = NULL,
    `exon` = NULL,
    `target` = NULL,
    `consequence` = NULL,
    `standard_error` = NULL,
    `95_ci_upper` = NULL,
    `95_ci_lower` = NULL,
    `amino_acid_change` = NULL,
    `hgvs_p` = NULL,
    `functional_consequence` = NULL,
    `functional_consequence_zscore` = NULL,
    `variant_qc_flag` = NULL,
    `method` = NULL,
    `class` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `biosample_term` = NULL,
    `phenotype_term` = NULL,
    `variant` = NULL,
    `phenotype_id` = NULL,

    #' @description
    #' Initialize a new PhenotypesFromVariants37 class.
    #'
    #' @param name name
    #' @param source source
    #' @param source_url source_url
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param phenotype_term phenotype_term
    #' @param variant variant
    #' @param phenotype_id phenotype_id
    #' @param biological_context biological_context
    #' @param score score
    #' @param effect_size effect_size
    #' @param z_score z_score
    #' @param p_value p_value
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param significant significant
    #' @param num_guides num_guides
    #' @param edit_rate_mean edit_rate_mean
    #' @param effect_size_ci95_lower effect_size_ci95_lower
    #' @param effect_size_ci95_upper effect_size_ci95_upper
    #' @param p_value_adj p_value_adj
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param perturbation perturbation
    #' @param protein_id protein_id
    #' @param exon exon
    #' @param target target
    #' @param consequence consequence
    #' @param standard_error standard_error
    #' @param 95_ci_upper 95_ci_upper
    #' @param 95_ci_lower 95_ci_lower
    #' @param amino_acid_change amino_acid_change
    #' @param hgvs_p hgvs_p
    #' @param functional_consequence functional_consequence
    #' @param functional_consequence_zscore functional_consequence_zscore
    #' @param variant_qc_flag variant_qc_flag
    #' @param class class
    #' @param label label
    #' @param biosample_term biosample_term
    #' @param ... Other optional arguments.
    initialize = function(`name`, `source`, `source_url`, `method`, `files_filesets`, `phenotype_term`, `variant`, `phenotype_id`, `biological_context` = NULL, `score` = NULL, `effect_size` = NULL, `z_score` = NULL, `p_value` = NULL, `neg_log10_pvalue` = NULL, `significant` = NULL, `num_guides` = NULL, `edit_rate_mean` = NULL, `effect_size_ci95_lower` = NULL, `effect_size_ci95_upper` = NULL, `p_value_adj` = NULL, `neg_log10_pvalue_adj` = NULL, `perturbation` = NULL, `protein_id` = NULL, `exon` = NULL, `target` = NULL, `consequence` = NULL, `standard_error` = NULL, `95_ci_upper` = NULL, `95_ci_lower` = NULL, `amino_acid_change` = NULL, `hgvs_p` = NULL, `functional_consequence` = NULL, `functional_consequence_zscore` = NULL, `variant_qc_flag` = NULL, `class` = NULL, `label` = NULL, `biosample_term` = NULL, ...) {
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
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!missing(`phenotype_term`)) {
        if (!(is.character(`phenotype_term`) && length(`phenotype_term`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_term`. Must be a string:", `phenotype_term`))
        }
        self$`phenotype_term` <- `phenotype_term`
      }
      if (!missing(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
      }
      if (!missing(`phenotype_id`)) {
        if (!(is.character(`phenotype_id`) && length(`phenotype_id`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_id`. Must be a string:", `phenotype_id`))
        }
        self$`phenotype_id` <- `phenotype_id`
      }
      if (!is.null(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`effect_size`)) {
        self$`effect_size` <- `effect_size`
      }
      if (!is.null(`z_score`)) {
        self$`z_score` <- `z_score`
      }
      if (!is.null(`p_value`)) {
        self$`p_value` <- `p_value`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
      }
      if (!is.null(`num_guides`)) {
        self$`num_guides` <- `num_guides`
      }
      if (!is.null(`edit_rate_mean`)) {
        self$`edit_rate_mean` <- `edit_rate_mean`
      }
      if (!is.null(`effect_size_ci95_lower`)) {
        self$`effect_size_ci95_lower` <- `effect_size_ci95_lower`
      }
      if (!is.null(`effect_size_ci95_upper`)) {
        self$`effect_size_ci95_upper` <- `effect_size_ci95_upper`
      }
      if (!is.null(`p_value_adj`)) {
        self$`p_value_adj` <- `p_value_adj`
      }
      if (!is.null(`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!is.null(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
      }
      if (!is.null(`protein_id`)) {
        if (!(is.character(`protein_id`) && length(`protein_id`) == 1)) {
          stop(paste("Error! Invalid data for `protein_id`. Must be a string:", `protein_id`))
        }
        self$`protein_id` <- `protein_id`
      }
      if (!is.null(`exon`)) {
        if (!(is.character(`exon`) && length(`exon`) == 1)) {
          stop(paste("Error! Invalid data for `exon`. Must be a string:", `exon`))
        }
        self$`exon` <- `exon`
      }
      if (!is.null(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!is.null(`consequence`)) {
        if (!(is.character(`consequence`) && length(`consequence`) == 1)) {
          stop(paste("Error! Invalid data for `consequence`. Must be a string:", `consequence`))
        }
        self$`consequence` <- `consequence`
      }
      if (!is.null(`standard_error`)) {
        self$`standard_error` <- `standard_error`
      }
      if (!is.null(`95_ci_upper`)) {
        self$`95_ci_upper` <- `95_ci_upper`
      }
      if (!is.null(`95_ci_lower`)) {
        self$`95_ci_lower` <- `95_ci_lower`
      }
      if (!is.null(`amino_acid_change`)) {
        if (!(is.character(`amino_acid_change`) && length(`amino_acid_change`) == 1)) {
          stop(paste("Error! Invalid data for `amino_acid_change`. Must be a string:", `amino_acid_change`))
        }
        self$`amino_acid_change` <- `amino_acid_change`
      }
      if (!is.null(`hgvs_p`)) {
        if (!(is.character(`hgvs_p`) && length(`hgvs_p`) == 1)) {
          stop(paste("Error! Invalid data for `hgvs_p`. Must be a string:", `hgvs_p`))
        }
        self$`hgvs_p` <- `hgvs_p`
      }
      if (!is.null(`functional_consequence`)) {
        if (!(is.character(`functional_consequence`) && length(`functional_consequence`) == 1)) {
          stop(paste("Error! Invalid data for `functional_consequence`. Must be a string:", `functional_consequence`))
        }
        self$`functional_consequence` <- `functional_consequence`
      }
      if (!is.null(`functional_consequence_zscore`)) {
        self$`functional_consequence_zscore` <- `functional_consequence_zscore`
      }
      if (!is.null(`variant_qc_flag`)) {
        if (!(is.character(`variant_qc_flag`) && length(`variant_qc_flag`) == 1)) {
          stop(paste("Error! Invalid data for `variant_qc_flag`. Must be a string:", `variant_qc_flag`))
        }
        self$`variant_qc_flag` <- `variant_qc_flag`
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
      if (!is.null(`biosample_term`)) {
        if (!(is.character(`biosample_term`) && length(`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", `biosample_term`))
        }
        self$`biosample_term` <- `biosample_term`
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
    #' @return PhenotypesFromVariants37 as a base R list.
    #' @examples
    #' # convert array of PhenotypesFromVariants37 (x) to a data frame
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
    #' Convert PhenotypesFromVariants37 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PhenotypesFromVariants37Object <- list()
      if (!is.null(self$`name`)) {
        PhenotypesFromVariants37Object[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`biological_context`)) {
        PhenotypesFromVariants37Object[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`source`)) {
        PhenotypesFromVariants37Object[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        PhenotypesFromVariants37Object[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`score`)) {
        PhenotypesFromVariants37Object[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`effect_size`)) {
        PhenotypesFromVariants37Object[["effect_size"]] <-
          self$`effect_size`
      }
      if (!is.null(self$`z_score`)) {
        PhenotypesFromVariants37Object[["z_score"]] <-
          self$`z_score`
      }
      if (!is.null(self$`p_value`)) {
        PhenotypesFromVariants37Object[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        PhenotypesFromVariants37Object[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`significant`)) {
        PhenotypesFromVariants37Object[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`num_guides`)) {
        PhenotypesFromVariants37Object[["num_guides"]] <-
          self$`num_guides`
      }
      if (!is.null(self$`edit_rate_mean`)) {
        PhenotypesFromVariants37Object[["edit_rate_mean"]] <-
          self$`edit_rate_mean`
      }
      if (!is.null(self$`effect_size_ci95_lower`)) {
        PhenotypesFromVariants37Object[["effect_size_ci95_lower"]] <-
          self$`effect_size_ci95_lower`
      }
      if (!is.null(self$`effect_size_ci95_upper`)) {
        PhenotypesFromVariants37Object[["effect_size_ci95_upper"]] <-
          self$`effect_size_ci95_upper`
      }
      if (!is.null(self$`p_value_adj`)) {
        PhenotypesFromVariants37Object[["p_value_adj"]] <-
          self$`p_value_adj`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        PhenotypesFromVariants37Object[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`perturbation`)) {
        PhenotypesFromVariants37Object[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`protein_id`)) {
        PhenotypesFromVariants37Object[["protein_id"]] <-
          self$`protein_id`
      }
      if (!is.null(self$`exon`)) {
        PhenotypesFromVariants37Object[["exon"]] <-
          self$`exon`
      }
      if (!is.null(self$`target`)) {
        PhenotypesFromVariants37Object[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`consequence`)) {
        PhenotypesFromVariants37Object[["consequence"]] <-
          self$`consequence`
      }
      if (!is.null(self$`standard_error`)) {
        PhenotypesFromVariants37Object[["standard_error"]] <-
          self$`standard_error`
      }
      if (!is.null(self$`95_ci_upper`)) {
        PhenotypesFromVariants37Object[["95_ci_upper"]] <-
          self$`95_ci_upper`
      }
      if (!is.null(self$`95_ci_lower`)) {
        PhenotypesFromVariants37Object[["95_ci_lower"]] <-
          self$`95_ci_lower`
      }
      if (!is.null(self$`amino_acid_change`)) {
        PhenotypesFromVariants37Object[["amino_acid_change"]] <-
          self$`amino_acid_change`
      }
      if (!is.null(self$`hgvs_p`)) {
        PhenotypesFromVariants37Object[["hgvs_p"]] <-
          self$`hgvs_p`
      }
      if (!is.null(self$`functional_consequence`)) {
        PhenotypesFromVariants37Object[["functional_consequence"]] <-
          self$`functional_consequence`
      }
      if (!is.null(self$`functional_consequence_zscore`)) {
        PhenotypesFromVariants37Object[["functional_consequence_zscore"]] <-
          self$`functional_consequence_zscore`
      }
      if (!is.null(self$`variant_qc_flag`)) {
        PhenotypesFromVariants37Object[["variant_qc_flag"]] <-
          self$`variant_qc_flag`
      }
      if (!is.null(self$`method`)) {
        PhenotypesFromVariants37Object[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        PhenotypesFromVariants37Object[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`label`)) {
        PhenotypesFromVariants37Object[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        PhenotypesFromVariants37Object[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`biosample_term`)) {
        PhenotypesFromVariants37Object[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`phenotype_term`)) {
        PhenotypesFromVariants37Object[["phenotype_term"]] <-
          self$`phenotype_term`
      }
      if (!is.null(self$`variant`)) {
        PhenotypesFromVariants37Object[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      if (!is.null(self$`phenotype_id`)) {
        PhenotypesFromVariants37Object[["phenotype_id"]] <-
          self$`phenotype_id`
      }
      return(PhenotypesFromVariants37Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhenotypesFromVariants37
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhenotypesFromVariants37
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`effect_size`)) {
        self$`effect_size` <- this_object$`effect_size`
      }
      if (!is.null(this_object$`z_score`)) {
        self$`z_score` <- this_object$`z_score`
      }
      if (!is.null(this_object$`p_value`)) {
        self$`p_value` <- this_object$`p_value`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`significant`)) {
        self$`significant` <- this_object$`significant`
      }
      if (!is.null(this_object$`num_guides`)) {
        self$`num_guides` <- this_object$`num_guides`
      }
      if (!is.null(this_object$`edit_rate_mean`)) {
        self$`edit_rate_mean` <- this_object$`edit_rate_mean`
      }
      if (!is.null(this_object$`effect_size_ci95_lower`)) {
        self$`effect_size_ci95_lower` <- this_object$`effect_size_ci95_lower`
      }
      if (!is.null(this_object$`effect_size_ci95_upper`)) {
        self$`effect_size_ci95_upper` <- this_object$`effect_size_ci95_upper`
      }
      if (!is.null(this_object$`p_value_adj`)) {
        self$`p_value_adj` <- this_object$`p_value_adj`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      if (!is.null(this_object$`protein_id`)) {
        self$`protein_id` <- this_object$`protein_id`
      }
      if (!is.null(this_object$`exon`)) {
        self$`exon` <- this_object$`exon`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`consequence`)) {
        self$`consequence` <- this_object$`consequence`
      }
      if (!is.null(this_object$`standard_error`)) {
        self$`standard_error` <- this_object$`standard_error`
      }
      if (!is.null(this_object$`95_ci_upper`)) {
        self$`95_ci_upper` <- this_object$`95_ci_upper`
      }
      if (!is.null(this_object$`95_ci_lower`)) {
        self$`95_ci_lower` <- this_object$`95_ci_lower`
      }
      if (!is.null(this_object$`amino_acid_change`)) {
        self$`amino_acid_change` <- this_object$`amino_acid_change`
      }
      if (!is.null(this_object$`hgvs_p`)) {
        self$`hgvs_p` <- this_object$`hgvs_p`
      }
      if (!is.null(this_object$`functional_consequence`)) {
        self$`functional_consequence` <- this_object$`functional_consequence`
      }
      if (!is.null(this_object$`functional_consequence_zscore`)) {
        self$`functional_consequence_zscore` <- this_object$`functional_consequence_zscore`
      }
      if (!is.null(this_object$`variant_qc_flag`)) {
        self$`variant_qc_flag` <- this_object$`variant_qc_flag`
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
      if (!is.null(this_object$`biosample_term`)) {
        self$`biosample_term` <- this_object$`biosample_term`
      }
      if (!is.null(this_object$`phenotype_term`)) {
        self$`phenotype_term` <- this_object$`phenotype_term`
      }
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- PhenotypesFromVariantsVariant$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
      }
      if (!is.null(this_object$`phenotype_id`)) {
        self$`phenotype_id` <- this_object$`phenotype_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PhenotypesFromVariants37 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PhenotypesFromVariants37
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhenotypesFromVariants37
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`biological_context` <- this_object$`biological_context`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`score` <- this_object$`score`
      self$`effect_size` <- this_object$`effect_size`
      self$`z_score` <- this_object$`z_score`
      self$`p_value` <- this_object$`p_value`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`significant` <- this_object$`significant`
      self$`num_guides` <- this_object$`num_guides`
      self$`edit_rate_mean` <- this_object$`edit_rate_mean`
      self$`effect_size_ci95_lower` <- this_object$`effect_size_ci95_lower`
      self$`effect_size_ci95_upper` <- this_object$`effect_size_ci95_upper`
      self$`p_value_adj` <- this_object$`p_value_adj`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`perturbation` <- this_object$`perturbation`
      self$`protein_id` <- this_object$`protein_id`
      self$`exon` <- this_object$`exon`
      self$`target` <- this_object$`target`
      self$`consequence` <- this_object$`consequence`
      self$`standard_error` <- this_object$`standard_error`
      self$`95_ci_upper` <- this_object$`95_ci_upper`
      self$`95_ci_lower` <- this_object$`95_ci_lower`
      self$`amino_acid_change` <- this_object$`amino_acid_change`
      self$`hgvs_p` <- this_object$`hgvs_p`
      self$`functional_consequence` <- this_object$`functional_consequence`
      self$`functional_consequence_zscore` <- this_object$`functional_consequence_zscore`
      self$`variant_qc_flag` <- this_object$`variant_qc_flag`
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`phenotype_term` <- this_object$`phenotype_term`
      self$`variant` <- PhenotypesFromVariantsVariant$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self$`phenotype_id` <- this_object$`phenotype_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PhenotypesFromVariants37 and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `name` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `source_url` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `method` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `files_filesets` is missing."))
      }
      # check the required field `phenotype_term`
      if (!is.null(input_json$`phenotype_term`)) {
        if (!(is.character(input_json$`phenotype_term`) && length(input_json$`phenotype_term`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_term`. Must be a string:", input_json$`phenotype_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `phenotype_term` is missing."))
      }
      # check the required field `variant`
      if (!is.null(input_json$`variant`)) {
        stopifnot(R6::is.R6(input_json$`variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `variant` is missing."))
      }
      # check the required field `phenotype_id`
      if (!is.null(input_json$`phenotype_id`)) {
        if (!(is.character(input_json$`phenotype_id`) && length(input_json$`phenotype_id`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_id`. Must be a string:", input_json$`phenotype_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants37: the required field `phenotype_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PhenotypesFromVariants37
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

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        return(FALSE)
      }

      # check if the required `variant` is null
      if (is.null(self$`variant`)) {
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

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

      # check if the required `variant` is null
      if (is.null(self$`variant`)) {
        invalid_fields["variant"] <- "Non-nullable required field `variant` cannot be null."
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
# PhenotypesFromVariants37$unlock()
#
## Below is an example to define the print function
# PhenotypesFromVariants37$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PhenotypesFromVariants37$lock()

