#' Create a new CodingVariants
#'
#' @description
#' CodingVariants Class
#'
#' @docType class
#' @title CodingVariants
#' @description CodingVariants Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field ref  character
#' @field alt  character
#' @field protein_name  character
#' @field protein_id  character
#' @field gene_name  character
#' @field transcript_id  character
#' @field aapos  numeric
#' @field hgvsp  character
#' @field hgvsc  character [optional]
#' @field refcodon  character
#' @field codonpos  numeric
#' @field SIFT_score  numeric
#' @field SIFT4G_score  numeric
#' @field Polyphen2_HDIV_score  numeric
#' @field Polyphen2_HVAR_score  numeric
#' @field VEST4_score  numeric
#' @field REVEL_score  numeric
#' @field MutPred_score  numeric
#' @field BayesDel_addAF_score  numeric
#' @field BayesDel_noAF_score  numeric
#' @field VARITY_R_score  numeric
#' @field VARITY_ER_score  numeric
#' @field VARITY_R_LOO_score  numeric
#' @field VARITY_ER_LOO_score  numeric
#' @field ESM1b_score  numeric
#' @field AlphaMissense_score  numeric
#' @field CADD_raw_score  numeric
#' @field source  character
#' @field source_url  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CodingVariants <- R6::R6Class(
  "CodingVariants",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `ref` = NULL,
    `alt` = NULL,
    `protein_name` = NULL,
    `protein_id` = NULL,
    `gene_name` = NULL,
    `transcript_id` = NULL,
    `aapos` = NULL,
    `hgvsp` = NULL,
    `hgvsc` = NULL,
    `refcodon` = NULL,
    `codonpos` = NULL,
    `SIFT_score` = NULL,
    `SIFT4G_score` = NULL,
    `Polyphen2_HDIV_score` = NULL,
    `Polyphen2_HVAR_score` = NULL,
    `VEST4_score` = NULL,
    `REVEL_score` = NULL,
    `MutPred_score` = NULL,
    `BayesDel_addAF_score` = NULL,
    `BayesDel_noAF_score` = NULL,
    `VARITY_R_score` = NULL,
    `VARITY_ER_score` = NULL,
    `VARITY_R_LOO_score` = NULL,
    `VARITY_ER_LOO_score` = NULL,
    `ESM1b_score` = NULL,
    `AlphaMissense_score` = NULL,
    `CADD_raw_score` = NULL,
    `source` = NULL,
    `source_url` = NULL,

    #' @description
    #' Initialize a new CodingVariants class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param ref ref
    #' @param alt alt
    #' @param protein_name protein_name
    #' @param protein_id protein_id
    #' @param gene_name gene_name
    #' @param transcript_id transcript_id
    #' @param aapos aapos
    #' @param hgvsp hgvsp
    #' @param refcodon refcodon
    #' @param codonpos codonpos
    #' @param SIFT_score SIFT_score
    #' @param SIFT4G_score SIFT4G_score
    #' @param Polyphen2_HDIV_score Polyphen2_HDIV_score
    #' @param Polyphen2_HVAR_score Polyphen2_HVAR_score
    #' @param VEST4_score VEST4_score
    #' @param REVEL_score REVEL_score
    #' @param MutPred_score MutPred_score
    #' @param BayesDel_addAF_score BayesDel_addAF_score
    #' @param BayesDel_noAF_score BayesDel_noAF_score
    #' @param VARITY_R_score VARITY_R_score
    #' @param VARITY_ER_score VARITY_ER_score
    #' @param VARITY_R_LOO_score VARITY_R_LOO_score
    #' @param VARITY_ER_LOO_score VARITY_ER_LOO_score
    #' @param ESM1b_score ESM1b_score
    #' @param AlphaMissense_score AlphaMissense_score
    #' @param CADD_raw_score CADD_raw_score
    #' @param source source
    #' @param source_url source_url
    #' @param hgvsc hgvsc
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `ref`, `alt`, `protein_name`, `protein_id`, `gene_name`, `transcript_id`, `aapos`, `hgvsp`, `refcodon`, `codonpos`, `SIFT_score`, `SIFT4G_score`, `Polyphen2_HDIV_score`, `Polyphen2_HVAR_score`, `VEST4_score`, `REVEL_score`, `MutPred_score`, `BayesDel_addAF_score`, `BayesDel_noAF_score`, `VARITY_R_score`, `VARITY_ER_score`, `VARITY_R_LOO_score`, `VARITY_ER_LOO_score`, `ESM1b_score`, `AlphaMissense_score`, `CADD_raw_score`, `source`, `source_url`, `hgvsc` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`ref`)) {
        if (!(is.character(`ref`) && length(`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", `ref`))
        }
        self$`ref` <- `ref`
      }
      if (!missing(`alt`)) {
        if (!(is.character(`alt`) && length(`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", `alt`))
        }
        self$`alt` <- `alt`
      }
      if (!missing(`protein_name`)) {
        if (!(is.character(`protein_name`) && length(`protein_name`) == 1)) {
          stop(paste("Error! Invalid data for `protein_name`. Must be a string:", `protein_name`))
        }
        self$`protein_name` <- `protein_name`
      }
      if (!missing(`protein_id`)) {
        if (!(is.character(`protein_id`) && length(`protein_id`) == 1)) {
          stop(paste("Error! Invalid data for `protein_id`. Must be a string:", `protein_id`))
        }
        self$`protein_id` <- `protein_id`
      }
      if (!missing(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!missing(`transcript_id`)) {
        if (!(is.character(`transcript_id`) && length(`transcript_id`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_id`. Must be a string:", `transcript_id`))
        }
        self$`transcript_id` <- `transcript_id`
      }
      if (!missing(`aapos`)) {
        self$`aapos` <- `aapos`
      }
      if (!missing(`hgvsp`)) {
        if (!(is.character(`hgvsp`) && length(`hgvsp`) == 1)) {
          stop(paste("Error! Invalid data for `hgvsp`. Must be a string:", `hgvsp`))
        }
        self$`hgvsp` <- `hgvsp`
      }
      if (!missing(`refcodon`)) {
        if (!(is.character(`refcodon`) && length(`refcodon`) == 1)) {
          stop(paste("Error! Invalid data for `refcodon`. Must be a string:", `refcodon`))
        }
        self$`refcodon` <- `refcodon`
      }
      if (!missing(`codonpos`)) {
        self$`codonpos` <- `codonpos`
      }
      if (!missing(`SIFT_score`)) {
        self$`SIFT_score` <- `SIFT_score`
      }
      if (!missing(`SIFT4G_score`)) {
        self$`SIFT4G_score` <- `SIFT4G_score`
      }
      if (!missing(`Polyphen2_HDIV_score`)) {
        self$`Polyphen2_HDIV_score` <- `Polyphen2_HDIV_score`
      }
      if (!missing(`Polyphen2_HVAR_score`)) {
        self$`Polyphen2_HVAR_score` <- `Polyphen2_HVAR_score`
      }
      if (!missing(`VEST4_score`)) {
        self$`VEST4_score` <- `VEST4_score`
      }
      if (!missing(`REVEL_score`)) {
        self$`REVEL_score` <- `REVEL_score`
      }
      if (!missing(`MutPred_score`)) {
        self$`MutPred_score` <- `MutPred_score`
      }
      if (!missing(`BayesDel_addAF_score`)) {
        self$`BayesDel_addAF_score` <- `BayesDel_addAF_score`
      }
      if (!missing(`BayesDel_noAF_score`)) {
        self$`BayesDel_noAF_score` <- `BayesDel_noAF_score`
      }
      if (!missing(`VARITY_R_score`)) {
        self$`VARITY_R_score` <- `VARITY_R_score`
      }
      if (!missing(`VARITY_ER_score`)) {
        self$`VARITY_ER_score` <- `VARITY_ER_score`
      }
      if (!missing(`VARITY_R_LOO_score`)) {
        self$`VARITY_R_LOO_score` <- `VARITY_R_LOO_score`
      }
      if (!missing(`VARITY_ER_LOO_score`)) {
        self$`VARITY_ER_LOO_score` <- `VARITY_ER_LOO_score`
      }
      if (!missing(`ESM1b_score`)) {
        self$`ESM1b_score` <- `ESM1b_score`
      }
      if (!missing(`AlphaMissense_score`)) {
        self$`AlphaMissense_score` <- `AlphaMissense_score`
      }
      if (!missing(`CADD_raw_score`)) {
        self$`CADD_raw_score` <- `CADD_raw_score`
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
      if (!is.null(`hgvsc`)) {
        if (!(is.character(`hgvsc`) && length(`hgvsc`) == 1)) {
          stop(paste("Error! Invalid data for `hgvsc`. Must be a string:", `hgvsc`))
        }
        self$`hgvsc` <- `hgvsc`
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
    #' @return CodingVariants as a base R list.
    #' @examples
    #' # convert array of CodingVariants (x) to a data frame
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
    #' Convert CodingVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CodingVariantsObject <- list()
      if (!is.null(self$`_id`)) {
        CodingVariantsObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        CodingVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`ref`)) {
        CodingVariantsObject[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        CodingVariantsObject[["alt"]] <-
          self$`alt`
      }
      if (!is.null(self$`protein_name`)) {
        CodingVariantsObject[["protein_name"]] <-
          self$`protein_name`
      }
      if (!is.null(self$`protein_id`)) {
        CodingVariantsObject[["protein_id"]] <-
          self$`protein_id`
      }
      if (!is.null(self$`gene_name`)) {
        CodingVariantsObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`transcript_id`)) {
        CodingVariantsObject[["transcript_id"]] <-
          self$`transcript_id`
      }
      if (!is.null(self$`aapos`)) {
        CodingVariantsObject[["aapos"]] <-
          self$`aapos`
      }
      if (!is.null(self$`hgvsp`)) {
        CodingVariantsObject[["hgvsp"]] <-
          self$`hgvsp`
      }
      if (!is.null(self$`hgvsc`)) {
        CodingVariantsObject[["hgvsc"]] <-
          self$`hgvsc`
      }
      if (!is.null(self$`refcodon`)) {
        CodingVariantsObject[["refcodon"]] <-
          self$`refcodon`
      }
      if (!is.null(self$`codonpos`)) {
        CodingVariantsObject[["codonpos"]] <-
          self$`codonpos`
      }
      if (!is.null(self$`SIFT_score`)) {
        CodingVariantsObject[["SIFT_score"]] <-
          self$`SIFT_score`
      }
      if (!is.null(self$`SIFT4G_score`)) {
        CodingVariantsObject[["SIFT4G_score"]] <-
          self$`SIFT4G_score`
      }
      if (!is.null(self$`Polyphen2_HDIV_score`)) {
        CodingVariantsObject[["Polyphen2_HDIV_score"]] <-
          self$`Polyphen2_HDIV_score`
      }
      if (!is.null(self$`Polyphen2_HVAR_score`)) {
        CodingVariantsObject[["Polyphen2_HVAR_score"]] <-
          self$`Polyphen2_HVAR_score`
      }
      if (!is.null(self$`VEST4_score`)) {
        CodingVariantsObject[["VEST4_score"]] <-
          self$`VEST4_score`
      }
      if (!is.null(self$`REVEL_score`)) {
        CodingVariantsObject[["REVEL_score"]] <-
          self$`REVEL_score`
      }
      if (!is.null(self$`MutPred_score`)) {
        CodingVariantsObject[["MutPred_score"]] <-
          self$`MutPred_score`
      }
      if (!is.null(self$`BayesDel_addAF_score`)) {
        CodingVariantsObject[["BayesDel_addAF_score"]] <-
          self$`BayesDel_addAF_score`
      }
      if (!is.null(self$`BayesDel_noAF_score`)) {
        CodingVariantsObject[["BayesDel_noAF_score"]] <-
          self$`BayesDel_noAF_score`
      }
      if (!is.null(self$`VARITY_R_score`)) {
        CodingVariantsObject[["VARITY_R_score"]] <-
          self$`VARITY_R_score`
      }
      if (!is.null(self$`VARITY_ER_score`)) {
        CodingVariantsObject[["VARITY_ER_score"]] <-
          self$`VARITY_ER_score`
      }
      if (!is.null(self$`VARITY_R_LOO_score`)) {
        CodingVariantsObject[["VARITY_R_LOO_score"]] <-
          self$`VARITY_R_LOO_score`
      }
      if (!is.null(self$`VARITY_ER_LOO_score`)) {
        CodingVariantsObject[["VARITY_ER_LOO_score"]] <-
          self$`VARITY_ER_LOO_score`
      }
      if (!is.null(self$`ESM1b_score`)) {
        CodingVariantsObject[["ESM1b_score"]] <-
          self$`ESM1b_score`
      }
      if (!is.null(self$`AlphaMissense_score`)) {
        CodingVariantsObject[["AlphaMissense_score"]] <-
          self$`AlphaMissense_score`
      }
      if (!is.null(self$`CADD_raw_score`)) {
        CodingVariantsObject[["CADD_raw_score"]] <-
          self$`CADD_raw_score`
      }
      if (!is.null(self$`source`)) {
        CodingVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        CodingVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      return(CodingVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`ref`)) {
        self$`ref` <- this_object$`ref`
      }
      if (!is.null(this_object$`alt`)) {
        self$`alt` <- this_object$`alt`
      }
      if (!is.null(this_object$`protein_name`)) {
        self$`protein_name` <- this_object$`protein_name`
      }
      if (!is.null(this_object$`protein_id`)) {
        self$`protein_id` <- this_object$`protein_id`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`transcript_id`)) {
        self$`transcript_id` <- this_object$`transcript_id`
      }
      if (!is.null(this_object$`aapos`)) {
        self$`aapos` <- this_object$`aapos`
      }
      if (!is.null(this_object$`hgvsp`)) {
        self$`hgvsp` <- this_object$`hgvsp`
      }
      if (!is.null(this_object$`hgvsc`)) {
        self$`hgvsc` <- this_object$`hgvsc`
      }
      if (!is.null(this_object$`refcodon`)) {
        self$`refcodon` <- this_object$`refcodon`
      }
      if (!is.null(this_object$`codonpos`)) {
        self$`codonpos` <- this_object$`codonpos`
      }
      if (!is.null(this_object$`SIFT_score`)) {
        self$`SIFT_score` <- this_object$`SIFT_score`
      }
      if (!is.null(this_object$`SIFT4G_score`)) {
        self$`SIFT4G_score` <- this_object$`SIFT4G_score`
      }
      if (!is.null(this_object$`Polyphen2_HDIV_score`)) {
        self$`Polyphen2_HDIV_score` <- this_object$`Polyphen2_HDIV_score`
      }
      if (!is.null(this_object$`Polyphen2_HVAR_score`)) {
        self$`Polyphen2_HVAR_score` <- this_object$`Polyphen2_HVAR_score`
      }
      if (!is.null(this_object$`VEST4_score`)) {
        self$`VEST4_score` <- this_object$`VEST4_score`
      }
      if (!is.null(this_object$`REVEL_score`)) {
        self$`REVEL_score` <- this_object$`REVEL_score`
      }
      if (!is.null(this_object$`MutPred_score`)) {
        self$`MutPred_score` <- this_object$`MutPred_score`
      }
      if (!is.null(this_object$`BayesDel_addAF_score`)) {
        self$`BayesDel_addAF_score` <- this_object$`BayesDel_addAF_score`
      }
      if (!is.null(this_object$`BayesDel_noAF_score`)) {
        self$`BayesDel_noAF_score` <- this_object$`BayesDel_noAF_score`
      }
      if (!is.null(this_object$`VARITY_R_score`)) {
        self$`VARITY_R_score` <- this_object$`VARITY_R_score`
      }
      if (!is.null(this_object$`VARITY_ER_score`)) {
        self$`VARITY_ER_score` <- this_object$`VARITY_ER_score`
      }
      if (!is.null(this_object$`VARITY_R_LOO_score`)) {
        self$`VARITY_R_LOO_score` <- this_object$`VARITY_R_LOO_score`
      }
      if (!is.null(this_object$`VARITY_ER_LOO_score`)) {
        self$`VARITY_ER_LOO_score` <- this_object$`VARITY_ER_LOO_score`
      }
      if (!is.null(this_object$`ESM1b_score`)) {
        self$`ESM1b_score` <- this_object$`ESM1b_score`
      }
      if (!is.null(this_object$`AlphaMissense_score`)) {
        self$`AlphaMissense_score` <- this_object$`AlphaMissense_score`
      }
      if (!is.null(this_object$`CADD_raw_score`)) {
        self$`CADD_raw_score` <- this_object$`CADD_raw_score`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CodingVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CodingVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of CodingVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`ref` <- this_object$`ref`
      self$`alt` <- this_object$`alt`
      self$`protein_name` <- this_object$`protein_name`
      self$`protein_id` <- this_object$`protein_id`
      self$`gene_name` <- this_object$`gene_name`
      self$`transcript_id` <- this_object$`transcript_id`
      self$`aapos` <- this_object$`aapos`
      self$`hgvsp` <- this_object$`hgvsp`
      self$`hgvsc` <- this_object$`hgvsc`
      self$`refcodon` <- this_object$`refcodon`
      self$`codonpos` <- this_object$`codonpos`
      self$`SIFT_score` <- this_object$`SIFT_score`
      self$`SIFT4G_score` <- this_object$`SIFT4G_score`
      self$`Polyphen2_HDIV_score` <- this_object$`Polyphen2_HDIV_score`
      self$`Polyphen2_HVAR_score` <- this_object$`Polyphen2_HVAR_score`
      self$`VEST4_score` <- this_object$`VEST4_score`
      self$`REVEL_score` <- this_object$`REVEL_score`
      self$`MutPred_score` <- this_object$`MutPred_score`
      self$`BayesDel_addAF_score` <- this_object$`BayesDel_addAF_score`
      self$`BayesDel_noAF_score` <- this_object$`BayesDel_noAF_score`
      self$`VARITY_R_score` <- this_object$`VARITY_R_score`
      self$`VARITY_ER_score` <- this_object$`VARITY_ER_score`
      self$`VARITY_R_LOO_score` <- this_object$`VARITY_R_LOO_score`
      self$`VARITY_ER_LOO_score` <- this_object$`VARITY_ER_LOO_score`
      self$`ESM1b_score` <- this_object$`ESM1b_score`
      self$`AlphaMissense_score` <- this_object$`AlphaMissense_score`
      self$`CADD_raw_score` <- this_object$`CADD_raw_score`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to CodingVariants and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `name` is missing."))
      }
      # check the required field `ref`
      if (!is.null(input_json$`ref`)) {
        if (!(is.character(input_json$`ref`) && length(input_json$`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", input_json$`ref`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `ref` is missing."))
      }
      # check the required field `alt`
      if (!is.null(input_json$`alt`)) {
        if (!(is.character(input_json$`alt`) && length(input_json$`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", input_json$`alt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `alt` is missing."))
      }
      # check the required field `protein_name`
      if (!is.null(input_json$`protein_name`)) {
        if (!(is.character(input_json$`protein_name`) && length(input_json$`protein_name`) == 1)) {
          stop(paste("Error! Invalid data for `protein_name`. Must be a string:", input_json$`protein_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `protein_name` is missing."))
      }
      # check the required field `protein_id`
      if (!is.null(input_json$`protein_id`)) {
        if (!(is.character(input_json$`protein_id`) && length(input_json$`protein_id`) == 1)) {
          stop(paste("Error! Invalid data for `protein_id`. Must be a string:", input_json$`protein_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `protein_id` is missing."))
      }
      # check the required field `gene_name`
      if (!is.null(input_json$`gene_name`)) {
        if (!(is.character(input_json$`gene_name`) && length(input_json$`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", input_json$`gene_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `gene_name` is missing."))
      }
      # check the required field `transcript_id`
      if (!is.null(input_json$`transcript_id`)) {
        if (!(is.character(input_json$`transcript_id`) && length(input_json$`transcript_id`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_id`. Must be a string:", input_json$`transcript_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `transcript_id` is missing."))
      }
      # check the required field `aapos`
      if (!is.null(input_json$`aapos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `aapos` is missing."))
      }
      # check the required field `hgvsp`
      if (!is.null(input_json$`hgvsp`)) {
        if (!(is.character(input_json$`hgvsp`) && length(input_json$`hgvsp`) == 1)) {
          stop(paste("Error! Invalid data for `hgvsp`. Must be a string:", input_json$`hgvsp`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `hgvsp` is missing."))
      }
      # check the required field `refcodon`
      if (!is.null(input_json$`refcodon`)) {
        if (!(is.character(input_json$`refcodon`) && length(input_json$`refcodon`) == 1)) {
          stop(paste("Error! Invalid data for `refcodon`. Must be a string:", input_json$`refcodon`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `refcodon` is missing."))
      }
      # check the required field `codonpos`
      if (!is.null(input_json$`codonpos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `codonpos` is missing."))
      }
      # check the required field `SIFT_score`
      if (!is.null(input_json$`SIFT_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `SIFT_score` is missing."))
      }
      # check the required field `SIFT4G_score`
      if (!is.null(input_json$`SIFT4G_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `SIFT4G_score` is missing."))
      }
      # check the required field `Polyphen2_HDIV_score`
      if (!is.null(input_json$`Polyphen2_HDIV_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `Polyphen2_HDIV_score` is missing."))
      }
      # check the required field `Polyphen2_HVAR_score`
      if (!is.null(input_json$`Polyphen2_HVAR_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `Polyphen2_HVAR_score` is missing."))
      }
      # check the required field `VEST4_score`
      if (!is.null(input_json$`VEST4_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `VEST4_score` is missing."))
      }
      # check the required field `REVEL_score`
      if (!is.null(input_json$`REVEL_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `REVEL_score` is missing."))
      }
      # check the required field `MutPred_score`
      if (!is.null(input_json$`MutPred_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `MutPred_score` is missing."))
      }
      # check the required field `BayesDel_addAF_score`
      if (!is.null(input_json$`BayesDel_addAF_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `BayesDel_addAF_score` is missing."))
      }
      # check the required field `BayesDel_noAF_score`
      if (!is.null(input_json$`BayesDel_noAF_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `BayesDel_noAF_score` is missing."))
      }
      # check the required field `VARITY_R_score`
      if (!is.null(input_json$`VARITY_R_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `VARITY_R_score` is missing."))
      }
      # check the required field `VARITY_ER_score`
      if (!is.null(input_json$`VARITY_ER_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `VARITY_ER_score` is missing."))
      }
      # check the required field `VARITY_R_LOO_score`
      if (!is.null(input_json$`VARITY_R_LOO_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `VARITY_R_LOO_score` is missing."))
      }
      # check the required field `VARITY_ER_LOO_score`
      if (!is.null(input_json$`VARITY_ER_LOO_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `VARITY_ER_LOO_score` is missing."))
      }
      # check the required field `ESM1b_score`
      if (!is.null(input_json$`ESM1b_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `ESM1b_score` is missing."))
      }
      # check the required field `AlphaMissense_score`
      if (!is.null(input_json$`AlphaMissense_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `AlphaMissense_score` is missing."))
      }
      # check the required field `CADD_raw_score`
      if (!is.null(input_json$`CADD_raw_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `CADD_raw_score` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CodingVariants: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CodingVariants
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

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
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

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
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
# CodingVariants$unlock()
#
## Below is an example to define the print function
# CodingVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CodingVariants$lock()

