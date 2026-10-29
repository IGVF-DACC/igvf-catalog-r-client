#' Create a new GenomicElementsFromPhenotypes
#'
#' @description
#' GenomicElementsFromPhenotypes Class
#'
#' @docType class
#' @title GenomicElementsFromPhenotypes
#' @description GenomicElementsFromPhenotypes Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field label  character
#' @field method  character
#' @field class  character
#' @field source  character
#' @field source_url  character
#' @field biological_context  character
#' @field biosample_term  character
#' @field files_filesets  character
#' @field perturbation  character [optional]
#' @field z_score  numeric [optional]
#' @field log2FC  numeric [optional]
#' @field p_value  numeric [optional]
#' @field p_value_adj  numeric [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field neg_log10_pvalue_adj  numeric [optional]
#' @field significant  character [optional]
#' @field num_guides  numeric [optional]
#' @field num_guides_hit  numeric [optional]
#' @field num_guides_nonhit  numeric [optional]
#' @field fraction_guides_hit  numeric [optional]
#' @field phenotype_name  character [optional]
#' @field genomic_element  \link{GenesFromGenomicElementsGenomicElement}
#' @field phenotype  \link{GenomicElementsFromPhenotypesPhenotype}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElementsFromPhenotypes <- R6::R6Class(
  "GenomicElementsFromPhenotypes",
  public = list(
    `name` = NULL,
    `label` = NULL,
    `method` = NULL,
    `class` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `files_filesets` = NULL,
    `perturbation` = NULL,
    `z_score` = NULL,
    `log2FC` = NULL,
    `p_value` = NULL,
    `p_value_adj` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `significant` = NULL,
    `num_guides` = NULL,
    `num_guides_hit` = NULL,
    `num_guides_nonhit` = NULL,
    `fraction_guides_hit` = NULL,
    `phenotype_name` = NULL,
    `genomic_element` = NULL,
    `phenotype` = NULL,

    #' @description
    #' Initialize a new GenomicElementsFromPhenotypes class.
    #'
    #' @param name name
    #' @param label label
    #' @param method method
    #' @param class class
    #' @param source source
    #' @param source_url source_url
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param files_filesets files_filesets
    #' @param genomic_element genomic_element
    #' @param phenotype phenotype
    #' @param perturbation perturbation
    #' @param z_score z_score
    #' @param log2FC log2FC
    #' @param p_value p_value
    #' @param p_value_adj p_value_adj
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param significant significant
    #' @param num_guides num_guides
    #' @param num_guides_hit num_guides_hit
    #' @param num_guides_nonhit num_guides_nonhit
    #' @param fraction_guides_hit fraction_guides_hit
    #' @param phenotype_name phenotype_name
    #' @param ... Other optional arguments.
    initialize = function(`name`, `label`, `method`, `class`, `source`, `source_url`, `biological_context`, `biosample_term`, `files_filesets`, `genomic_element`, `phenotype`, `perturbation` = NULL, `z_score` = NULL, `log2FC` = NULL, `p_value` = NULL, `p_value_adj` = NULL, `neg_log10_pvalue` = NULL, `neg_log10_pvalue_adj` = NULL, `significant` = NULL, `num_guides` = NULL, `num_guides_hit` = NULL, `num_guides_nonhit` = NULL, `fraction_guides_hit` = NULL, `phenotype_name` = NULL, ...) {
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
      if (!missing(`phenotype`)) {
        stopifnot(R6::is.R6(`phenotype`))
        self$`phenotype` <- `phenotype`
      }
      if (!is.null(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
      }
      if (!is.null(`z_score`)) {
        self$`z_score` <- `z_score`
      }
      if (!is.null(`log2FC`)) {
        self$`log2FC` <- `log2FC`
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
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
      }
      if (!is.null(`num_guides`)) {
        self$`num_guides` <- `num_guides`
      }
      if (!is.null(`num_guides_hit`)) {
        self$`num_guides_hit` <- `num_guides_hit`
      }
      if (!is.null(`num_guides_nonhit`)) {
        self$`num_guides_nonhit` <- `num_guides_nonhit`
      }
      if (!is.null(`fraction_guides_hit`)) {
        self$`fraction_guides_hit` <- `fraction_guides_hit`
      }
      if (!is.null(`phenotype_name`)) {
        if (!(is.character(`phenotype_name`) && length(`phenotype_name`) == 1)) {
          stop(paste("Error! Invalid data for `phenotype_name`. Must be a string:", `phenotype_name`))
        }
        self$`phenotype_name` <- `phenotype_name`
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
    #' @return GenomicElementsFromPhenotypes as a base R list.
    #' @examples
    #' # convert array of GenomicElementsFromPhenotypes (x) to a data frame
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
    #' Convert GenomicElementsFromPhenotypes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElementsFromPhenotypesObject <- list()
      if (!is.null(self$`name`)) {
        GenomicElementsFromPhenotypesObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        GenomicElementsFromPhenotypesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`method`)) {
        GenomicElementsFromPhenotypesObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        GenomicElementsFromPhenotypesObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`source`)) {
        GenomicElementsFromPhenotypesObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenomicElementsFromPhenotypesObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`biological_context`)) {
        GenomicElementsFromPhenotypesObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        GenomicElementsFromPhenotypesObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`files_filesets`)) {
        GenomicElementsFromPhenotypesObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`perturbation`)) {
        GenomicElementsFromPhenotypesObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`z_score`)) {
        GenomicElementsFromPhenotypesObject[["z_score"]] <-
          self$`z_score`
      }
      if (!is.null(self$`log2FC`)) {
        GenomicElementsFromPhenotypesObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`p_value`)) {
        GenomicElementsFromPhenotypesObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`p_value_adj`)) {
        GenomicElementsFromPhenotypesObject[["p_value_adj"]] <-
          self$`p_value_adj`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GenomicElementsFromPhenotypesObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        GenomicElementsFromPhenotypesObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`significant`)) {
        GenomicElementsFromPhenotypesObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`num_guides`)) {
        GenomicElementsFromPhenotypesObject[["num_guides"]] <-
          self$`num_guides`
      }
      if (!is.null(self$`num_guides_hit`)) {
        GenomicElementsFromPhenotypesObject[["num_guides_hit"]] <-
          self$`num_guides_hit`
      }
      if (!is.null(self$`num_guides_nonhit`)) {
        GenomicElementsFromPhenotypesObject[["num_guides_nonhit"]] <-
          self$`num_guides_nonhit`
      }
      if (!is.null(self$`fraction_guides_hit`)) {
        GenomicElementsFromPhenotypesObject[["fraction_guides_hit"]] <-
          self$`fraction_guides_hit`
      }
      if (!is.null(self$`phenotype_name`)) {
        GenomicElementsFromPhenotypesObject[["phenotype_name"]] <-
          self$`phenotype_name`
      }
      if (!is.null(self$`genomic_element`)) {
        GenomicElementsFromPhenotypesObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      if (!is.null(self$`phenotype`)) {
        GenomicElementsFromPhenotypesObject[["phenotype"]] <-
          self$`phenotype`$toSimpleType()
      }
      return(GenomicElementsFromPhenotypesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsFromPhenotypes
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsFromPhenotypes
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
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      if (!is.null(this_object$`z_score`)) {
        self$`z_score` <- this_object$`z_score`
      }
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
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
      if (!is.null(this_object$`num_guides`)) {
        self$`num_guides` <- this_object$`num_guides`
      }
      if (!is.null(this_object$`num_guides_hit`)) {
        self$`num_guides_hit` <- this_object$`num_guides_hit`
      }
      if (!is.null(this_object$`num_guides_nonhit`)) {
        self$`num_guides_nonhit` <- this_object$`num_guides_nonhit`
      }
      if (!is.null(this_object$`fraction_guides_hit`)) {
        self$`fraction_guides_hit` <- this_object$`fraction_guides_hit`
      }
      if (!is.null(this_object$`phenotype_name`)) {
        self$`phenotype_name` <- this_object$`phenotype_name`
      }
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- GenesFromGenomicElementsGenomicElement$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      if (!is.null(this_object$`phenotype`)) {
        `phenotype_object` <- GenomicElementsFromPhenotypesPhenotype$new()
        `phenotype_object`$fromJSON(jsonlite::toJSON(this_object$`phenotype`, auto_unbox = TRUE, digits = NA))
        self$`phenotype` <- `phenotype_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElementsFromPhenotypes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsFromPhenotypes
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsFromPhenotypes
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
      self$`files_filesets` <- this_object$`files_filesets`
      self$`perturbation` <- this_object$`perturbation`
      self$`z_score` <- this_object$`z_score`
      self$`log2FC` <- this_object$`log2FC`
      self$`p_value` <- this_object$`p_value`
      self$`p_value_adj` <- this_object$`p_value_adj`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`significant` <- this_object$`significant`
      self$`num_guides` <- this_object$`num_guides`
      self$`num_guides_hit` <- this_object$`num_guides_hit`
      self$`num_guides_nonhit` <- this_object$`num_guides_nonhit`
      self$`fraction_guides_hit` <- this_object$`fraction_guides_hit`
      self$`phenotype_name` <- this_object$`phenotype_name`
      self$`genomic_element` <- GenesFromGenomicElementsGenomicElement$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`phenotype` <- GenomicElementsFromPhenotypesPhenotype$new()$fromJSON(jsonlite::toJSON(this_object$`phenotype`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElementsFromPhenotypes and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `name` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `label` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `method` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `class` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `source_url` is missing."))
      }
      # check the required field `biological_context`
      if (!is.null(input_json$`biological_context`)) {
        if (!(is.character(input_json$`biological_context`) && length(input_json$`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", input_json$`biological_context`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `biological_context` is missing."))
      }
      # check the required field `biosample_term`
      if (!is.null(input_json$`biosample_term`)) {
        if (!(is.character(input_json$`biosample_term`) && length(input_json$`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", input_json$`biosample_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `biosample_term` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `files_filesets` is missing."))
      }
      # check the required field `genomic_element`
      if (!is.null(input_json$`genomic_element`)) {
        stopifnot(R6::is.R6(input_json$`genomic_element`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `genomic_element` is missing."))
      }
      # check the required field `phenotype`
      if (!is.null(input_json$`phenotype`)) {
        stopifnot(R6::is.R6(input_json$`phenotype`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromPhenotypes: the required field `phenotype` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElementsFromPhenotypes
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

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
        return(FALSE)
      }

      # check if the required `biosample_term` is null
      if (is.null(self$`biosample_term`)) {
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

      # check if the required `phenotype` is null
      if (is.null(self$`phenotype`)) {
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

      # check if the required `biological_context` is null
      if (is.null(self$`biological_context`)) {
        invalid_fields["biological_context"] <- "Non-nullable required field `biological_context` cannot be null."
      }

      # check if the required `biosample_term` is null
      if (is.null(self$`biosample_term`)) {
        invalid_fields["biosample_term"] <- "Non-nullable required field `biosample_term` cannot be null."
      }

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
        invalid_fields["files_filesets"] <- "Non-nullable required field `files_filesets` cannot be null."
      }

      # check if the required `genomic_element` is null
      if (is.null(self$`genomic_element`)) {
        invalid_fields["genomic_element"] <- "Non-nullable required field `genomic_element` cannot be null."
      }

      # check if the required `phenotype` is null
      if (is.null(self$`phenotype`)) {
        invalid_fields["phenotype"] <- "Non-nullable required field `phenotype` cannot be null."
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
# GenomicElementsFromPhenotypes$unlock()
#
## Below is an example to define the print function
# GenomicElementsFromPhenotypes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElementsFromPhenotypes$lock()

