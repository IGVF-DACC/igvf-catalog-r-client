#' Create a new BiosamplesFromVariants
#'
#' @description
#' BiosamplesFromVariants Class
#'
#' @docType class
#' @title BiosamplesFromVariants
#' @description BiosamplesFromVariants Class
#' @format An \code{R6Class} generator object
#' @field variant  \link{BiosamplesFromVariantsVariant} [optional]
#' @field biosample  \link{BiosamplesFromGenomicElementsBiosample} [optional]
#' @field genomic_element  \link{BiosamplesFromVariantsGenomicElement} [optional]
#' @field strand  character [optional]
#' @field log2FC  numeric [optional]
#' @field bed_score  numeric [optional]
#' @field DNA_count_ref  numeric [optional]
#' @field DNA_count_alt  numeric [optional]
#' @field RNA_count_ref  numeric [optional]
#' @field RNA_count_alt  numeric [optional]
#' @field postProbEffect  numeric [optional]
#' @field CI_lower_95  numeric [optional]
#' @field CI_upper_95  numeric [optional]
#' @field significant  character [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field phenotype  character [optional]
#' @field VCP  numeric [optional]
#' @field gene  character [optional]
#' @field phenotype_name  character [optional]
#' @field label  character
#' @field method  character
#' @field class  character [optional]
#' @field source  character
#' @field source_url  character
#' @field name  character
#' @field files_filesets  character [optional]
#' @field biological_context  character [optional]
#' @field biosample_term  character [optional]
#' @field treatments_term_ids  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiosamplesFromVariants <- R6::R6Class(
  "BiosamplesFromVariants",
  public = list(
    `variant` = NULL,
    `biosample` = NULL,
    `genomic_element` = NULL,
    `strand` = NULL,
    `log2FC` = NULL,
    `bed_score` = NULL,
    `DNA_count_ref` = NULL,
    `DNA_count_alt` = NULL,
    `RNA_count_ref` = NULL,
    `RNA_count_alt` = NULL,
    `postProbEffect` = NULL,
    `CI_lower_95` = NULL,
    `CI_upper_95` = NULL,
    `significant` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `phenotype` = NULL,
    `VCP` = NULL,
    `gene` = NULL,
    `phenotype_name` = NULL,
    `label` = NULL,
    `method` = NULL,
    `class` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `name` = NULL,
    `files_filesets` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `treatments_term_ids` = NULL,

    #' @description
    #' Initialize a new BiosamplesFromVariants class.
    #'
    #' @param label label
    #' @param method method
    #' @param source source
    #' @param source_url source_url
    #' @param name name
    #' @param variant variant
    #' @param biosample biosample
    #' @param genomic_element genomic_element
    #' @param strand strand
    #' @param log2FC log2FC
    #' @param bed_score bed_score
    #' @param DNA_count_ref DNA_count_ref
    #' @param DNA_count_alt DNA_count_alt
    #' @param RNA_count_ref RNA_count_ref
    #' @param RNA_count_alt RNA_count_alt
    #' @param postProbEffect postProbEffect
    #' @param CI_lower_95 CI_lower_95
    #' @param CI_upper_95 CI_upper_95
    #' @param significant significant
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param phenotype phenotype
    #' @param VCP VCP
    #' @param gene gene
    #' @param phenotype_name phenotype_name
    #' @param class class
    #' @param files_filesets files_filesets
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param treatments_term_ids treatments_term_ids
    #' @param ... Other optional arguments.
    initialize = function(`label`, `method`, `source`, `source_url`, `name`, `variant` = NULL, `biosample` = NULL, `genomic_element` = NULL, `strand` = NULL, `log2FC` = NULL, `bed_score` = NULL, `DNA_count_ref` = NULL, `DNA_count_alt` = NULL, `RNA_count_ref` = NULL, `RNA_count_alt` = NULL, `postProbEffect` = NULL, `CI_lower_95` = NULL, `CI_upper_95` = NULL, `significant` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `phenotype` = NULL, `VCP` = NULL, `gene` = NULL, `phenotype_name` = NULL, `class` = NULL, `files_filesets` = NULL, `biological_context` = NULL, `biosample_term` = NULL, `treatments_term_ids` = NULL, ...) {
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
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
      }
      if (!is.null(`biosample`)) {
        stopifnot(R6::is.R6(`biosample`))
        self$`biosample` <- `biosample`
      }
      if (!is.null(`genomic_element`)) {
        stopifnot(R6::is.R6(`genomic_element`))
        self$`genomic_element` <- `genomic_element`
      }
      if (!is.null(`strand`)) {
        if (!(is.character(`strand`) && length(`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", `strand`))
        }
        self$`strand` <- `strand`
      }
      if (!is.null(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!is.null(`bed_score`)) {
        self$`bed_score` <- `bed_score`
      }
      if (!is.null(`DNA_count_ref`)) {
        self$`DNA_count_ref` <- `DNA_count_ref`
      }
      if (!is.null(`DNA_count_alt`)) {
        self$`DNA_count_alt` <- `DNA_count_alt`
      }
      if (!is.null(`RNA_count_ref`)) {
        self$`RNA_count_ref` <- `RNA_count_ref`
      }
      if (!is.null(`RNA_count_alt`)) {
        self$`RNA_count_alt` <- `RNA_count_alt`
      }
      if (!is.null(`postProbEffect`)) {
        self$`postProbEffect` <- `postProbEffect`
      }
      if (!is.null(`CI_lower_95`)) {
        self$`CI_lower_95` <- `CI_lower_95`
      }
      if (!is.null(`CI_upper_95`)) {
        self$`CI_upper_95` <- `CI_upper_95`
      }
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!is.null(`phenotype`)) {
        if (!(is.character(`phenotype`) && length(`phenotype`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype`. Must be a string:", `phenotype`))
        }
        self$`phenotype` <- `phenotype`
      }
      if (!is.null(`VCP`)) {
        self$`VCP` <- `VCP`
      }
      if (!is.null(`gene`)) {
        if (!(is.character(`gene`) && length(`gene`) == 1)) {
          stop(paste("Error! Invalid data for `gene`. Must be a string:", `gene`))
        }
        self$`gene` <- `gene`
      }
      if (!is.null(`phenotype_name`)) {
        if (!(is.character(`phenotype_name`) && length(`phenotype_name`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_name`. Must be a string:", `phenotype_name`))
        }
        self$`phenotype_name` <- `phenotype_name`
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
    #' @return BiosamplesFromVariants as a base R list.
    #' @examples
    #' # convert array of BiosamplesFromVariants (x) to a data frame
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
    #' Convert BiosamplesFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiosamplesFromVariantsObject <- list()
      if (!is.null(self$`variant`)) {
        BiosamplesFromVariantsObject[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      if (!is.null(self$`biosample`)) {
        BiosamplesFromVariantsObject[["biosample"]] <-
          self$`biosample`$toSimpleType()
      }
      if (!is.null(self$`genomic_element`)) {
        BiosamplesFromVariantsObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      if (!is.null(self$`strand`)) {
        BiosamplesFromVariantsObject[["strand"]] <-
          self$`strand`
      }
      if (!is.null(self$`log2FC`)) {
        BiosamplesFromVariantsObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`bed_score`)) {
        BiosamplesFromVariantsObject[["bed_score"]] <-
          self$`bed_score`
      }
      if (!is.null(self$`DNA_count_ref`)) {
        BiosamplesFromVariantsObject[["DNA_count_ref"]] <-
          self$`DNA_count_ref`
      }
      if (!is.null(self$`DNA_count_alt`)) {
        BiosamplesFromVariantsObject[["DNA_count_alt"]] <-
          self$`DNA_count_alt`
      }
      if (!is.null(self$`RNA_count_ref`)) {
        BiosamplesFromVariantsObject[["RNA_count_ref"]] <-
          self$`RNA_count_ref`
      }
      if (!is.null(self$`RNA_count_alt`)) {
        BiosamplesFromVariantsObject[["RNA_count_alt"]] <-
          self$`RNA_count_alt`
      }
      if (!is.null(self$`postProbEffect`)) {
        BiosamplesFromVariantsObject[["postProbEffect"]] <-
          self$`postProbEffect`
      }
      if (!is.null(self$`CI_lower_95`)) {
        BiosamplesFromVariantsObject[["CI_lower_95"]] <-
          self$`CI_lower_95`
      }
      if (!is.null(self$`CI_upper_95`)) {
        BiosamplesFromVariantsObject[["CI_upper_95"]] <-
          self$`CI_upper_95`
      }
      if (!is.null(self$`significant`)) {
        BiosamplesFromVariantsObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        BiosamplesFromVariantsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        BiosamplesFromVariantsObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`phenotype`)) {
        BiosamplesFromVariantsObject[["phenotype"]] <-
          self$`phenotype`
      }
      if (!is.null(self$`VCP`)) {
        BiosamplesFromVariantsObject[["VCP"]] <-
          self$`VCP`
      }
      if (!is.null(self$`gene`)) {
        BiosamplesFromVariantsObject[["gene"]] <-
          self$`gene`
      }
      if (!is.null(self$`phenotype_name`)) {
        BiosamplesFromVariantsObject[["phenotype_name"]] <-
          self$`phenotype_name`
      }
      if (!is.null(self$`label`)) {
        BiosamplesFromVariantsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`method`)) {
        BiosamplesFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        BiosamplesFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`source`)) {
        BiosamplesFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        BiosamplesFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`name`)) {
        BiosamplesFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`files_filesets`)) {
        BiosamplesFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`biological_context`)) {
        BiosamplesFromVariantsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        BiosamplesFromVariantsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`treatments_term_ids`)) {
        BiosamplesFromVariantsObject[["treatments_term_ids"]] <-
          self$`treatments_term_ids`
      }
      return(BiosamplesFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BiosamplesFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiosamplesFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- BiosamplesFromVariantsVariant$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
      }
      if (!is.null(this_object$`biosample`)) {
        `biosample_object` <- BiosamplesFromGenomicElementsBiosample$new()
        `biosample_object`$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
        self$`biosample` <- `biosample_object`
      }
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- BiosamplesFromVariantsGenomicElement$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      if (!is.null(this_object$`strand`)) {
        self$`strand` <- this_object$`strand`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`bed_score`)) {
        self$`bed_score` <- this_object$`bed_score`
      }
      if (!is.null(this_object$`DNA_count_ref`)) {
        self$`DNA_count_ref` <- this_object$`DNA_count_ref`
      }
      if (!is.null(this_object$`DNA_count_alt`)) {
        self$`DNA_count_alt` <- this_object$`DNA_count_alt`
      }
      if (!is.null(this_object$`RNA_count_ref`)) {
        self$`RNA_count_ref` <- this_object$`RNA_count_ref`
      }
      if (!is.null(this_object$`RNA_count_alt`)) {
        self$`RNA_count_alt` <- this_object$`RNA_count_alt`
      }
      if (!is.null(this_object$`postProbEffect`)) {
        self$`postProbEffect` <- this_object$`postProbEffect`
      }
      if (!is.null(this_object$`CI_lower_95`)) {
        self$`CI_lower_95` <- this_object$`CI_lower_95`
      }
      if (!is.null(this_object$`CI_upper_95`)) {
        self$`CI_upper_95` <- this_object$`CI_upper_95`
      }
      if (!is.null(this_object$`significant`)) {
        self$`significant` <- this_object$`significant`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`phenotype`)) {
        self$`phenotype` <- this_object$`phenotype`
      }
      if (!is.null(this_object$`VCP`)) {
        self$`VCP` <- this_object$`VCP`
      }
      if (!is.null(this_object$`gene`)) {
        self$`gene` <- this_object$`gene`
      }
      if (!is.null(this_object$`phenotype_name`)) {
        self$`phenotype_name` <- this_object$`phenotype_name`
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return BiosamplesFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiosamplesFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiosamplesFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variant` <- BiosamplesFromVariantsVariant$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self$`biosample` <- BiosamplesFromGenomicElementsBiosample$new()$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
      self$`genomic_element` <- BiosamplesFromVariantsGenomicElement$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`strand` <- this_object$`strand`
      self$`log2FC` <- this_object$`log2FC`
      self$`bed_score` <- this_object$`bed_score`
      self$`DNA_count_ref` <- this_object$`DNA_count_ref`
      self$`DNA_count_alt` <- this_object$`DNA_count_alt`
      self$`RNA_count_ref` <- this_object$`RNA_count_ref`
      self$`RNA_count_alt` <- this_object$`RNA_count_alt`
      self$`postProbEffect` <- this_object$`postProbEffect`
      self$`CI_lower_95` <- this_object$`CI_lower_95`
      self$`CI_upper_95` <- this_object$`CI_upper_95`
      self$`significant` <- this_object$`significant`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`phenotype` <- this_object$`phenotype`
      self$`VCP` <- this_object$`VCP`
      self$`gene` <- this_object$`gene`
      self$`phenotype_name` <- this_object$`phenotype_name`
      self$`label` <- this_object$`label`
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`name` <- this_object$`name`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`biological_context` <- this_object$`biological_context`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BiosamplesFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromVariants: the required field `label` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromVariants: the required field `method` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromVariants: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromVariants: the required field `source_url` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromVariants: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiosamplesFromVariants
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `label` is null
      if (is.null(self$`label`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
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
# BiosamplesFromVariants$unlock()
#
## Below is an example to define the print function
# BiosamplesFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiosamplesFromVariants$lock()

