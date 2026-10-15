#' Create a new ProteinsFromVariants
#'
#' @description
#' ProteinsFromVariants Class
#'
#' @docType class
#' @title ProteinsFromVariants
#' @description ProteinsFromVariants Class
#' @format An \code{R6Class} generator object
#' @field sequence_variant  \link{PhenotypesFromVariantsVariant} [optional]
#' @field protein_complex  \link{ProteinsFromVariantsProteinComplex} [optional]
#' @field biosample_term  \link{ProteinsFromVariantsBiosampleTerm} [optional]
#' @field biological_context  character [optional]
#' @field regulatory_type  character [optional]
#' @field class  character [optional]
#' @field label  character [optional]
#' @field name  character
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field is_complex  character
#' @field score  numeric [optional]
#' @field neg_log10_pvalue_adj_ref  numeric [optional]
#' @field neg_log10_pvalue_adj_alt  numeric [optional]
#' @field motif  character [optional]
#' @field motif_log2FC  numeric [optional]
#' @field beta  numeric [optional]
#' @field se  numeric [optional]
#' @field gene  character [optional]
#' @field gene_consequence  character [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field p_value  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field variant_effect_score  numeric [optional]
#' @field SEMpl_annotation  character [optional]
#' @field SEMpl_baseline  numeric [optional]
#' @field alt_score  numeric [optional]
#' @field ref_score  numeric [optional]
#' @field relative_binding_affinity  numeric [optional]
#' @field effect_on_binding  character [optional]
#' @field pbs  numeric [optional]
#' @field ref_auc  numeric [optional]
#' @field alt_auc  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinsFromVariants <- R6::R6Class(
  "ProteinsFromVariants",
  public = list(
    `sequence_variant` = NULL,
    `protein_complex` = NULL,
    `biosample_term` = NULL,
    `biological_context` = NULL,
    `regulatory_type` = NULL,
    `class` = NULL,
    `label` = NULL,
    `name` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `is_complex` = NULL,
    `score` = NULL,
    `neg_log10_pvalue_adj_ref` = NULL,
    `neg_log10_pvalue_adj_alt` = NULL,
    `motif` = NULL,
    `motif_log2FC` = NULL,
    `beta` = NULL,
    `se` = NULL,
    `gene` = NULL,
    `gene_consequence` = NULL,
    `neg_log10_pvalue` = NULL,
    `p_value` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `variant_effect_score` = NULL,
    `SEMpl_annotation` = NULL,
    `SEMpl_baseline` = NULL,
    `alt_score` = NULL,
    `ref_score` = NULL,
    `relative_binding_affinity` = NULL,
    `effect_on_binding` = NULL,
    `pbs` = NULL,
    `ref_auc` = NULL,
    `alt_auc` = NULL,

    #' @description
    #' Initialize a new ProteinsFromVariants class.
    #'
    #' @param name name
    #' @param is_complex is_complex
    #' @param sequence_variant sequence_variant
    #' @param protein_complex protein_complex
    #' @param biosample_term biosample_term
    #' @param biological_context biological_context
    #' @param regulatory_type regulatory_type
    #' @param class class
    #' @param label label
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param source source
    #' @param source_url source_url
    #' @param score score
    #' @param neg_log10_pvalue_adj_ref neg_log10_pvalue_adj_ref
    #' @param neg_log10_pvalue_adj_alt neg_log10_pvalue_adj_alt
    #' @param motif motif
    #' @param motif_log2FC motif_log2FC
    #' @param beta beta
    #' @param se se
    #' @param gene gene
    #' @param gene_consequence gene_consequence
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param p_value p_value
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param variant_effect_score variant_effect_score
    #' @param SEMpl_annotation SEMpl_annotation
    #' @param SEMpl_baseline SEMpl_baseline
    #' @param alt_score alt_score
    #' @param ref_score ref_score
    #' @param relative_binding_affinity relative_binding_affinity
    #' @param effect_on_binding effect_on_binding
    #' @param pbs pbs
    #' @param ref_auc ref_auc
    #' @param alt_auc alt_auc
    #' @param ... Other optional arguments.
    initialize = function(`name`, `is_complex`, `sequence_variant` = NULL, `protein_complex` = NULL, `biosample_term` = NULL, `biological_context` = NULL, `regulatory_type` = NULL, `class` = NULL, `label` = NULL, `method` = NULL, `files_filesets` = NULL, `source` = NULL, `source_url` = NULL, `score` = NULL, `neg_log10_pvalue_adj_ref` = NULL, `neg_log10_pvalue_adj_alt` = NULL, `motif` = NULL, `motif_log2FC` = NULL, `beta` = NULL, `se` = NULL, `gene` = NULL, `gene_consequence` = NULL, `neg_log10_pvalue` = NULL, `p_value` = NULL, `neg_log10_pvalue_adj` = NULL, `variant_effect_score` = NULL, `SEMpl_annotation` = NULL, `SEMpl_baseline` = NULL, `alt_score` = NULL, `ref_score` = NULL, `relative_binding_affinity` = NULL, `effect_on_binding` = NULL, `pbs` = NULL, `ref_auc` = NULL, `alt_auc` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`is_complex`)) {
        if (!(is.logical(`is_complex`) && length(`is_complex`) == 1)) {
          stop(paste("Error! Invalid data for `is_complex`. Must be a boolean:", `is_complex`))
        }
        self$`is_complex` <- `is_complex`
      }
      if (!is.null(`sequence_variant`)) {
        stopifnot(R6::is.R6(`sequence_variant`))
        self$`sequence_variant` <- `sequence_variant`
      }
      if (!is.null(`protein_complex`)) {
        stopifnot(R6::is.R6(`protein_complex`))
        self$`protein_complex` <- `protein_complex`
      }
      if (!is.null(`biosample_term`)) {
        stopifnot(R6::is.R6(`biosample_term`))
        self$`biosample_term` <- `biosample_term`
      }
      if (!is.null(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!is.null(`regulatory_type`)) {
        if (!(is.character(`regulatory_type`) && length(`regulatory_type`) == 1)) {
          stop(paste("Error! Invalid data for `regulatory_type`. Must be a string:", `regulatory_type`))
        }
        self$`regulatory_type` <- `regulatory_type`
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
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`neg_log10_pvalue_adj_ref`)) {
        self$`neg_log10_pvalue_adj_ref` <- `neg_log10_pvalue_adj_ref`
      }
      if (!is.null(`neg_log10_pvalue_adj_alt`)) {
        self$`neg_log10_pvalue_adj_alt` <- `neg_log10_pvalue_adj_alt`
      }
      if (!is.null(`motif`)) {
        if (!(is.character(`motif`) && length(`motif`) == 1)) {
          stop(paste("Error! Invalid data for `motif`. Must be a string:", `motif`))
        }
        self$`motif` <- `motif`
      }
      if (!is.null(`motif_log2FC`)) {
        self$`motif_log2FC` <- `motif_log2FC`
      }
      if (!is.null(`beta`)) {
        self$`beta` <- `beta`
      }
      if (!is.null(`se`)) {
        self$`se` <- `se`
      }
      if (!is.null(`gene`)) {
        if (!(is.character(`gene`) && length(`gene`) == 1)) {
          stop(paste("Error! Invalid data for `gene`. Must be a string:", `gene`))
        }
        self$`gene` <- `gene`
      }
      if (!is.null(`gene_consequence`)) {
        if (!(is.character(`gene_consequence`) && length(`gene_consequence`) == 1)) {
          stop(paste("Error! Invalid data for `gene_consequence`. Must be a string:", `gene_consequence`))
        }
        self$`gene_consequence` <- `gene_consequence`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`p_value`)) {
        self$`p_value` <- `p_value`
      }
      if (!is.null(`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!is.null(`variant_effect_score`)) {
        self$`variant_effect_score` <- `variant_effect_score`
      }
      if (!is.null(`SEMpl_annotation`)) {
        if (!(is.character(`SEMpl_annotation`) && length(`SEMpl_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `SEMpl_annotation`. Must be a string:", `SEMpl_annotation`))
        }
        self$`SEMpl_annotation` <- `SEMpl_annotation`
      }
      if (!is.null(`SEMpl_baseline`)) {
        self$`SEMpl_baseline` <- `SEMpl_baseline`
      }
      if (!is.null(`alt_score`)) {
        self$`alt_score` <- `alt_score`
      }
      if (!is.null(`ref_score`)) {
        self$`ref_score` <- `ref_score`
      }
      if (!is.null(`relative_binding_affinity`)) {
        self$`relative_binding_affinity` <- `relative_binding_affinity`
      }
      if (!is.null(`effect_on_binding`)) {
        if (!(is.character(`effect_on_binding`) && length(`effect_on_binding`) == 1)) {
          stop(paste("Error! Invalid data for `effect_on_binding`. Must be a string:", `effect_on_binding`))
        }
        self$`effect_on_binding` <- `effect_on_binding`
      }
      if (!is.null(`pbs`)) {
        self$`pbs` <- `pbs`
      }
      if (!is.null(`ref_auc`)) {
        self$`ref_auc` <- `ref_auc`
      }
      if (!is.null(`alt_auc`)) {
        self$`alt_auc` <- `alt_auc`
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
    #' @return ProteinsFromVariants as a base R list.
    #' @examples
    #' # convert array of ProteinsFromVariants (x) to a data frame
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
    #' Convert ProteinsFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProteinsFromVariantsObject <- list()
      if (!is.null(self$`sequence_variant`)) {
        ProteinsFromVariantsObject[["sequence_variant"]] <-
          self$`sequence_variant`$toSimpleType()
      }
      if (!is.null(self$`protein_complex`)) {
        ProteinsFromVariantsObject[["protein_complex"]] <-
          self$`protein_complex`$toSimpleType()
      }
      if (!is.null(self$`biosample_term`)) {
        ProteinsFromVariantsObject[["biosample_term"]] <-
          self$`biosample_term`$toSimpleType()
      }
      if (!is.null(self$`biological_context`)) {
        ProteinsFromVariantsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`regulatory_type`)) {
        ProteinsFromVariantsObject[["regulatory_type"]] <-
          self$`regulatory_type`
      }
      if (!is.null(self$`class`)) {
        ProteinsFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`label`)) {
        ProteinsFromVariantsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`name`)) {
        ProteinsFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`method`)) {
        ProteinsFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        ProteinsFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`source`)) {
        ProteinsFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        ProteinsFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`is_complex`)) {
        ProteinsFromVariantsObject[["is_complex"]] <-
          self$`is_complex`
      }
      if (!is.null(self$`score`)) {
        ProteinsFromVariantsObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`neg_log10_pvalue_adj_ref`)) {
        ProteinsFromVariantsObject[["neg_log10_pvalue_adj_ref"]] <-
          self$`neg_log10_pvalue_adj_ref`
      }
      if (!is.null(self$`neg_log10_pvalue_adj_alt`)) {
        ProteinsFromVariantsObject[["neg_log10_pvalue_adj_alt"]] <-
          self$`neg_log10_pvalue_adj_alt`
      }
      if (!is.null(self$`motif`)) {
        ProteinsFromVariantsObject[["motif"]] <-
          self$`motif`
      }
      if (!is.null(self$`motif_log2FC`)) {
        ProteinsFromVariantsObject[["motif_log2FC"]] <-
          self$`motif_log2FC`
      }
      if (!is.null(self$`beta`)) {
        ProteinsFromVariantsObject[["beta"]] <-
          self$`beta`
      }
      if (!is.null(self$`se`)) {
        ProteinsFromVariantsObject[["se"]] <-
          self$`se`
      }
      if (!is.null(self$`gene`)) {
        ProteinsFromVariantsObject[["gene"]] <-
          self$`gene`
      }
      if (!is.null(self$`gene_consequence`)) {
        ProteinsFromVariantsObject[["gene_consequence"]] <-
          self$`gene_consequence`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        ProteinsFromVariantsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`p_value`)) {
        ProteinsFromVariantsObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        ProteinsFromVariantsObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`variant_effect_score`)) {
        ProteinsFromVariantsObject[["variant_effect_score"]] <-
          self$`variant_effect_score`
      }
      if (!is.null(self$`SEMpl_annotation`)) {
        ProteinsFromVariantsObject[["SEMpl_annotation"]] <-
          self$`SEMpl_annotation`
      }
      if (!is.null(self$`SEMpl_baseline`)) {
        ProteinsFromVariantsObject[["SEMpl_baseline"]] <-
          self$`SEMpl_baseline`
      }
      if (!is.null(self$`alt_score`)) {
        ProteinsFromVariantsObject[["alt_score"]] <-
          self$`alt_score`
      }
      if (!is.null(self$`ref_score`)) {
        ProteinsFromVariantsObject[["ref_score"]] <-
          self$`ref_score`
      }
      if (!is.null(self$`relative_binding_affinity`)) {
        ProteinsFromVariantsObject[["relative_binding_affinity"]] <-
          self$`relative_binding_affinity`
      }
      if (!is.null(self$`effect_on_binding`)) {
        ProteinsFromVariantsObject[["effect_on_binding"]] <-
          self$`effect_on_binding`
      }
      if (!is.null(self$`pbs`)) {
        ProteinsFromVariantsObject[["pbs"]] <-
          self$`pbs`
      }
      if (!is.null(self$`ref_auc`)) {
        ProteinsFromVariantsObject[["ref_auc"]] <-
          self$`ref_auc`
      }
      if (!is.null(self$`alt_auc`)) {
        ProteinsFromVariantsObject[["alt_auc"]] <-
          self$`alt_auc`
      }
      return(ProteinsFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinsFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sequence_variant`)) {
        `sequence_variant_object` <- PhenotypesFromVariantsVariant$new()
        `sequence_variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence_variant` <- `sequence_variant_object`
      }
      if (!is.null(this_object$`protein_complex`)) {
        `protein_complex_object` <- ProteinsFromVariantsProteinComplex$new()
        `protein_complex_object`$fromJSON(jsonlite::toJSON(this_object$`protein_complex`, auto_unbox = TRUE, digits = NA))
        self$`protein_complex` <- `protein_complex_object`
      }
      if (!is.null(this_object$`biosample_term`)) {
        `biosample_term_object` <- ProteinsFromVariantsBiosampleTerm$new()
        `biosample_term_object`$fromJSON(jsonlite::toJSON(this_object$`biosample_term`, auto_unbox = TRUE, digits = NA))
        self$`biosample_term` <- `biosample_term_object`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`regulatory_type`)) {
        self$`regulatory_type` <- this_object$`regulatory_type`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
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
      if (!is.null(this_object$`is_complex`)) {
        self$`is_complex` <- this_object$`is_complex`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj_ref`)) {
        self$`neg_log10_pvalue_adj_ref` <- this_object$`neg_log10_pvalue_adj_ref`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj_alt`)) {
        self$`neg_log10_pvalue_adj_alt` <- this_object$`neg_log10_pvalue_adj_alt`
      }
      if (!is.null(this_object$`motif`)) {
        self$`motif` <- this_object$`motif`
      }
      if (!is.null(this_object$`motif_log2FC`)) {
        self$`motif_log2FC` <- this_object$`motif_log2FC`
      }
      if (!is.null(this_object$`beta`)) {
        self$`beta` <- this_object$`beta`
      }
      if (!is.null(this_object$`se`)) {
        self$`se` <- this_object$`se`
      }
      if (!is.null(this_object$`gene`)) {
        self$`gene` <- this_object$`gene`
      }
      if (!is.null(this_object$`gene_consequence`)) {
        self$`gene_consequence` <- this_object$`gene_consequence`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`p_value`)) {
        self$`p_value` <- this_object$`p_value`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`variant_effect_score`)) {
        self$`variant_effect_score` <- this_object$`variant_effect_score`
      }
      if (!is.null(this_object$`SEMpl_annotation`)) {
        self$`SEMpl_annotation` <- this_object$`SEMpl_annotation`
      }
      if (!is.null(this_object$`SEMpl_baseline`)) {
        self$`SEMpl_baseline` <- this_object$`SEMpl_baseline`
      }
      if (!is.null(this_object$`alt_score`)) {
        self$`alt_score` <- this_object$`alt_score`
      }
      if (!is.null(this_object$`ref_score`)) {
        self$`ref_score` <- this_object$`ref_score`
      }
      if (!is.null(this_object$`relative_binding_affinity`)) {
        self$`relative_binding_affinity` <- this_object$`relative_binding_affinity`
      }
      if (!is.null(this_object$`effect_on_binding`)) {
        self$`effect_on_binding` <- this_object$`effect_on_binding`
      }
      if (!is.null(this_object$`pbs`)) {
        self$`pbs` <- this_object$`pbs`
      }
      if (!is.null(this_object$`ref_auc`)) {
        self$`ref_auc` <- this_object$`ref_auc`
      }
      if (!is.null(this_object$`alt_auc`)) {
        self$`alt_auc` <- this_object$`alt_auc`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProteinsFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinsFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sequence_variant` <- PhenotypesFromVariantsVariant$new()$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
      self$`protein_complex` <- ProteinsFromVariantsProteinComplex$new()$fromJSON(jsonlite::toJSON(this_object$`protein_complex`, auto_unbox = TRUE, digits = NA))
      self$`biosample_term` <- ProteinsFromVariantsBiosampleTerm$new()$fromJSON(jsonlite::toJSON(this_object$`biosample_term`, auto_unbox = TRUE, digits = NA))
      self$`biological_context` <- this_object$`biological_context`
      self$`regulatory_type` <- this_object$`regulatory_type`
      self$`class` <- this_object$`class`
      self$`label` <- this_object$`label`
      self$`name` <- this_object$`name`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`is_complex` <- this_object$`is_complex`
      self$`score` <- this_object$`score`
      self$`neg_log10_pvalue_adj_ref` <- this_object$`neg_log10_pvalue_adj_ref`
      self$`neg_log10_pvalue_adj_alt` <- this_object$`neg_log10_pvalue_adj_alt`
      self$`motif` <- this_object$`motif`
      self$`motif_log2FC` <- this_object$`motif_log2FC`
      self$`beta` <- this_object$`beta`
      self$`se` <- this_object$`se`
      self$`gene` <- this_object$`gene`
      self$`gene_consequence` <- this_object$`gene_consequence`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`p_value` <- this_object$`p_value`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`variant_effect_score` <- this_object$`variant_effect_score`
      self$`SEMpl_annotation` <- this_object$`SEMpl_annotation`
      self$`SEMpl_baseline` <- this_object$`SEMpl_baseline`
      self$`alt_score` <- this_object$`alt_score`
      self$`ref_score` <- this_object$`ref_score`
      self$`relative_binding_affinity` <- this_object$`relative_binding_affinity`
      self$`effect_on_binding` <- this_object$`effect_on_binding`
      self$`pbs` <- this_object$`pbs`
      self$`ref_auc` <- this_object$`ref_auc`
      self$`alt_auc` <- this_object$`alt_auc`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProteinsFromVariants and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProteinsFromVariants: the required field `name` is missing."))
      }
      # check the required field `is_complex`
      if (!is.null(input_json$`is_complex`)) {
        if (!(is.logical(input_json$`is_complex`) && length(input_json$`is_complex`) == 1)) {
          stop(paste("Error! Invalid data for `is_complex`. Must be a boolean:", input_json$`is_complex`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsFromVariants: the required field `is_complex` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProteinsFromVariants
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

      # check if the required `is_complex` is null
      if (is.null(self$`is_complex`)) {
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

      # check if the required `is_complex` is null
      if (is.null(self$`is_complex`)) {
        invalid_fields["is_complex"] <- "Non-nullable required field `is_complex` cannot be null."
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
# ProteinsFromVariants$unlock()
#
## Below is an example to define the print function
# ProteinsFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProteinsFromVariants$lock()

