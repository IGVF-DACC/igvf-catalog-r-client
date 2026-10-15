#' Create a new PhenotypesFromVariants
#'
#' @description
#' PhenotypesFromVariants Class
#'
#' @docType class
#' @title PhenotypesFromVariants
#' @description PhenotypesFromVariants Class
#' @format An \code{R6Class} generator object
#' @field rsid  list(character) [optional]
#' @field phenotype_id  character
#' @field phenotype_term  character
#' @field study  \link{PhenotypesFromVariantsStudy} [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field p_value  numeric
#' @field beta  numeric
#' @field beta_ci_lower  numeric
#' @field beta_ci_upper  numeric
#' @field oddsr_ci_lower  numeric
#' @field oddsr_ci_upper  numeric
#' @field lead_chrom  character
#' @field lead_pos  numeric
#' @field lead_ref  character
#' @field lead_alt  character
#' @field direction  character
#' @field source  character
#' @field source_url  character [optional]
#' @field class  character [optional]
#' @field method  character [optional]
#' @field label  character [optional]
#' @field version  character [optional]
#' @field name  character
#' @field variant  \link{PhenotypesFromVariantsVariant}
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhenotypesFromVariants <- R6::R6Class(
  "PhenotypesFromVariants",
  public = list(
    `rsid` = NULL,
    `phenotype_id` = NULL,
    `phenotype_term` = NULL,
    `study` = NULL,
    `neg_log10_pvalue` = NULL,
    `p_value` = NULL,
    `beta` = NULL,
    `beta_ci_lower` = NULL,
    `beta_ci_upper` = NULL,
    `oddsr_ci_lower` = NULL,
    `oddsr_ci_upper` = NULL,
    `lead_chrom` = NULL,
    `lead_pos` = NULL,
    `lead_ref` = NULL,
    `lead_alt` = NULL,
    `direction` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `version` = NULL,
    `name` = NULL,
    `variant` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new PhenotypesFromVariants class.
    #'
    #' @param phenotype_id phenotype_id
    #' @param phenotype_term phenotype_term
    #' @param p_value p_value
    #' @param beta beta
    #' @param beta_ci_lower beta_ci_lower
    #' @param beta_ci_upper beta_ci_upper
    #' @param oddsr_ci_lower oddsr_ci_lower
    #' @param oddsr_ci_upper oddsr_ci_upper
    #' @param lead_chrom lead_chrom
    #' @param lead_pos lead_pos
    #' @param lead_ref lead_ref
    #' @param lead_alt lead_alt
    #' @param direction direction
    #' @param source source
    #' @param name name
    #' @param variant variant
    #' @param rsid rsid
    #' @param study study
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param source_url source_url
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param version version. Default to "October 2022 (22.10)".
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`phenotype_id`, `phenotype_term`, `p_value`, `beta`, `beta_ci_lower`, `beta_ci_upper`, `oddsr_ci_lower`, `oddsr_ci_upper`, `lead_chrom`, `lead_pos`, `lead_ref`, `lead_alt`, `direction`, `source`, `name`, `variant`, `rsid` = NULL, `study` = NULL, `neg_log10_pvalue` = NULL, `source_url` = NULL, `class` = NULL, `method` = NULL, `label` = NULL, `version` = "October 2022 (22.10)", `files_filesets` = NULL, ...) {
      if (!missing(`phenotype_id`)) {
        if (!(is.character(`phenotype_id`) && length(`phenotype_id`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_id`. Must be a string:", `phenotype_id`))
        }
        self$`phenotype_id` <- `phenotype_id`
      }
      if (!missing(`phenotype_term`)) {
        if (!(is.character(`phenotype_term`) && length(`phenotype_term`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_term`. Must be a string:", `phenotype_term`))
        }
        self$`phenotype_term` <- `phenotype_term`
      }
      if (!missing(`p_value`)) {
        self$`p_value` <- `p_value`
      }
      if (!missing(`beta`)) {
        self$`beta` <- `beta`
      }
      if (!missing(`beta_ci_lower`)) {
        self$`beta_ci_lower` <- `beta_ci_lower`
      }
      if (!missing(`beta_ci_upper`)) {
        self$`beta_ci_upper` <- `beta_ci_upper`
      }
      if (!missing(`oddsr_ci_lower`)) {
        self$`oddsr_ci_lower` <- `oddsr_ci_lower`
      }
      if (!missing(`oddsr_ci_upper`)) {
        self$`oddsr_ci_upper` <- `oddsr_ci_upper`
      }
      if (!missing(`lead_chrom`)) {
        if (!(is.character(`lead_chrom`) && length(`lead_chrom`) == 1)) {
          stop(paste("Error! Invalid data for `lead_chrom`. Must be a string:", `lead_chrom`))
        }
        self$`lead_chrom` <- `lead_chrom`
      }
      if (!missing(`lead_pos`)) {
        self$`lead_pos` <- `lead_pos`
      }
      if (!missing(`lead_ref`)) {
        if (!(is.character(`lead_ref`) && length(`lead_ref`) == 1)) {
          stop(paste("Error! Invalid data for `lead_ref`. Must be a string:", `lead_ref`))
        }
        self$`lead_ref` <- `lead_ref`
      }
      if (!missing(`lead_alt`)) {
        if (!(is.character(`lead_alt`) && length(`lead_alt`) == 1)) {
          stop(paste("Error! Invalid data for `lead_alt`. Must be a string:", `lead_alt`))
        }
        self$`lead_alt` <- `lead_alt`
      }
      if (!missing(`direction`)) {
        if (!(is.character(`direction`) && length(`direction`) == 1)) {
          stop(paste("Error! Invalid data for `direction`. Must be a string:", `direction`))
        }
        self$`direction` <- `direction`
      }
      if (!missing(`source`)) {
        if (!(`source` %in% c("OpenTargets"))) {
          stop(paste("Error! \"", `source`, "\" cannot be assigned to `source`. Must be \"OpenTargets\".", sep = ""))
        }
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
      if (!missing(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
      }
      if (!is.null(`rsid`)) {
        stopifnot(is.vector(`rsid`), length(`rsid`) != 0)
        sapply(`rsid`, function(x) stopifnot(is.character(x)))
        self$`rsid` <- `rsid`
      }
      if (!is.null(`study`)) {
        stopifnot(R6::is.R6(`study`))
        self$`study` <- `study`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return PhenotypesFromVariants as a base R list.
    #' @examples
    #' # convert array of PhenotypesFromVariants (x) to a data frame
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
    #' Convert PhenotypesFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PhenotypesFromVariantsObject <- list()
      if (!is.null(self$`rsid`)) {
        PhenotypesFromVariantsObject[["rsid"]] <-
          self$`rsid`
      }
      if (!is.null(self$`phenotype_id`)) {
        PhenotypesFromVariantsObject[["phenotype_id"]] <-
          self$`phenotype_id`
      }
      if (!is.null(self$`phenotype_term`)) {
        PhenotypesFromVariantsObject[["phenotype_term"]] <-
          self$`phenotype_term`
      }
      if (!is.null(self$`study`)) {
        PhenotypesFromVariantsObject[["study"]] <-
          self$`study`$toSimpleType()
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        PhenotypesFromVariantsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`p_value`)) {
        PhenotypesFromVariantsObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`beta`)) {
        PhenotypesFromVariantsObject[["beta"]] <-
          self$`beta`
      }
      if (!is.null(self$`beta_ci_lower`)) {
        PhenotypesFromVariantsObject[["beta_ci_lower"]] <-
          self$`beta_ci_lower`
      }
      if (!is.null(self$`beta_ci_upper`)) {
        PhenotypesFromVariantsObject[["beta_ci_upper"]] <-
          self$`beta_ci_upper`
      }
      if (!is.null(self$`oddsr_ci_lower`)) {
        PhenotypesFromVariantsObject[["oddsr_ci_lower"]] <-
          self$`oddsr_ci_lower`
      }
      if (!is.null(self$`oddsr_ci_upper`)) {
        PhenotypesFromVariantsObject[["oddsr_ci_upper"]] <-
          self$`oddsr_ci_upper`
      }
      if (!is.null(self$`lead_chrom`)) {
        PhenotypesFromVariantsObject[["lead_chrom"]] <-
          self$`lead_chrom`
      }
      if (!is.null(self$`lead_pos`)) {
        PhenotypesFromVariantsObject[["lead_pos"]] <-
          self$`lead_pos`
      }
      if (!is.null(self$`lead_ref`)) {
        PhenotypesFromVariantsObject[["lead_ref"]] <-
          self$`lead_ref`
      }
      if (!is.null(self$`lead_alt`)) {
        PhenotypesFromVariantsObject[["lead_alt"]] <-
          self$`lead_alt`
      }
      if (!is.null(self$`direction`)) {
        PhenotypesFromVariantsObject[["direction"]] <-
          self$`direction`
      }
      if (!is.null(self$`source`)) {
        PhenotypesFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        PhenotypesFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`class`)) {
        PhenotypesFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        PhenotypesFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        PhenotypesFromVariantsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`version`)) {
        PhenotypesFromVariantsObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`name`)) {
        PhenotypesFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`variant`)) {
        PhenotypesFromVariantsObject[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      if (!is.null(self$`files_filesets`)) {
        PhenotypesFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(PhenotypesFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhenotypesFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhenotypesFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rsid`)) {
        self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`phenotype_id`)) {
        self$`phenotype_id` <- this_object$`phenotype_id`
      }
      if (!is.null(this_object$`phenotype_term`)) {
        self$`phenotype_term` <- this_object$`phenotype_term`
      }
      if (!is.null(this_object$`study`)) {
        `study_object` <- PhenotypesFromVariantsStudy$new()
        `study_object`$fromJSON(jsonlite::toJSON(this_object$`study`, auto_unbox = TRUE, digits = NA))
        self$`study` <- `study_object`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`p_value`)) {
        self$`p_value` <- this_object$`p_value`
      }
      if (!is.null(this_object$`beta`)) {
        self$`beta` <- this_object$`beta`
      }
      if (!is.null(this_object$`beta_ci_lower`)) {
        self$`beta_ci_lower` <- this_object$`beta_ci_lower`
      }
      if (!is.null(this_object$`beta_ci_upper`)) {
        self$`beta_ci_upper` <- this_object$`beta_ci_upper`
      }
      if (!is.null(this_object$`oddsr_ci_lower`)) {
        self$`oddsr_ci_lower` <- this_object$`oddsr_ci_lower`
      }
      if (!is.null(this_object$`oddsr_ci_upper`)) {
        self$`oddsr_ci_upper` <- this_object$`oddsr_ci_upper`
      }
      if (!is.null(this_object$`lead_chrom`)) {
        self$`lead_chrom` <- this_object$`lead_chrom`
      }
      if (!is.null(this_object$`lead_pos`)) {
        self$`lead_pos` <- this_object$`lead_pos`
      }
      if (!is.null(this_object$`lead_ref`)) {
        self$`lead_ref` <- this_object$`lead_ref`
      }
      if (!is.null(this_object$`lead_alt`)) {
        self$`lead_alt` <- this_object$`lead_alt`
      }
      if (!is.null(this_object$`direction`)) {
        self$`direction` <- this_object$`direction`
      }
      if (!is.null(this_object$`source`)) {
        if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("OpenTargets"))) {
          stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"OpenTargets\".", sep = ""))
        }
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- PhenotypesFromVariantsVariant$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
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
    #' @return PhenotypesFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PhenotypesFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhenotypesFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`phenotype_id` <- this_object$`phenotype_id`
      self$`phenotype_term` <- this_object$`phenotype_term`
      self$`study` <- PhenotypesFromVariantsStudy$new()$fromJSON(jsonlite::toJSON(this_object$`study`, auto_unbox = TRUE, digits = NA))
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`p_value` <- this_object$`p_value`
      self$`beta` <- this_object$`beta`
      self$`beta_ci_lower` <- this_object$`beta_ci_lower`
      self$`beta_ci_upper` <- this_object$`beta_ci_upper`
      self$`oddsr_ci_lower` <- this_object$`oddsr_ci_lower`
      self$`oddsr_ci_upper` <- this_object$`oddsr_ci_upper`
      self$`lead_chrom` <- this_object$`lead_chrom`
      self$`lead_pos` <- this_object$`lead_pos`
      self$`lead_ref` <- this_object$`lead_ref`
      self$`lead_alt` <- this_object$`lead_alt`
      self$`direction` <- this_object$`direction`
      if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("OpenTargets"))) {
        stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"OpenTargets\".", sep = ""))
      }
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`version` <- this_object$`version`
      self$`name` <- this_object$`name`
      self$`variant` <- PhenotypesFromVariantsVariant$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to PhenotypesFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `phenotype_id`
      if (!is.null(input_json$`phenotype_id`)) {
        if (!(is.character(input_json$`phenotype_id`) && length(input_json$`phenotype_id`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_id`. Must be a string:", input_json$`phenotype_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `phenotype_id` is missing."))
      }
      # check the required field `phenotype_term`
      if (!is.null(input_json$`phenotype_term`)) {
        if (!(is.character(input_json$`phenotype_term`) && length(input_json$`phenotype_term`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_term`. Must be a string:", input_json$`phenotype_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `phenotype_term` is missing."))
      }
      # check the required field `p_value`
      if (!is.null(input_json$`p_value`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `p_value` is missing."))
      }
      # check the required field `beta`
      if (!is.null(input_json$`beta`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `beta` is missing."))
      }
      # check the required field `beta_ci_lower`
      if (!is.null(input_json$`beta_ci_lower`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `beta_ci_lower` is missing."))
      }
      # check the required field `beta_ci_upper`
      if (!is.null(input_json$`beta_ci_upper`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `beta_ci_upper` is missing."))
      }
      # check the required field `oddsr_ci_lower`
      if (!is.null(input_json$`oddsr_ci_lower`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `oddsr_ci_lower` is missing."))
      }
      # check the required field `oddsr_ci_upper`
      if (!is.null(input_json$`oddsr_ci_upper`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `oddsr_ci_upper` is missing."))
      }
      # check the required field `lead_chrom`
      if (!is.null(input_json$`lead_chrom`)) {
        if (!(is.character(input_json$`lead_chrom`) && length(input_json$`lead_chrom`) == 1)) {
          stop(paste("Error! Invalid data for `lead_chrom`. Must be a string:", input_json$`lead_chrom`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `lead_chrom` is missing."))
      }
      # check the required field `lead_pos`
      if (!is.null(input_json$`lead_pos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `lead_pos` is missing."))
      }
      # check the required field `lead_ref`
      if (!is.null(input_json$`lead_ref`)) {
        if (!(is.character(input_json$`lead_ref`) && length(input_json$`lead_ref`) == 1)) {
          stop(paste("Error! Invalid data for `lead_ref`. Must be a string:", input_json$`lead_ref`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `lead_ref` is missing."))
      }
      # check the required field `lead_alt`
      if (!is.null(input_json$`lead_alt`)) {
        if (!(is.character(input_json$`lead_alt`) && length(input_json$`lead_alt`) == 1)) {
          stop(paste("Error! Invalid data for `lead_alt`. Must be a string:", input_json$`lead_alt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `lead_alt` is missing."))
      }
      # check the required field `direction`
      if (!is.null(input_json$`direction`)) {
        if (!(is.character(input_json$`direction`) && length(input_json$`direction`) == 1)) {
          stop(paste("Error! Invalid data for `direction`. Must be a string:", input_json$`direction`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `direction` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `source` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `name` is missing."))
      }
      # check the required field `variant`
      if (!is.null(input_json$`variant`)) {
        stopifnot(R6::is.R6(input_json$`variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhenotypesFromVariants: the required field `variant` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PhenotypesFromVariants
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# PhenotypesFromVariants$unlock()
#
## Below is an example to define the print function
# PhenotypesFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PhenotypesFromVariants$lock()

