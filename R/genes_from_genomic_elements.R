#' Create a new GenesFromGenomicElements
#'
#' @description
#' GenesFromGenomicElements Class
#'
#' @docType class
#' @title GenesFromGenomicElements
#' @description GenesFromGenomicElements Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field label  character
#' @field method  character
#' @field class  character
#' @field source  character
#' @field source_url  character
#' @field biological_context  character [optional]
#' @field biosample_term  character [optional]
#' @field cell_annotation  character [optional]
#' @field cell_annotation_term  character [optional]
#' @field treatments_term_ids  list(character) [optional]
#' @field files_filesets  character
#' @field perturbation  character [optional]
#' @field score  numeric [optional]
#' @field transcription_start_site  numeric [optional]
#' @field rna_pseudobulk_tpm  numeric [optional]
#' @field negative_selection_log2FC  numeric [optional]
#' @field negative_selection_p_value  numeric [optional]
#' @field negative_selection_p_value_adj  numeric [optional]
#' @field negative_selection_neg_log10_pvalue  numeric [optional]
#' @field negative_selection_neg_log10_pvalue_adj  numeric [optional]
#' @field negative_selection_significant  character [optional]
#' @field positive_selection_log2FC  numeric [optional]
#' @field positive_selection_p_value  numeric [optional]
#' @field positive_selection_p_value_adj  numeric [optional]
#' @field positive_selection_neg_log10_pvalue  numeric [optional]
#' @field positive_selection_neg_log10_pvalue_adj  numeric [optional]
#' @field positive_selection_significant  character [optional]
#' @field log2FC  numeric [optional]
#' @field log2FC_ci95_lower  numeric [optional]
#' @field log2FC_ci95_upper  numeric [optional]
#' @field effect_size  numeric [optional]
#' @field effect_size_ci_95  numeric [optional]
#' @field z_score  numeric [optional]
#' @field t_score  numeric [optional]
#' @field idr  numeric [optional]
#' @field pct_1  numeric [optional]
#' @field pct_2  numeric [optional]
#' @field num_guides  numeric [optional]
#' @field num_cells  numeric [optional]
#' @field fold_change  numeric [optional]
#' @field background_corrected_fold_change  numeric [optional]
#' @field cpm_perturb  numeric [optional]
#' @field cpm_bg  numeric [optional]
#' @field gamma_approximation_ln_p_value  numeric [optional]
#' @field hypergeometric_ln_p_value  numeric [optional]
#' @field empirical_p_value  numeric [optional]
#' @field p_value  \link{GenesFromGenomicElementsPValue} [optional]
#' @field p_value_adj  \link{GenesFromGenomicElementsPValue} [optional]
#' @field neg_log10_pvalue  \link{GenesFromGenomicElementsPValue} [optional]
#' @field neg_log10_pvalue_adj  \link{GenesFromGenomicElementsPValue} [optional]
#' @field significant  character [optional]
#' @field genomic_element  \link{GenesFromGenomicElementsGenomicElement}
#' @field gene  \link{GenesFromGenomicElementsGene}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesFromGenomicElements <- R6::R6Class(
  "GenesFromGenomicElements",
  public = list(
    `name` = NULL,
    `label` = NULL,
    `method` = NULL,
    `class` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `cell_annotation` = NULL,
    `cell_annotation_term` = NULL,
    `treatments_term_ids` = NULL,
    `files_filesets` = NULL,
    `perturbation` = NULL,
    `score` = NULL,
    `transcription_start_site` = NULL,
    `rna_pseudobulk_tpm` = NULL,
    `negative_selection_log2FC` = NULL,
    `negative_selection_p_value` = NULL,
    `negative_selection_p_value_adj` = NULL,
    `negative_selection_neg_log10_pvalue` = NULL,
    `negative_selection_neg_log10_pvalue_adj` = NULL,
    `negative_selection_significant` = NULL,
    `positive_selection_log2FC` = NULL,
    `positive_selection_p_value` = NULL,
    `positive_selection_p_value_adj` = NULL,
    `positive_selection_neg_log10_pvalue` = NULL,
    `positive_selection_neg_log10_pvalue_adj` = NULL,
    `positive_selection_significant` = NULL,
    `log2FC` = NULL,
    `log2FC_ci95_lower` = NULL,
    `log2FC_ci95_upper` = NULL,
    `effect_size` = NULL,
    `effect_size_ci_95` = NULL,
    `z_score` = NULL,
    `t_score` = NULL,
    `idr` = NULL,
    `pct_1` = NULL,
    `pct_2` = NULL,
    `num_guides` = NULL,
    `num_cells` = NULL,
    `fold_change` = NULL,
    `background_corrected_fold_change` = NULL,
    `cpm_perturb` = NULL,
    `cpm_bg` = NULL,
    `gamma_approximation_ln_p_value` = NULL,
    `hypergeometric_ln_p_value` = NULL,
    `empirical_p_value` = NULL,
    `p_value` = NULL,
    `p_value_adj` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `significant` = NULL,
    `genomic_element` = NULL,
    `gene` = NULL,

    #' @description
    #' Initialize a new GenesFromGenomicElements class.
    #'
    #' @param name name
    #' @param label label
    #' @param method method
    #' @param class class
    #' @param source source
    #' @param source_url source_url
    #' @param files_filesets files_filesets
    #' @param genomic_element genomic_element
    #' @param gene gene
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param cell_annotation cell_annotation
    #' @param cell_annotation_term cell_annotation_term
    #' @param treatments_term_ids treatments_term_ids
    #' @param perturbation perturbation
    #' @param score score
    #' @param transcription_start_site transcription_start_site
    #' @param rna_pseudobulk_tpm rna_pseudobulk_tpm
    #' @param negative_selection_log2FC negative_selection_log2FC
    #' @param negative_selection_p_value negative_selection_p_value
    #' @param negative_selection_p_value_adj negative_selection_p_value_adj
    #' @param negative_selection_neg_log10_pvalue negative_selection_neg_log10_pvalue
    #' @param negative_selection_neg_log10_pvalue_adj negative_selection_neg_log10_pvalue_adj
    #' @param negative_selection_significant negative_selection_significant
    #' @param positive_selection_log2FC positive_selection_log2FC
    #' @param positive_selection_p_value positive_selection_p_value
    #' @param positive_selection_p_value_adj positive_selection_p_value_adj
    #' @param positive_selection_neg_log10_pvalue positive_selection_neg_log10_pvalue
    #' @param positive_selection_neg_log10_pvalue_adj positive_selection_neg_log10_pvalue_adj
    #' @param positive_selection_significant positive_selection_significant
    #' @param log2FC log2FC
    #' @param log2FC_ci95_lower log2FC_ci95_lower
    #' @param log2FC_ci95_upper log2FC_ci95_upper
    #' @param effect_size effect_size
    #' @param effect_size_ci_95 effect_size_ci_95
    #' @param z_score z_score
    #' @param t_score t_score
    #' @param idr idr
    #' @param pct_1 pct_1
    #' @param pct_2 pct_2
    #' @param num_guides num_guides
    #' @param num_cells num_cells
    #' @param fold_change fold_change
    #' @param background_corrected_fold_change background_corrected_fold_change
    #' @param cpm_perturb cpm_perturb
    #' @param cpm_bg cpm_bg
    #' @param gamma_approximation_ln_p_value gamma_approximation_ln_p_value
    #' @param hypergeometric_ln_p_value hypergeometric_ln_p_value
    #' @param empirical_p_value empirical_p_value
    #' @param p_value p_value
    #' @param p_value_adj p_value_adj
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param significant significant
    #' @param ... Other optional arguments.
    initialize = function(`name`, `label`, `method`, `class`, `source`, `source_url`, `files_filesets`, `genomic_element`, `gene`, `biological_context` = NULL, `biosample_term` = NULL, `cell_annotation` = NULL, `cell_annotation_term` = NULL, `treatments_term_ids` = NULL, `perturbation` = NULL, `score` = NULL, `transcription_start_site` = NULL, `rna_pseudobulk_tpm` = NULL, `negative_selection_log2FC` = NULL, `negative_selection_p_value` = NULL, `negative_selection_p_value_adj` = NULL, `negative_selection_neg_log10_pvalue` = NULL, `negative_selection_neg_log10_pvalue_adj` = NULL, `negative_selection_significant` = NULL, `positive_selection_log2FC` = NULL, `positive_selection_p_value` = NULL, `positive_selection_p_value_adj` = NULL, `positive_selection_neg_log10_pvalue` = NULL, `positive_selection_neg_log10_pvalue_adj` = NULL, `positive_selection_significant` = NULL, `log2FC` = NULL, `log2FC_ci95_lower` = NULL, `log2FC_ci95_upper` = NULL, `effect_size` = NULL, `effect_size_ci_95` = NULL, `z_score` = NULL, `t_score` = NULL, `idr` = NULL, `pct_1` = NULL, `pct_2` = NULL, `num_guides` = NULL, `num_cells` = NULL, `fold_change` = NULL, `background_corrected_fold_change` = NULL, `cpm_perturb` = NULL, `cpm_bg` = NULL, `gamma_approximation_ln_p_value` = NULL, `hypergeometric_ln_p_value` = NULL, `empirical_p_value` = NULL, `p_value` = NULL, `p_value_adj` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `significant` = NULL, ...) {
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
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
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
      if (!missing(`genomic_element`)) {
        stopifnot(R6::is.R6(`genomic_element`))
        self$`genomic_element` <- `genomic_element`
      }
      if (!missing(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
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
      if (!is.null(`cell_annotation`)) {
        if (!(is.character(`cell_annotation`) && length(`cell_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation`. Must be a string:", `cell_annotation`))
        }
        self$`cell_annotation` <- `cell_annotation`
      }
      if (!is.null(`cell_annotation_term`)) {
        if (!(is.character(`cell_annotation_term`) && length(`cell_annotation_term`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation_term`. Must be a string:", `cell_annotation_term`))
        }
        self$`cell_annotation_term` <- `cell_annotation_term`
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
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`transcription_start_site`)) {
        self$`transcription_start_site` <- `transcription_start_site`
      }
      if (!is.null(`rna_pseudobulk_tpm`)) {
        self$`rna_pseudobulk_tpm` <- `rna_pseudobulk_tpm`
      }
      if (!is.null(`negative_selection_log2FC`)) {
        self$`negative_selection_log2FC` <- `negative_selection_log2FC`
      }
      if (!is.null(`negative_selection_p_value`)) {
        self$`negative_selection_p_value` <- `negative_selection_p_value`
      }
      if (!is.null(`negative_selection_p_value_adj`)) {
        self$`negative_selection_p_value_adj` <- `negative_selection_p_value_adj`
      }
      if (!is.null(`negative_selection_neg_log10_pvalue`)) {
        self$`negative_selection_neg_log10_pvalue` <- `negative_selection_neg_log10_pvalue`
      }
      if (!is.null(`negative_selection_neg_log10_pvalue_adj`)) {
        self$`negative_selection_neg_log10_pvalue_adj` <- `negative_selection_neg_log10_pvalue_adj`
      }
      if (!is.null(`negative_selection_significant`)) {
        if (!(is.logical(`negative_selection_significant`) && length(`negative_selection_significant`) == 1)) {
          stop(paste("Error! Invalid data for `negative_selection_significant`. Must be a boolean:", `negative_selection_significant`))
        }
        self$`negative_selection_significant` <- `negative_selection_significant`
      }
      if (!is.null(`positive_selection_log2FC`)) {
        self$`positive_selection_log2FC` <- `positive_selection_log2FC`
      }
      if (!is.null(`positive_selection_p_value`)) {
        self$`positive_selection_p_value` <- `positive_selection_p_value`
      }
      if (!is.null(`positive_selection_p_value_adj`)) {
        self$`positive_selection_p_value_adj` <- `positive_selection_p_value_adj`
      }
      if (!is.null(`positive_selection_neg_log10_pvalue`)) {
        self$`positive_selection_neg_log10_pvalue` <- `positive_selection_neg_log10_pvalue`
      }
      if (!is.null(`positive_selection_neg_log10_pvalue_adj`)) {
        self$`positive_selection_neg_log10_pvalue_adj` <- `positive_selection_neg_log10_pvalue_adj`
      }
      if (!is.null(`positive_selection_significant`)) {
        if (!(is.logical(`positive_selection_significant`) && length(`positive_selection_significant`) == 1)) {
          stop(paste("Error! Invalid data for `positive_selection_significant`. Must be a boolean:", `positive_selection_significant`))
        }
        self$`positive_selection_significant` <- `positive_selection_significant`
      }
      if (!is.null(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!is.null(`log2FC_ci95_lower`)) {
        self$`log2FC_ci95_lower` <- `log2FC_ci95_lower`
      }
      if (!is.null(`log2FC_ci95_upper`)) {
        self$`log2FC_ci95_upper` <- `log2FC_ci95_upper`
      }
      if (!is.null(`effect_size`)) {
        self$`effect_size` <- `effect_size`
      }
      if (!is.null(`effect_size_ci_95`)) {
        self$`effect_size_ci_95` <- `effect_size_ci_95`
      }
      if (!is.null(`z_score`)) {
        self$`z_score` <- `z_score`
      }
      if (!is.null(`t_score`)) {
        self$`t_score` <- `t_score`
      }
      if (!is.null(`idr`)) {
        self$`idr` <- `idr`
      }
      if (!is.null(`pct_1`)) {
        self$`pct_1` <- `pct_1`
      }
      if (!is.null(`pct_2`)) {
        self$`pct_2` <- `pct_2`
      }
      if (!is.null(`num_guides`)) {
        self$`num_guides` <- `num_guides`
      }
      if (!is.null(`num_cells`)) {
        self$`num_cells` <- `num_cells`
      }
      if (!is.null(`fold_change`)) {
        self$`fold_change` <- `fold_change`
      }
      if (!is.null(`background_corrected_fold_change`)) {
        self$`background_corrected_fold_change` <- `background_corrected_fold_change`
      }
      if (!is.null(`cpm_perturb`)) {
        self$`cpm_perturb` <- `cpm_perturb`
      }
      if (!is.null(`cpm_bg`)) {
        self$`cpm_bg` <- `cpm_bg`
      }
      if (!is.null(`gamma_approximation_ln_p_value`)) {
        self$`gamma_approximation_ln_p_value` <- `gamma_approximation_ln_p_value`
      }
      if (!is.null(`hypergeometric_ln_p_value`)) {
        self$`hypergeometric_ln_p_value` <- `hypergeometric_ln_p_value`
      }
      if (!is.null(`empirical_p_value`)) {
        self$`empirical_p_value` <- `empirical_p_value`
      }
      if (!is.null(`p_value`)) {
        stopifnot(R6::is.R6(`p_value`))
        self$`p_value` <- `p_value`
      }
      if (!is.null(`p_value_adj`)) {
        stopifnot(R6::is.R6(`p_value_adj`))
        self$`p_value_adj` <- `p_value_adj`
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
    #' @return GenesFromGenomicElements as a base R list.
    #' @examples
    #' # convert array of GenesFromGenomicElements (x) to a data frame
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
    #' Convert GenesFromGenomicElements to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesFromGenomicElementsObject <- list()
      if (!is.null(self$`name`)) {
        GenesFromGenomicElementsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        GenesFromGenomicElementsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`method`)) {
        GenesFromGenomicElementsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        GenesFromGenomicElementsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`source`)) {
        GenesFromGenomicElementsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenesFromGenomicElementsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`biological_context`)) {
        GenesFromGenomicElementsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        GenesFromGenomicElementsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`cell_annotation`)) {
        GenesFromGenomicElementsObject[["cell_annotation"]] <-
          self$`cell_annotation`
      }
      if (!is.null(self$`cell_annotation_term`)) {
        GenesFromGenomicElementsObject[["cell_annotation_term"]] <-
          self$`cell_annotation_term`
      }
      if (!is.null(self$`treatments_term_ids`)) {
        GenesFromGenomicElementsObject[["treatments_term_ids"]] <-
          self$`treatments_term_ids`
      }
      if (!is.null(self$`files_filesets`)) {
        GenesFromGenomicElementsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`perturbation`)) {
        GenesFromGenomicElementsObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`score`)) {
        GenesFromGenomicElementsObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`transcription_start_site`)) {
        GenesFromGenomicElementsObject[["transcription_start_site"]] <-
          self$`transcription_start_site`
      }
      if (!is.null(self$`rna_pseudobulk_tpm`)) {
        GenesFromGenomicElementsObject[["rna_pseudobulk_tpm"]] <-
          self$`rna_pseudobulk_tpm`
      }
      if (!is.null(self$`negative_selection_log2FC`)) {
        GenesFromGenomicElementsObject[["negative_selection_log2FC"]] <-
          self$`negative_selection_log2FC`
      }
      if (!is.null(self$`negative_selection_p_value`)) {
        GenesFromGenomicElementsObject[["negative_selection_p_value"]] <-
          self$`negative_selection_p_value`
      }
      if (!is.null(self$`negative_selection_p_value_adj`)) {
        GenesFromGenomicElementsObject[["negative_selection_p_value_adj"]] <-
          self$`negative_selection_p_value_adj`
      }
      if (!is.null(self$`negative_selection_neg_log10_pvalue`)) {
        GenesFromGenomicElementsObject[["negative_selection_neg_log10_pvalue"]] <-
          self$`negative_selection_neg_log10_pvalue`
      }
      if (!is.null(self$`negative_selection_neg_log10_pvalue_adj`)) {
        GenesFromGenomicElementsObject[["negative_selection_neg_log10_pvalue_adj"]] <-
          self$`negative_selection_neg_log10_pvalue_adj`
      }
      if (!is.null(self$`negative_selection_significant`)) {
        GenesFromGenomicElementsObject[["negative_selection_significant"]] <-
          self$`negative_selection_significant`
      }
      if (!is.null(self$`positive_selection_log2FC`)) {
        GenesFromGenomicElementsObject[["positive_selection_log2FC"]] <-
          self$`positive_selection_log2FC`
      }
      if (!is.null(self$`positive_selection_p_value`)) {
        GenesFromGenomicElementsObject[["positive_selection_p_value"]] <-
          self$`positive_selection_p_value`
      }
      if (!is.null(self$`positive_selection_p_value_adj`)) {
        GenesFromGenomicElementsObject[["positive_selection_p_value_adj"]] <-
          self$`positive_selection_p_value_adj`
      }
      if (!is.null(self$`positive_selection_neg_log10_pvalue`)) {
        GenesFromGenomicElementsObject[["positive_selection_neg_log10_pvalue"]] <-
          self$`positive_selection_neg_log10_pvalue`
      }
      if (!is.null(self$`positive_selection_neg_log10_pvalue_adj`)) {
        GenesFromGenomicElementsObject[["positive_selection_neg_log10_pvalue_adj"]] <-
          self$`positive_selection_neg_log10_pvalue_adj`
      }
      if (!is.null(self$`positive_selection_significant`)) {
        GenesFromGenomicElementsObject[["positive_selection_significant"]] <-
          self$`positive_selection_significant`
      }
      if (!is.null(self$`log2FC`)) {
        GenesFromGenomicElementsObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`log2FC_ci95_lower`)) {
        GenesFromGenomicElementsObject[["log2FC_ci95_lower"]] <-
          self$`log2FC_ci95_lower`
      }
      if (!is.null(self$`log2FC_ci95_upper`)) {
        GenesFromGenomicElementsObject[["log2FC_ci95_upper"]] <-
          self$`log2FC_ci95_upper`
      }
      if (!is.null(self$`effect_size`)) {
        GenesFromGenomicElementsObject[["effect_size"]] <-
          self$`effect_size`
      }
      if (!is.null(self$`effect_size_ci_95`)) {
        GenesFromGenomicElementsObject[["effect_size_ci_95"]] <-
          self$`effect_size_ci_95`
      }
      if (!is.null(self$`z_score`)) {
        GenesFromGenomicElementsObject[["z_score"]] <-
          self$`z_score`
      }
      if (!is.null(self$`t_score`)) {
        GenesFromGenomicElementsObject[["t_score"]] <-
          self$`t_score`
      }
      if (!is.null(self$`idr`)) {
        GenesFromGenomicElementsObject[["idr"]] <-
          self$`idr`
      }
      if (!is.null(self$`pct_1`)) {
        GenesFromGenomicElementsObject[["pct_1"]] <-
          self$`pct_1`
      }
      if (!is.null(self$`pct_2`)) {
        GenesFromGenomicElementsObject[["pct_2"]] <-
          self$`pct_2`
      }
      if (!is.null(self$`num_guides`)) {
        GenesFromGenomicElementsObject[["num_guides"]] <-
          self$`num_guides`
      }
      if (!is.null(self$`num_cells`)) {
        GenesFromGenomicElementsObject[["num_cells"]] <-
          self$`num_cells`
      }
      if (!is.null(self$`fold_change`)) {
        GenesFromGenomicElementsObject[["fold_change"]] <-
          self$`fold_change`
      }
      if (!is.null(self$`background_corrected_fold_change`)) {
        GenesFromGenomicElementsObject[["background_corrected_fold_change"]] <-
          self$`background_corrected_fold_change`
      }
      if (!is.null(self$`cpm_perturb`)) {
        GenesFromGenomicElementsObject[["cpm_perturb"]] <-
          self$`cpm_perturb`
      }
      if (!is.null(self$`cpm_bg`)) {
        GenesFromGenomicElementsObject[["cpm_bg"]] <-
          self$`cpm_bg`
      }
      if (!is.null(self$`gamma_approximation_ln_p_value`)) {
        GenesFromGenomicElementsObject[["gamma_approximation_ln_p_value"]] <-
          self$`gamma_approximation_ln_p_value`
      }
      if (!is.null(self$`hypergeometric_ln_p_value`)) {
        GenesFromGenomicElementsObject[["hypergeometric_ln_p_value"]] <-
          self$`hypergeometric_ln_p_value`
      }
      if (!is.null(self$`empirical_p_value`)) {
        GenesFromGenomicElementsObject[["empirical_p_value"]] <-
          self$`empirical_p_value`
      }
      if (!is.null(self$`p_value`)) {
        GenesFromGenomicElementsObject[["p_value"]] <-
          self$`p_value`$toSimpleType()
      }
      if (!is.null(self$`p_value_adj`)) {
        GenesFromGenomicElementsObject[["p_value_adj"]] <-
          self$`p_value_adj`$toSimpleType()
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GenesFromGenomicElementsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`$toSimpleType()
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        GenesFromGenomicElementsObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`$toSimpleType()
      }
      if (!is.null(self$`significant`)) {
        GenesFromGenomicElementsObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`genomic_element`)) {
        GenesFromGenomicElementsObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      if (!is.null(self$`gene`)) {
        GenesFromGenomicElementsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      return(GenesFromGenomicElementsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromGenomicElements
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromGenomicElements
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`biosample_term`)) {
        self$`biosample_term` <- this_object$`biosample_term`
      }
      if (!is.null(this_object$`cell_annotation`)) {
        self$`cell_annotation` <- this_object$`cell_annotation`
      }
      if (!is.null(this_object$`cell_annotation_term`)) {
        self$`cell_annotation_term` <- this_object$`cell_annotation_term`
      }
      if (!is.null(this_object$`treatments_term_ids`)) {
        self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`transcription_start_site`)) {
        self$`transcription_start_site` <- this_object$`transcription_start_site`
      }
      if (!is.null(this_object$`rna_pseudobulk_tpm`)) {
        self$`rna_pseudobulk_tpm` <- this_object$`rna_pseudobulk_tpm`
      }
      if (!is.null(this_object$`negative_selection_log2FC`)) {
        self$`negative_selection_log2FC` <- this_object$`negative_selection_log2FC`
      }
      if (!is.null(this_object$`negative_selection_p_value`)) {
        self$`negative_selection_p_value` <- this_object$`negative_selection_p_value`
      }
      if (!is.null(this_object$`negative_selection_p_value_adj`)) {
        self$`negative_selection_p_value_adj` <- this_object$`negative_selection_p_value_adj`
      }
      if (!is.null(this_object$`negative_selection_neg_log10_pvalue`)) {
        self$`negative_selection_neg_log10_pvalue` <- this_object$`negative_selection_neg_log10_pvalue`
      }
      if (!is.null(this_object$`negative_selection_neg_log10_pvalue_adj`)) {
        self$`negative_selection_neg_log10_pvalue_adj` <- this_object$`negative_selection_neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`negative_selection_significant`)) {
        self$`negative_selection_significant` <- this_object$`negative_selection_significant`
      }
      if (!is.null(this_object$`positive_selection_log2FC`)) {
        self$`positive_selection_log2FC` <- this_object$`positive_selection_log2FC`
      }
      if (!is.null(this_object$`positive_selection_p_value`)) {
        self$`positive_selection_p_value` <- this_object$`positive_selection_p_value`
      }
      if (!is.null(this_object$`positive_selection_p_value_adj`)) {
        self$`positive_selection_p_value_adj` <- this_object$`positive_selection_p_value_adj`
      }
      if (!is.null(this_object$`positive_selection_neg_log10_pvalue`)) {
        self$`positive_selection_neg_log10_pvalue` <- this_object$`positive_selection_neg_log10_pvalue`
      }
      if (!is.null(this_object$`positive_selection_neg_log10_pvalue_adj`)) {
        self$`positive_selection_neg_log10_pvalue_adj` <- this_object$`positive_selection_neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`positive_selection_significant`)) {
        self$`positive_selection_significant` <- this_object$`positive_selection_significant`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`log2FC_ci95_lower`)) {
        self$`log2FC_ci95_lower` <- this_object$`log2FC_ci95_lower`
      }
      if (!is.null(this_object$`log2FC_ci95_upper`)) {
        self$`log2FC_ci95_upper` <- this_object$`log2FC_ci95_upper`
      }
      if (!is.null(this_object$`effect_size`)) {
        self$`effect_size` <- this_object$`effect_size`
      }
      if (!is.null(this_object$`effect_size_ci_95`)) {
        self$`effect_size_ci_95` <- this_object$`effect_size_ci_95`
      }
      if (!is.null(this_object$`z_score`)) {
        self$`z_score` <- this_object$`z_score`
      }
      if (!is.null(this_object$`t_score`)) {
        self$`t_score` <- this_object$`t_score`
      }
      if (!is.null(this_object$`idr`)) {
        self$`idr` <- this_object$`idr`
      }
      if (!is.null(this_object$`pct_1`)) {
        self$`pct_1` <- this_object$`pct_1`
      }
      if (!is.null(this_object$`pct_2`)) {
        self$`pct_2` <- this_object$`pct_2`
      }
      if (!is.null(this_object$`num_guides`)) {
        self$`num_guides` <- this_object$`num_guides`
      }
      if (!is.null(this_object$`num_cells`)) {
        self$`num_cells` <- this_object$`num_cells`
      }
      if (!is.null(this_object$`fold_change`)) {
        self$`fold_change` <- this_object$`fold_change`
      }
      if (!is.null(this_object$`background_corrected_fold_change`)) {
        self$`background_corrected_fold_change` <- this_object$`background_corrected_fold_change`
      }
      if (!is.null(this_object$`cpm_perturb`)) {
        self$`cpm_perturb` <- this_object$`cpm_perturb`
      }
      if (!is.null(this_object$`cpm_bg`)) {
        self$`cpm_bg` <- this_object$`cpm_bg`
      }
      if (!is.null(this_object$`gamma_approximation_ln_p_value`)) {
        self$`gamma_approximation_ln_p_value` <- this_object$`gamma_approximation_ln_p_value`
      }
      if (!is.null(this_object$`hypergeometric_ln_p_value`)) {
        self$`hypergeometric_ln_p_value` <- this_object$`hypergeometric_ln_p_value`
      }
      if (!is.null(this_object$`empirical_p_value`)) {
        self$`empirical_p_value` <- this_object$`empirical_p_value`
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
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- GenesFromGenomicElementsGenomicElement$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- GenesFromGenomicElementsGene$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesFromGenomicElements in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesFromGenomicElements
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesFromGenomicElements
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`biological_context` <- this_object$`biological_context`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`cell_annotation` <- this_object$`cell_annotation`
      self$`cell_annotation_term` <- this_object$`cell_annotation_term`
      self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`files_filesets` <- this_object$`files_filesets`
      self$`perturbation` <- this_object$`perturbation`
      self$`score` <- this_object$`score`
      self$`transcription_start_site` <- this_object$`transcription_start_site`
      self$`rna_pseudobulk_tpm` <- this_object$`rna_pseudobulk_tpm`
      self$`negative_selection_log2FC` <- this_object$`negative_selection_log2FC`
      self$`negative_selection_p_value` <- this_object$`negative_selection_p_value`
      self$`negative_selection_p_value_adj` <- this_object$`negative_selection_p_value_adj`
      self$`negative_selection_neg_log10_pvalue` <- this_object$`negative_selection_neg_log10_pvalue`
      self$`negative_selection_neg_log10_pvalue_adj` <- this_object$`negative_selection_neg_log10_pvalue_adj`
      self$`negative_selection_significant` <- this_object$`negative_selection_significant`
      self$`positive_selection_log2FC` <- this_object$`positive_selection_log2FC`
      self$`positive_selection_p_value` <- this_object$`positive_selection_p_value`
      self$`positive_selection_p_value_adj` <- this_object$`positive_selection_p_value_adj`
      self$`positive_selection_neg_log10_pvalue` <- this_object$`positive_selection_neg_log10_pvalue`
      self$`positive_selection_neg_log10_pvalue_adj` <- this_object$`positive_selection_neg_log10_pvalue_adj`
      self$`positive_selection_significant` <- this_object$`positive_selection_significant`
      self$`log2FC` <- this_object$`log2FC`
      self$`log2FC_ci95_lower` <- this_object$`log2FC_ci95_lower`
      self$`log2FC_ci95_upper` <- this_object$`log2FC_ci95_upper`
      self$`effect_size` <- this_object$`effect_size`
      self$`effect_size_ci_95` <- this_object$`effect_size_ci_95`
      self$`z_score` <- this_object$`z_score`
      self$`t_score` <- this_object$`t_score`
      self$`idr` <- this_object$`idr`
      self$`pct_1` <- this_object$`pct_1`
      self$`pct_2` <- this_object$`pct_2`
      self$`num_guides` <- this_object$`num_guides`
      self$`num_cells` <- this_object$`num_cells`
      self$`fold_change` <- this_object$`fold_change`
      self$`background_corrected_fold_change` <- this_object$`background_corrected_fold_change`
      self$`cpm_perturb` <- this_object$`cpm_perturb`
      self$`cpm_bg` <- this_object$`cpm_bg`
      self$`gamma_approximation_ln_p_value` <- this_object$`gamma_approximation_ln_p_value`
      self$`hypergeometric_ln_p_value` <- this_object$`hypergeometric_ln_p_value`
      self$`empirical_p_value` <- this_object$`empirical_p_value`
      self$`p_value` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`p_value`, auto_unbox = TRUE, digits = NA))
      self$`p_value_adj` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`p_value_adj`, auto_unbox = TRUE, digits = NA))
      self$`neg_log10_pvalue` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`neg_log10_pvalue`, auto_unbox = TRUE, digits = NA))
      self$`neg_log10_pvalue_adj` <- GenesFromGenomicElementsPValue$new()$fromJSON(jsonlite::toJSON(this_object$`neg_log10_pvalue_adj`, auto_unbox = TRUE, digits = NA))
      self$`significant` <- this_object$`significant`
      self$`genomic_element` <- GenesFromGenomicElementsGenomicElement$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`gene` <- GenesFromGenomicElementsGene$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesFromGenomicElements and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `name` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `label` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `method` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `class` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `source_url` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `files_filesets` is missing."))
      }
      # check the required field `genomic_element`
      if (!is.null(input_json$`genomic_element`)) {
        stopifnot(R6::is.R6(input_json$`genomic_element`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `genomic_element` is missing."))
      }
      # check the required field `gene`
      if (!is.null(input_json$`gene`)) {
        stopifnot(R6::is.R6(input_json$`gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesFromGenomicElements: the required field `gene` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesFromGenomicElements
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

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        return(FALSE)
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
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

      # check if the required `genomic_element` is null
      if (is.null(self$`genomic_element`)) {
        return(FALSE)
      }

      # check if the required `gene` is null
      if (is.null(self$`gene`)) {
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

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
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

      # check if the required `genomic_element` is null
      if (is.null(self$`genomic_element`)) {
        invalid_fields["genomic_element"] <- "Non-nullable required field `genomic_element` cannot be null."
      }

      # check if the required `gene` is null
      if (is.null(self$`gene`)) {
        invalid_fields["gene"] <- "Non-nullable required field `gene` cannot be null."
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
# GenesFromGenomicElements$unlock()
#
## Below is an example to define the print function
# GenesFromGenomicElements$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesFromGenomicElements$lock()

