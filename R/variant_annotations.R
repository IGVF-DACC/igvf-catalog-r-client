#' Create a new VariantAnnotations
#'
#' @description
#' VariantAnnotations Class
#'
#' @docType class
#' @title VariantAnnotations
#' @description VariantAnnotations Class
#' @format An \code{R6Class} generator object
#' @field bravo_af  numeric [optional]
#' @field gnomad_af_total  numeric [optional]
#' @field gnomad_af_afr  numeric [optional]
#' @field gnomad_af_afr_female  numeric [optional]
#' @field gnomad_af_afr_male  numeric [optional]
#' @field gnomad_af_ami  numeric [optional]
#' @field gnomad_af_ami_female  numeric [optional]
#' @field gnomad_af_ami_male  numeric [optional]
#' @field gnomad_af_amr  numeric [optional]
#' @field gnomad_af_amr_female  numeric [optional]
#' @field gnomad_af_amr_male  numeric [optional]
#' @field gnomad_af_asj  numeric [optional]
#' @field gnomad_af_asj_female  numeric [optional]
#' @field gnomad_af_asj_male  numeric [optional]
#' @field gnomad_af_eas  numeric [optional]
#' @field gnomad_af_eas_female  numeric [optional]
#' @field gnomad_af_eas_male  numeric [optional]
#' @field gnomad_af_female  numeric [optional]
#' @field gnomad_af_fin  numeric [optional]
#' @field gnomad_af_fin_female  numeric [optional]
#' @field gnomad_af_fin_male  numeric [optional]
#' @field gnomad_af_male  numeric [optional]
#' @field gnomad_af_nfe  numeric [optional]
#' @field gnomad_af_nfe_female  numeric [optional]
#' @field gnomad_af_nfe_male  numeric [optional]
#' @field gnomad_af_oth  numeric [optional]
#' @field gnomad_af_oth_female  numeric [optional]
#' @field gnomad_af_oth_male  numeric [optional]
#' @field gnomad_af_sas  numeric [optional]
#' @field gnomad_af_sas_male  numeric [optional]
#' @field gnomad_af_sas_female  numeric [optional]
#' @field gnomad_af_raw  numeric [optional]
#' @field GENCODE_category  character [optional]
#' @field funseq_description  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantAnnotations <- R6::R6Class(
  "VariantAnnotations",
  public = list(
    `bravo_af` = NULL,
    `gnomad_af_total` = NULL,
    `gnomad_af_afr` = NULL,
    `gnomad_af_afr_female` = NULL,
    `gnomad_af_afr_male` = NULL,
    `gnomad_af_ami` = NULL,
    `gnomad_af_ami_female` = NULL,
    `gnomad_af_ami_male` = NULL,
    `gnomad_af_amr` = NULL,
    `gnomad_af_amr_female` = NULL,
    `gnomad_af_amr_male` = NULL,
    `gnomad_af_asj` = NULL,
    `gnomad_af_asj_female` = NULL,
    `gnomad_af_asj_male` = NULL,
    `gnomad_af_eas` = NULL,
    `gnomad_af_eas_female` = NULL,
    `gnomad_af_eas_male` = NULL,
    `gnomad_af_female` = NULL,
    `gnomad_af_fin` = NULL,
    `gnomad_af_fin_female` = NULL,
    `gnomad_af_fin_male` = NULL,
    `gnomad_af_male` = NULL,
    `gnomad_af_nfe` = NULL,
    `gnomad_af_nfe_female` = NULL,
    `gnomad_af_nfe_male` = NULL,
    `gnomad_af_oth` = NULL,
    `gnomad_af_oth_female` = NULL,
    `gnomad_af_oth_male` = NULL,
    `gnomad_af_sas` = NULL,
    `gnomad_af_sas_male` = NULL,
    `gnomad_af_sas_female` = NULL,
    `gnomad_af_raw` = NULL,
    `GENCODE_category` = NULL,
    `funseq_description` = NULL,

    #' @description
    #' Initialize a new VariantAnnotations class.
    #'
    #' @param bravo_af bravo_af
    #' @param gnomad_af_total gnomad_af_total
    #' @param gnomad_af_afr gnomad_af_afr
    #' @param gnomad_af_afr_female gnomad_af_afr_female
    #' @param gnomad_af_afr_male gnomad_af_afr_male
    #' @param gnomad_af_ami gnomad_af_ami
    #' @param gnomad_af_ami_female gnomad_af_ami_female
    #' @param gnomad_af_ami_male gnomad_af_ami_male
    #' @param gnomad_af_amr gnomad_af_amr
    #' @param gnomad_af_amr_female gnomad_af_amr_female
    #' @param gnomad_af_amr_male gnomad_af_amr_male
    #' @param gnomad_af_asj gnomad_af_asj
    #' @param gnomad_af_asj_female gnomad_af_asj_female
    #' @param gnomad_af_asj_male gnomad_af_asj_male
    #' @param gnomad_af_eas gnomad_af_eas
    #' @param gnomad_af_eas_female gnomad_af_eas_female
    #' @param gnomad_af_eas_male gnomad_af_eas_male
    #' @param gnomad_af_female gnomad_af_female
    #' @param gnomad_af_fin gnomad_af_fin
    #' @param gnomad_af_fin_female gnomad_af_fin_female
    #' @param gnomad_af_fin_male gnomad_af_fin_male
    #' @param gnomad_af_male gnomad_af_male
    #' @param gnomad_af_nfe gnomad_af_nfe
    #' @param gnomad_af_nfe_female gnomad_af_nfe_female
    #' @param gnomad_af_nfe_male gnomad_af_nfe_male
    #' @param gnomad_af_oth gnomad_af_oth
    #' @param gnomad_af_oth_female gnomad_af_oth_female
    #' @param gnomad_af_oth_male gnomad_af_oth_male
    #' @param gnomad_af_sas gnomad_af_sas
    #' @param gnomad_af_sas_male gnomad_af_sas_male
    #' @param gnomad_af_sas_female gnomad_af_sas_female
    #' @param gnomad_af_raw gnomad_af_raw
    #' @param GENCODE_category GENCODE_category
    #' @param funseq_description funseq_description
    #' @param ... Other optional arguments.
    initialize = function(`bravo_af` = NULL, `gnomad_af_total` = NULL, `gnomad_af_afr` = NULL, `gnomad_af_afr_female` = NULL, `gnomad_af_afr_male` = NULL, `gnomad_af_ami` = NULL, `gnomad_af_ami_female` = NULL, `gnomad_af_ami_male` = NULL, `gnomad_af_amr` = NULL, `gnomad_af_amr_female` = NULL, `gnomad_af_amr_male` = NULL, `gnomad_af_asj` = NULL, `gnomad_af_asj_female` = NULL, `gnomad_af_asj_male` = NULL, `gnomad_af_eas` = NULL, `gnomad_af_eas_female` = NULL, `gnomad_af_eas_male` = NULL, `gnomad_af_female` = NULL, `gnomad_af_fin` = NULL, `gnomad_af_fin_female` = NULL, `gnomad_af_fin_male` = NULL, `gnomad_af_male` = NULL, `gnomad_af_nfe` = NULL, `gnomad_af_nfe_female` = NULL, `gnomad_af_nfe_male` = NULL, `gnomad_af_oth` = NULL, `gnomad_af_oth_female` = NULL, `gnomad_af_oth_male` = NULL, `gnomad_af_sas` = NULL, `gnomad_af_sas_male` = NULL, `gnomad_af_sas_female` = NULL, `gnomad_af_raw` = NULL, `GENCODE_category` = NULL, `funseq_description` = NULL, ...) {
      if (!is.null(`bravo_af`)) {
        self$`bravo_af` <- `bravo_af`
      }
      if (!is.null(`gnomad_af_total`)) {
        self$`gnomad_af_total` <- `gnomad_af_total`
      }
      if (!is.null(`gnomad_af_afr`)) {
        self$`gnomad_af_afr` <- `gnomad_af_afr`
      }
      if (!is.null(`gnomad_af_afr_female`)) {
        self$`gnomad_af_afr_female` <- `gnomad_af_afr_female`
      }
      if (!is.null(`gnomad_af_afr_male`)) {
        self$`gnomad_af_afr_male` <- `gnomad_af_afr_male`
      }
      if (!is.null(`gnomad_af_ami`)) {
        self$`gnomad_af_ami` <- `gnomad_af_ami`
      }
      if (!is.null(`gnomad_af_ami_female`)) {
        self$`gnomad_af_ami_female` <- `gnomad_af_ami_female`
      }
      if (!is.null(`gnomad_af_ami_male`)) {
        self$`gnomad_af_ami_male` <- `gnomad_af_ami_male`
      }
      if (!is.null(`gnomad_af_amr`)) {
        self$`gnomad_af_amr` <- `gnomad_af_amr`
      }
      if (!is.null(`gnomad_af_amr_female`)) {
        self$`gnomad_af_amr_female` <- `gnomad_af_amr_female`
      }
      if (!is.null(`gnomad_af_amr_male`)) {
        self$`gnomad_af_amr_male` <- `gnomad_af_amr_male`
      }
      if (!is.null(`gnomad_af_asj`)) {
        self$`gnomad_af_asj` <- `gnomad_af_asj`
      }
      if (!is.null(`gnomad_af_asj_female`)) {
        self$`gnomad_af_asj_female` <- `gnomad_af_asj_female`
      }
      if (!is.null(`gnomad_af_asj_male`)) {
        self$`gnomad_af_asj_male` <- `gnomad_af_asj_male`
      }
      if (!is.null(`gnomad_af_eas`)) {
        self$`gnomad_af_eas` <- `gnomad_af_eas`
      }
      if (!is.null(`gnomad_af_eas_female`)) {
        self$`gnomad_af_eas_female` <- `gnomad_af_eas_female`
      }
      if (!is.null(`gnomad_af_eas_male`)) {
        self$`gnomad_af_eas_male` <- `gnomad_af_eas_male`
      }
      if (!is.null(`gnomad_af_female`)) {
        self$`gnomad_af_female` <- `gnomad_af_female`
      }
      if (!is.null(`gnomad_af_fin`)) {
        self$`gnomad_af_fin` <- `gnomad_af_fin`
      }
      if (!is.null(`gnomad_af_fin_female`)) {
        self$`gnomad_af_fin_female` <- `gnomad_af_fin_female`
      }
      if (!is.null(`gnomad_af_fin_male`)) {
        self$`gnomad_af_fin_male` <- `gnomad_af_fin_male`
      }
      if (!is.null(`gnomad_af_male`)) {
        self$`gnomad_af_male` <- `gnomad_af_male`
      }
      if (!is.null(`gnomad_af_nfe`)) {
        self$`gnomad_af_nfe` <- `gnomad_af_nfe`
      }
      if (!is.null(`gnomad_af_nfe_female`)) {
        self$`gnomad_af_nfe_female` <- `gnomad_af_nfe_female`
      }
      if (!is.null(`gnomad_af_nfe_male`)) {
        self$`gnomad_af_nfe_male` <- `gnomad_af_nfe_male`
      }
      if (!is.null(`gnomad_af_oth`)) {
        self$`gnomad_af_oth` <- `gnomad_af_oth`
      }
      if (!is.null(`gnomad_af_oth_female`)) {
        self$`gnomad_af_oth_female` <- `gnomad_af_oth_female`
      }
      if (!is.null(`gnomad_af_oth_male`)) {
        self$`gnomad_af_oth_male` <- `gnomad_af_oth_male`
      }
      if (!is.null(`gnomad_af_sas`)) {
        self$`gnomad_af_sas` <- `gnomad_af_sas`
      }
      if (!is.null(`gnomad_af_sas_male`)) {
        self$`gnomad_af_sas_male` <- `gnomad_af_sas_male`
      }
      if (!is.null(`gnomad_af_sas_female`)) {
        self$`gnomad_af_sas_female` <- `gnomad_af_sas_female`
      }
      if (!is.null(`gnomad_af_raw`)) {
        self$`gnomad_af_raw` <- `gnomad_af_raw`
      }
      if (!is.null(`GENCODE_category`)) {
        if (!(is.character(`GENCODE_category`) && length(`GENCODE_category`) == 1)) {
          stop(paste("Error! Invalid data for `GENCODE_category`. Must be a string:", `GENCODE_category`))
        }
        self$`GENCODE_category` <- `GENCODE_category`
      }
      if (!is.null(`funseq_description`)) {
        if (!(is.character(`funseq_description`) && length(`funseq_description`) == 1)) {
          stop(paste("Error! Invalid data for `funseq_description`. Must be a string:", `funseq_description`))
        }
        self$`funseq_description` <- `funseq_description`
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
    #' @return VariantAnnotations as a base R list.
    #' @examples
    #' # convert array of VariantAnnotations (x) to a data frame
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
    #' Convert VariantAnnotations to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantAnnotationsObject <- list()
      if (!is.null(self$`bravo_af`)) {
        VariantAnnotationsObject[["bravo_af"]] <-
          self$`bravo_af`
      }
      if (!is.null(self$`gnomad_af_total`)) {
        VariantAnnotationsObject[["gnomad_af_total"]] <-
          self$`gnomad_af_total`
      }
      if (!is.null(self$`gnomad_af_afr`)) {
        VariantAnnotationsObject[["gnomad_af_afr"]] <-
          self$`gnomad_af_afr`
      }
      if (!is.null(self$`gnomad_af_afr_female`)) {
        VariantAnnotationsObject[["gnomad_af_afr_female"]] <-
          self$`gnomad_af_afr_female`
      }
      if (!is.null(self$`gnomad_af_afr_male`)) {
        VariantAnnotationsObject[["gnomad_af_afr_male"]] <-
          self$`gnomad_af_afr_male`
      }
      if (!is.null(self$`gnomad_af_ami`)) {
        VariantAnnotationsObject[["gnomad_af_ami"]] <-
          self$`gnomad_af_ami`
      }
      if (!is.null(self$`gnomad_af_ami_female`)) {
        VariantAnnotationsObject[["gnomad_af_ami_female"]] <-
          self$`gnomad_af_ami_female`
      }
      if (!is.null(self$`gnomad_af_ami_male`)) {
        VariantAnnotationsObject[["gnomad_af_ami_male"]] <-
          self$`gnomad_af_ami_male`
      }
      if (!is.null(self$`gnomad_af_amr`)) {
        VariantAnnotationsObject[["gnomad_af_amr"]] <-
          self$`gnomad_af_amr`
      }
      if (!is.null(self$`gnomad_af_amr_female`)) {
        VariantAnnotationsObject[["gnomad_af_amr_female"]] <-
          self$`gnomad_af_amr_female`
      }
      if (!is.null(self$`gnomad_af_amr_male`)) {
        VariantAnnotationsObject[["gnomad_af_amr_male"]] <-
          self$`gnomad_af_amr_male`
      }
      if (!is.null(self$`gnomad_af_asj`)) {
        VariantAnnotationsObject[["gnomad_af_asj"]] <-
          self$`gnomad_af_asj`
      }
      if (!is.null(self$`gnomad_af_asj_female`)) {
        VariantAnnotationsObject[["gnomad_af_asj_female"]] <-
          self$`gnomad_af_asj_female`
      }
      if (!is.null(self$`gnomad_af_asj_male`)) {
        VariantAnnotationsObject[["gnomad_af_asj_male"]] <-
          self$`gnomad_af_asj_male`
      }
      if (!is.null(self$`gnomad_af_eas`)) {
        VariantAnnotationsObject[["gnomad_af_eas"]] <-
          self$`gnomad_af_eas`
      }
      if (!is.null(self$`gnomad_af_eas_female`)) {
        VariantAnnotationsObject[["gnomad_af_eas_female"]] <-
          self$`gnomad_af_eas_female`
      }
      if (!is.null(self$`gnomad_af_eas_male`)) {
        VariantAnnotationsObject[["gnomad_af_eas_male"]] <-
          self$`gnomad_af_eas_male`
      }
      if (!is.null(self$`gnomad_af_female`)) {
        VariantAnnotationsObject[["gnomad_af_female"]] <-
          self$`gnomad_af_female`
      }
      if (!is.null(self$`gnomad_af_fin`)) {
        VariantAnnotationsObject[["gnomad_af_fin"]] <-
          self$`gnomad_af_fin`
      }
      if (!is.null(self$`gnomad_af_fin_female`)) {
        VariantAnnotationsObject[["gnomad_af_fin_female"]] <-
          self$`gnomad_af_fin_female`
      }
      if (!is.null(self$`gnomad_af_fin_male`)) {
        VariantAnnotationsObject[["gnomad_af_fin_male"]] <-
          self$`gnomad_af_fin_male`
      }
      if (!is.null(self$`gnomad_af_male`)) {
        VariantAnnotationsObject[["gnomad_af_male"]] <-
          self$`gnomad_af_male`
      }
      if (!is.null(self$`gnomad_af_nfe`)) {
        VariantAnnotationsObject[["gnomad_af_nfe"]] <-
          self$`gnomad_af_nfe`
      }
      if (!is.null(self$`gnomad_af_nfe_female`)) {
        VariantAnnotationsObject[["gnomad_af_nfe_female"]] <-
          self$`gnomad_af_nfe_female`
      }
      if (!is.null(self$`gnomad_af_nfe_male`)) {
        VariantAnnotationsObject[["gnomad_af_nfe_male"]] <-
          self$`gnomad_af_nfe_male`
      }
      if (!is.null(self$`gnomad_af_oth`)) {
        VariantAnnotationsObject[["gnomad_af_oth"]] <-
          self$`gnomad_af_oth`
      }
      if (!is.null(self$`gnomad_af_oth_female`)) {
        VariantAnnotationsObject[["gnomad_af_oth_female"]] <-
          self$`gnomad_af_oth_female`
      }
      if (!is.null(self$`gnomad_af_oth_male`)) {
        VariantAnnotationsObject[["gnomad_af_oth_male"]] <-
          self$`gnomad_af_oth_male`
      }
      if (!is.null(self$`gnomad_af_sas`)) {
        VariantAnnotationsObject[["gnomad_af_sas"]] <-
          self$`gnomad_af_sas`
      }
      if (!is.null(self$`gnomad_af_sas_male`)) {
        VariantAnnotationsObject[["gnomad_af_sas_male"]] <-
          self$`gnomad_af_sas_male`
      }
      if (!is.null(self$`gnomad_af_sas_female`)) {
        VariantAnnotationsObject[["gnomad_af_sas_female"]] <-
          self$`gnomad_af_sas_female`
      }
      if (!is.null(self$`gnomad_af_raw`)) {
        VariantAnnotationsObject[["gnomad_af_raw"]] <-
          self$`gnomad_af_raw`
      }
      if (!is.null(self$`GENCODE_category`)) {
        VariantAnnotationsObject[["GENCODE_category"]] <-
          self$`GENCODE_category`
      }
      if (!is.null(self$`funseq_description`)) {
        VariantAnnotationsObject[["funseq_description"]] <-
          self$`funseq_description`
      }
      return(VariantAnnotationsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantAnnotations
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantAnnotations
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bravo_af`)) {
        self$`bravo_af` <- this_object$`bravo_af`
      }
      if (!is.null(this_object$`gnomad_af_total`)) {
        self$`gnomad_af_total` <- this_object$`gnomad_af_total`
      }
      if (!is.null(this_object$`gnomad_af_afr`)) {
        self$`gnomad_af_afr` <- this_object$`gnomad_af_afr`
      }
      if (!is.null(this_object$`gnomad_af_afr_female`)) {
        self$`gnomad_af_afr_female` <- this_object$`gnomad_af_afr_female`
      }
      if (!is.null(this_object$`gnomad_af_afr_male`)) {
        self$`gnomad_af_afr_male` <- this_object$`gnomad_af_afr_male`
      }
      if (!is.null(this_object$`gnomad_af_ami`)) {
        self$`gnomad_af_ami` <- this_object$`gnomad_af_ami`
      }
      if (!is.null(this_object$`gnomad_af_ami_female`)) {
        self$`gnomad_af_ami_female` <- this_object$`gnomad_af_ami_female`
      }
      if (!is.null(this_object$`gnomad_af_ami_male`)) {
        self$`gnomad_af_ami_male` <- this_object$`gnomad_af_ami_male`
      }
      if (!is.null(this_object$`gnomad_af_amr`)) {
        self$`gnomad_af_amr` <- this_object$`gnomad_af_amr`
      }
      if (!is.null(this_object$`gnomad_af_amr_female`)) {
        self$`gnomad_af_amr_female` <- this_object$`gnomad_af_amr_female`
      }
      if (!is.null(this_object$`gnomad_af_amr_male`)) {
        self$`gnomad_af_amr_male` <- this_object$`gnomad_af_amr_male`
      }
      if (!is.null(this_object$`gnomad_af_asj`)) {
        self$`gnomad_af_asj` <- this_object$`gnomad_af_asj`
      }
      if (!is.null(this_object$`gnomad_af_asj_female`)) {
        self$`gnomad_af_asj_female` <- this_object$`gnomad_af_asj_female`
      }
      if (!is.null(this_object$`gnomad_af_asj_male`)) {
        self$`gnomad_af_asj_male` <- this_object$`gnomad_af_asj_male`
      }
      if (!is.null(this_object$`gnomad_af_eas`)) {
        self$`gnomad_af_eas` <- this_object$`gnomad_af_eas`
      }
      if (!is.null(this_object$`gnomad_af_eas_female`)) {
        self$`gnomad_af_eas_female` <- this_object$`gnomad_af_eas_female`
      }
      if (!is.null(this_object$`gnomad_af_eas_male`)) {
        self$`gnomad_af_eas_male` <- this_object$`gnomad_af_eas_male`
      }
      if (!is.null(this_object$`gnomad_af_female`)) {
        self$`gnomad_af_female` <- this_object$`gnomad_af_female`
      }
      if (!is.null(this_object$`gnomad_af_fin`)) {
        self$`gnomad_af_fin` <- this_object$`gnomad_af_fin`
      }
      if (!is.null(this_object$`gnomad_af_fin_female`)) {
        self$`gnomad_af_fin_female` <- this_object$`gnomad_af_fin_female`
      }
      if (!is.null(this_object$`gnomad_af_fin_male`)) {
        self$`gnomad_af_fin_male` <- this_object$`gnomad_af_fin_male`
      }
      if (!is.null(this_object$`gnomad_af_male`)) {
        self$`gnomad_af_male` <- this_object$`gnomad_af_male`
      }
      if (!is.null(this_object$`gnomad_af_nfe`)) {
        self$`gnomad_af_nfe` <- this_object$`gnomad_af_nfe`
      }
      if (!is.null(this_object$`gnomad_af_nfe_female`)) {
        self$`gnomad_af_nfe_female` <- this_object$`gnomad_af_nfe_female`
      }
      if (!is.null(this_object$`gnomad_af_nfe_male`)) {
        self$`gnomad_af_nfe_male` <- this_object$`gnomad_af_nfe_male`
      }
      if (!is.null(this_object$`gnomad_af_oth`)) {
        self$`gnomad_af_oth` <- this_object$`gnomad_af_oth`
      }
      if (!is.null(this_object$`gnomad_af_oth_female`)) {
        self$`gnomad_af_oth_female` <- this_object$`gnomad_af_oth_female`
      }
      if (!is.null(this_object$`gnomad_af_oth_male`)) {
        self$`gnomad_af_oth_male` <- this_object$`gnomad_af_oth_male`
      }
      if (!is.null(this_object$`gnomad_af_sas`)) {
        self$`gnomad_af_sas` <- this_object$`gnomad_af_sas`
      }
      if (!is.null(this_object$`gnomad_af_sas_male`)) {
        self$`gnomad_af_sas_male` <- this_object$`gnomad_af_sas_male`
      }
      if (!is.null(this_object$`gnomad_af_sas_female`)) {
        self$`gnomad_af_sas_female` <- this_object$`gnomad_af_sas_female`
      }
      if (!is.null(this_object$`gnomad_af_raw`)) {
        self$`gnomad_af_raw` <- this_object$`gnomad_af_raw`
      }
      if (!is.null(this_object$`GENCODE_category`)) {
        self$`GENCODE_category` <- this_object$`GENCODE_category`
      }
      if (!is.null(this_object$`funseq_description`)) {
        self$`funseq_description` <- this_object$`funseq_description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VariantAnnotations in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantAnnotations
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantAnnotations
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bravo_af` <- this_object$`bravo_af`
      self$`gnomad_af_total` <- this_object$`gnomad_af_total`
      self$`gnomad_af_afr` <- this_object$`gnomad_af_afr`
      self$`gnomad_af_afr_female` <- this_object$`gnomad_af_afr_female`
      self$`gnomad_af_afr_male` <- this_object$`gnomad_af_afr_male`
      self$`gnomad_af_ami` <- this_object$`gnomad_af_ami`
      self$`gnomad_af_ami_female` <- this_object$`gnomad_af_ami_female`
      self$`gnomad_af_ami_male` <- this_object$`gnomad_af_ami_male`
      self$`gnomad_af_amr` <- this_object$`gnomad_af_amr`
      self$`gnomad_af_amr_female` <- this_object$`gnomad_af_amr_female`
      self$`gnomad_af_amr_male` <- this_object$`gnomad_af_amr_male`
      self$`gnomad_af_asj` <- this_object$`gnomad_af_asj`
      self$`gnomad_af_asj_female` <- this_object$`gnomad_af_asj_female`
      self$`gnomad_af_asj_male` <- this_object$`gnomad_af_asj_male`
      self$`gnomad_af_eas` <- this_object$`gnomad_af_eas`
      self$`gnomad_af_eas_female` <- this_object$`gnomad_af_eas_female`
      self$`gnomad_af_eas_male` <- this_object$`gnomad_af_eas_male`
      self$`gnomad_af_female` <- this_object$`gnomad_af_female`
      self$`gnomad_af_fin` <- this_object$`gnomad_af_fin`
      self$`gnomad_af_fin_female` <- this_object$`gnomad_af_fin_female`
      self$`gnomad_af_fin_male` <- this_object$`gnomad_af_fin_male`
      self$`gnomad_af_male` <- this_object$`gnomad_af_male`
      self$`gnomad_af_nfe` <- this_object$`gnomad_af_nfe`
      self$`gnomad_af_nfe_female` <- this_object$`gnomad_af_nfe_female`
      self$`gnomad_af_nfe_male` <- this_object$`gnomad_af_nfe_male`
      self$`gnomad_af_oth` <- this_object$`gnomad_af_oth`
      self$`gnomad_af_oth_female` <- this_object$`gnomad_af_oth_female`
      self$`gnomad_af_oth_male` <- this_object$`gnomad_af_oth_male`
      self$`gnomad_af_sas` <- this_object$`gnomad_af_sas`
      self$`gnomad_af_sas_male` <- this_object$`gnomad_af_sas_male`
      self$`gnomad_af_sas_female` <- this_object$`gnomad_af_sas_female`
      self$`gnomad_af_raw` <- this_object$`gnomad_af_raw`
      self$`GENCODE_category` <- this_object$`GENCODE_category`
      self$`funseq_description` <- this_object$`funseq_description`
      self
    },

    #' @description
    #' Validate JSON input with respect to VariantAnnotations and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VariantAnnotations
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# VariantAnnotations$unlock()
#
## Below is an example to define the print function
# VariantAnnotations$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VariantAnnotations$lock()

