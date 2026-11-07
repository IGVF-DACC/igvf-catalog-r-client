#' Create a new GenesGenes
#'
#' @description
#' GenesGenes Class
#'
#' @docType class
#' @title GenesGenes
#' @description GenesGenes Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field gene_1  \link{GenesGenesGene1}
#' @field gene_2  \link{GenesGenesGene1}
#' @field pearson_correlation  numeric [optional]
#' @field genomic_elements_from  list(character) [optional]
#' @field genomic_elements_to  list(character) [optional]
#' @field biosample_term  character [optional]
#' @field biological_context  character [optional]
#' @field treatments_term_ids  list(character) [optional]
#' @field perturbation  character [optional]
#' @field inverse_name  character [optional]
#' @field z_score  numeric [optional]
#' @field associated_process  character [optional]
#' @field detection_method  character [optional]
#' @field detection_method_code  character [optional]
#' @field interaction_type  list(character) [optional]
#' @field interaction_type_code  list(character) [optional]
#' @field confidence_value_biogrid  numeric [optional]
#' @field confidence_value_intact  numeric [optional]
#' @field pmids  list(character) [optional]
#' @field label  character
#' @field method  character
#' @field class  character
#' @field source  character
#' @field source_url  character [optional]
#' @field name  character
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesGenes <- R6::R6Class(
  "GenesGenes",
  public = list(
    `_id` = NULL,
    `gene_1` = NULL,
    `gene_2` = NULL,
    `pearson_correlation` = NULL,
    `genomic_elements_from` = NULL,
    `genomic_elements_to` = NULL,
    `biosample_term` = NULL,
    `biological_context` = NULL,
    `treatments_term_ids` = NULL,
    `perturbation` = NULL,
    `inverse_name` = NULL,
    `z_score` = NULL,
    `associated_process` = NULL,
    `detection_method` = NULL,
    `detection_method_code` = NULL,
    `interaction_type` = NULL,
    `interaction_type_code` = NULL,
    `confidence_value_biogrid` = NULL,
    `confidence_value_intact` = NULL,
    `pmids` = NULL,
    `label` = NULL,
    `method` = NULL,
    `class` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `name` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new GenesGenes class.
    #'
    #' @param _id _id
    #' @param gene_1 gene_1
    #' @param gene_2 gene_2
    #' @param label label
    #' @param method method
    #' @param class class
    #' @param source source
    #' @param name name
    #' @param pearson_correlation pearson_correlation
    #' @param genomic_elements_from genomic_elements_from
    #' @param genomic_elements_to genomic_elements_to
    #' @param biosample_term biosample_term
    #' @param biological_context biological_context
    #' @param treatments_term_ids treatments_term_ids
    #' @param perturbation perturbation
    #' @param inverse_name inverse_name
    #' @param z_score z_score
    #' @param associated_process associated_process
    #' @param detection_method detection_method
    #' @param detection_method_code detection_method_code
    #' @param interaction_type interaction_type
    #' @param interaction_type_code interaction_type_code
    #' @param confidence_value_biogrid confidence_value_biogrid
    #' @param confidence_value_intact confidence_value_intact
    #' @param pmids pmids
    #' @param source_url source_url
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `gene_1`, `gene_2`, `label`, `method`, `class`, `source`, `name`, `pearson_correlation` = NULL, `genomic_elements_from` = NULL, `genomic_elements_to` = NULL, `biosample_term` = NULL, `biological_context` = NULL, `treatments_term_ids` = NULL, `perturbation` = NULL, `inverse_name` = NULL, `z_score` = NULL, `associated_process` = NULL, `detection_method` = NULL, `detection_method_code` = NULL, `interaction_type` = NULL, `interaction_type_code` = NULL, `confidence_value_biogrid` = NULL, `confidence_value_intact` = NULL, `pmids` = NULL, `source_url` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`gene_1`)) {
        stopifnot(R6::is.R6(`gene_1`))
        self$`gene_1` <- `gene_1`
      }
      if (!missing(`gene_2`)) {
        stopifnot(R6::is.R6(`gene_2`))
        self$`gene_2` <- `gene_2`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`method`)) {
        if (!(`method` %in% c("COXPRESdb", "Perturb-seq", "dosage growth defect (sensu BioGRID)", "dosage lethality (sensu BioGRID)", "dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID)", "dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID)", "dosage rescue (sensu BioGRID)", "dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID)", "dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)", "negative genetic interaction (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic suppression (sensu BioGRID)", "positive genetic interaction (sensu BioGRID)", "positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)", "positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID)", "synthetic growth defect (sensu BioGRID)", "synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)", "synthetic haploinsufficiency (sensu BioGRID)", "synthetic lethality (sensu BioGRID)", "synthetic rescue (sensu BioGRID)"))) {
          stop(paste("Error! \"", `method`, "\" cannot be assigned to `method`. Must be \"COXPRESdb\", \"Perturb-seq\", \"dosage growth defect (sensu BioGRID)\", \"dosage lethality (sensu BioGRID)\", \"dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID)\", \"dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"dosage rescue (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic suppression (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID)\", \"synthetic growth defect (sensu BioGRID)\", \"synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"synthetic haploinsufficiency (sensu BioGRID)\", \"synthetic lethality (sensu BioGRID)\", \"synthetic rescue (sensu BioGRID)\".", sep = ""))
        }
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
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`pearson_correlation`)) {
        self$`pearson_correlation` <- `pearson_correlation`
      }
      if (!is.null(`genomic_elements_from`)) {
        stopifnot(is.vector(`genomic_elements_from`), length(`genomic_elements_from`) != 0)
        sapply(`genomic_elements_from`, function(x) stopifnot(is.character(x)))
        self$`genomic_elements_from` <- `genomic_elements_from`
      }
      if (!is.null(`genomic_elements_to`)) {
        stopifnot(is.vector(`genomic_elements_to`), length(`genomic_elements_to`) != 0)
        sapply(`genomic_elements_to`, function(x) stopifnot(is.character(x)))
        self$`genomic_elements_to` <- `genomic_elements_to`
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
      if (!is.null(`inverse_name`)) {
        if (!(is.character(`inverse_name`) && length(`inverse_name`) == 1)) {
          stop(paste("Error! Invalid data for `inverse_name`. Must be a string:", `inverse_name`))
        }
        self$`inverse_name` <- `inverse_name`
      }
      if (!is.null(`z_score`)) {
        self$`z_score` <- `z_score`
      }
      if (!is.null(`associated_process`)) {
        if (!(is.character(`associated_process`) && length(`associated_process`) == 1)) {
          stop(paste("Error! Invalid data for `associated_process`. Must be a string:", `associated_process`))
        }
        self$`associated_process` <- `associated_process`
      }
      if (!is.null(`detection_method`)) {
        if (!(is.character(`detection_method`) && length(`detection_method`) == 1)) {
          stop(paste("Error! Invalid data for `detection_method`. Must be a string:", `detection_method`))
        }
        self$`detection_method` <- `detection_method`
      }
      if (!is.null(`detection_method_code`)) {
        if (!(is.character(`detection_method_code`) && length(`detection_method_code`) == 1)) {
          stop(paste("Error! Invalid data for `detection_method_code`. Must be a string:", `detection_method_code`))
        }
        self$`detection_method_code` <- `detection_method_code`
      }
      if (!is.null(`interaction_type`)) {
        stopifnot(is.vector(`interaction_type`), length(`interaction_type`) != 0)
        sapply(`interaction_type`, function(x) stopifnot(is.character(x)))
        self$`interaction_type` <- `interaction_type`
      }
      if (!is.null(`interaction_type_code`)) {
        stopifnot(is.vector(`interaction_type_code`), length(`interaction_type_code`) != 0)
        sapply(`interaction_type_code`, function(x) stopifnot(is.character(x)))
        self$`interaction_type_code` <- `interaction_type_code`
      }
      if (!is.null(`confidence_value_biogrid`)) {
        self$`confidence_value_biogrid` <- `confidence_value_biogrid`
      }
      if (!is.null(`confidence_value_intact`)) {
        self$`confidence_value_intact` <- `confidence_value_intact`
      }
      if (!is.null(`pmids`)) {
        stopifnot(is.vector(`pmids`), length(`pmids`) != 0)
        sapply(`pmids`, function(x) stopifnot(is.character(x)))
        self$`pmids` <- `pmids`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
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
    #' @return GenesGenes as a base R list.
    #' @examples
    #' # convert array of GenesGenes (x) to a data frame
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
    #' Convert GenesGenes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesGenesObject <- list()
      if (!is.null(self$`_id`)) {
        GenesGenesObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`gene_1`)) {
        GenesGenesObject[["gene_1"]] <-
          self$`gene_1`$toSimpleType()
      }
      if (!is.null(self$`gene_2`)) {
        GenesGenesObject[["gene_2"]] <-
          self$`gene_2`$toSimpleType()
      }
      if (!is.null(self$`pearson_correlation`)) {
        GenesGenesObject[["pearson_correlation"]] <-
          self$`pearson_correlation`
      }
      if (!is.null(self$`genomic_elements_from`)) {
        GenesGenesObject[["genomic_elements_from"]] <-
          self$`genomic_elements_from`
      }
      if (!is.null(self$`genomic_elements_to`)) {
        GenesGenesObject[["genomic_elements_to"]] <-
          self$`genomic_elements_to`
      }
      if (!is.null(self$`biosample_term`)) {
        GenesGenesObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`biological_context`)) {
        GenesGenesObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`treatments_term_ids`)) {
        GenesGenesObject[["treatments_term_ids"]] <-
          self$`treatments_term_ids`
      }
      if (!is.null(self$`perturbation`)) {
        GenesGenesObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`inverse_name`)) {
        GenesGenesObject[["inverse_name"]] <-
          self$`inverse_name`
      }
      if (!is.null(self$`z_score`)) {
        GenesGenesObject[["z_score"]] <-
          self$`z_score`
      }
      if (!is.null(self$`associated_process`)) {
        GenesGenesObject[["associated_process"]] <-
          self$`associated_process`
      }
      if (!is.null(self$`detection_method`)) {
        GenesGenesObject[["detection_method"]] <-
          self$`detection_method`
      }
      if (!is.null(self$`detection_method_code`)) {
        GenesGenesObject[["detection_method_code"]] <-
          self$`detection_method_code`
      }
      if (!is.null(self$`interaction_type`)) {
        GenesGenesObject[["interaction_type"]] <-
          self$`interaction_type`
      }
      if (!is.null(self$`interaction_type_code`)) {
        GenesGenesObject[["interaction_type_code"]] <-
          self$`interaction_type_code`
      }
      if (!is.null(self$`confidence_value_biogrid`)) {
        GenesGenesObject[["confidence_value_biogrid"]] <-
          self$`confidence_value_biogrid`
      }
      if (!is.null(self$`confidence_value_intact`)) {
        GenesGenesObject[["confidence_value_intact"]] <-
          self$`confidence_value_intact`
      }
      if (!is.null(self$`pmids`)) {
        GenesGenesObject[["pmids"]] <-
          self$`pmids`
      }
      if (!is.null(self$`label`)) {
        GenesGenesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`method`)) {
        GenesGenesObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        GenesGenesObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`source`)) {
        GenesGenesObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenesGenesObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`name`)) {
        GenesGenesObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`files_filesets`)) {
        GenesGenesObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(GenesGenesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesGenes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`gene_1`)) {
        `gene_1_object` <- GenesGenesGene1$new()
        `gene_1_object`$fromJSON(jsonlite::toJSON(this_object$`gene_1`, auto_unbox = TRUE, digits = NA))
        self$`gene_1` <- `gene_1_object`
      }
      if (!is.null(this_object$`gene_2`)) {
        `gene_2_object` <- GenesGenesGene1$new()
        `gene_2_object`$fromJSON(jsonlite::toJSON(this_object$`gene_2`, auto_unbox = TRUE, digits = NA))
        self$`gene_2` <- `gene_2_object`
      }
      if (!is.null(this_object$`pearson_correlation`)) {
        self$`pearson_correlation` <- this_object$`pearson_correlation`
      }
      if (!is.null(this_object$`genomic_elements_from`)) {
        self$`genomic_elements_from` <- ApiClient$new()$deserializeObj(this_object$`genomic_elements_from`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`genomic_elements_to`)) {
        self$`genomic_elements_to` <- ApiClient$new()$deserializeObj(this_object$`genomic_elements_to`, "array[character]", loadNamespace("igvfcatalogclient"))
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
      if (!is.null(this_object$`inverse_name`)) {
        self$`inverse_name` <- this_object$`inverse_name`
      }
      if (!is.null(this_object$`z_score`)) {
        self$`z_score` <- this_object$`z_score`
      }
      if (!is.null(this_object$`associated_process`)) {
        self$`associated_process` <- this_object$`associated_process`
      }
      if (!is.null(this_object$`detection_method`)) {
        self$`detection_method` <- this_object$`detection_method`
      }
      if (!is.null(this_object$`detection_method_code`)) {
        self$`detection_method_code` <- this_object$`detection_method_code`
      }
      if (!is.null(this_object$`interaction_type`)) {
        self$`interaction_type` <- ApiClient$new()$deserializeObj(this_object$`interaction_type`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`interaction_type_code`)) {
        self$`interaction_type_code` <- ApiClient$new()$deserializeObj(this_object$`interaction_type_code`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`confidence_value_biogrid`)) {
        self$`confidence_value_biogrid` <- this_object$`confidence_value_biogrid`
      }
      if (!is.null(this_object$`confidence_value_intact`)) {
        self$`confidence_value_intact` <- this_object$`confidence_value_intact`
      }
      if (!is.null(this_object$`pmids`)) {
        self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`method`)) {
        if (!is.null(this_object$`method`) && !(this_object$`method` %in% c("COXPRESdb", "Perturb-seq", "dosage growth defect (sensu BioGRID)", "dosage lethality (sensu BioGRID)", "dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID)", "dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID)", "dosage rescue (sensu BioGRID)", "dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID)", "dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)", "negative genetic interaction (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic suppression (sensu BioGRID)", "positive genetic interaction (sensu BioGRID)", "positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)", "positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID)", "synthetic growth defect (sensu BioGRID)", "synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)", "synthetic haploinsufficiency (sensu BioGRID)", "synthetic lethality (sensu BioGRID)", "synthetic rescue (sensu BioGRID)"))) {
          stop(paste("Error! \"", this_object$`method`, "\" cannot be assigned to `method`. Must be \"COXPRESdb\", \"Perturb-seq\", \"dosage growth defect (sensu BioGRID)\", \"dosage lethality (sensu BioGRID)\", \"dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID)\", \"dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"dosage rescue (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic suppression (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID)\", \"synthetic growth defect (sensu BioGRID)\", \"synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"synthetic haploinsufficiency (sensu BioGRID)\", \"synthetic lethality (sensu BioGRID)\", \"synthetic rescue (sensu BioGRID)\".", sep = ""))
        }
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenesGenes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesGenes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`gene_1` <- GenesGenesGene1$new()$fromJSON(jsonlite::toJSON(this_object$`gene_1`, auto_unbox = TRUE, digits = NA))
      self$`gene_2` <- GenesGenesGene1$new()$fromJSON(jsonlite::toJSON(this_object$`gene_2`, auto_unbox = TRUE, digits = NA))
      self$`pearson_correlation` <- this_object$`pearson_correlation`
      self$`genomic_elements_from` <- ApiClient$new()$deserializeObj(this_object$`genomic_elements_from`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`genomic_elements_to` <- ApiClient$new()$deserializeObj(this_object$`genomic_elements_to`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`biosample_term` <- this_object$`biosample_term`
      self$`biological_context` <- this_object$`biological_context`
      self$`treatments_term_ids` <- ApiClient$new()$deserializeObj(this_object$`treatments_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`perturbation` <- this_object$`perturbation`
      self$`inverse_name` <- this_object$`inverse_name`
      self$`z_score` <- this_object$`z_score`
      self$`associated_process` <- this_object$`associated_process`
      self$`detection_method` <- this_object$`detection_method`
      self$`detection_method_code` <- this_object$`detection_method_code`
      self$`interaction_type` <- ApiClient$new()$deserializeObj(this_object$`interaction_type`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`interaction_type_code` <- ApiClient$new()$deserializeObj(this_object$`interaction_type_code`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`confidence_value_biogrid` <- this_object$`confidence_value_biogrid`
      self$`confidence_value_intact` <- this_object$`confidence_value_intact`
      self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`label` <- this_object$`label`
      if (!is.null(this_object$`method`) && !(this_object$`method` %in% c("COXPRESdb", "Perturb-seq", "dosage growth defect (sensu BioGRID)", "dosage lethality (sensu BioGRID)", "dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID)", "dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID)", "dosage rescue (sensu BioGRID)", "dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID)", "dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)", "negative genetic interaction (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)", "negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID)", "phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID)", "phenotypic suppression (sensu BioGRID)", "positive genetic interaction (sensu BioGRID)", "positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)", "positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID)", "synthetic growth defect (sensu BioGRID)", "synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)", "synthetic haploinsufficiency (sensu BioGRID)", "synthetic lethality (sensu BioGRID)", "synthetic rescue (sensu BioGRID)"))) {
        stop(paste("Error! \"", this_object$`method`, "\" cannot be assigned to `method`. Must be \"COXPRESdb\", \"Perturb-seq\", \"dosage growth defect (sensu BioGRID)\", \"dosage lethality (sensu BioGRID)\", \"dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID)\", \"dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"dosage rescue (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID)\", \"phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"phenotypic suppression (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID)\", \"synthetic growth defect (sensu BioGRID)\", \"synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID)\", \"synthetic haploinsufficiency (sensu BioGRID)\", \"synthetic lethality (sensu BioGRID)\", \"synthetic rescue (sensu BioGRID)\".", sep = ""))
      }
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`name` <- this_object$`name`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesGenes and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `_id` is missing."))
      }
      # check the required field `gene_1`
      if (!is.null(input_json$`gene_1`)) {
        stopifnot(R6::is.R6(input_json$`gene_1`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `gene_1` is missing."))
      }
      # check the required field `gene_2`
      if (!is.null(input_json$`gene_2`)) {
        stopifnot(R6::is.R6(input_json$`gene_2`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `gene_2` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `label` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `method` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `class` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `source` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesGenes: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesGenes
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

      # check if the required `gene_1` is null
      if (is.null(self$`gene_1`)) {
        return(FALSE)
      }

      # check if the required `gene_2` is null
      if (is.null(self$`gene_2`)) {
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

      # check if the required `source` is null
      if (is.null(self$`source`)) {
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

      # check if the required `gene_1` is null
      if (is.null(self$`gene_1`)) {
        invalid_fields["gene_1"] <- "Non-nullable required field `gene_1` cannot be null."
      }

      # check if the required `gene_2` is null
      if (is.null(self$`gene_2`)) {
        invalid_fields["gene_2"] <- "Non-nullable required field `gene_2` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
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
# GenesGenes$unlock()
#
## Below is an example to define the print function
# GenesGenes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesGenes$lock()

