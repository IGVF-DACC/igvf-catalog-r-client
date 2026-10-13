#' Create a new Qtls
#'
#' @description
#' Qtls Class
#'
#' @docType class
#' @title Qtls
#' @description Qtls Class
#' @format An \code{R6Class} generator object
#' @field variant  \link{Variant}
#' @field gene  \link{IdName}
#' @field protein_complex  \link{IdName}
#' @field genomic_element  \link{GenomicElement5}
#' @field source  character
#' @field method  character
#' @field regulatory_type  character [optional]
#' @field gene_consequence  character [optional]
#' @field biological_context  character [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field effect_size  numeric [optional]
#' @field posterior_inclusion_probability  numeric [optional]
#' @field intron_chr  character [optional]
#' @field intron_start  numeric [optional]
#' @field intron_end  numeric [optional]
#' @field study  \link{Study2} [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Qtls <- R6::R6Class(
  "Qtls",
  public = list(
    `variant` = NULL,
    `gene` = NULL,
    `protein_complex` = NULL,
    `genomic_element` = NULL,
    `source` = NULL,
    `method` = NULL,
    `regulatory_type` = NULL,
    `gene_consequence` = NULL,
    `biological_context` = NULL,
    `neg_log10_pvalue` = NULL,
    `effect_size` = NULL,
    `posterior_inclusion_probability` = NULL,
    `intron_chr` = NULL,
    `intron_start` = NULL,
    `intron_end` = NULL,
    `study` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Qtls class.
    #'
    #' @param variant variant
    #' @param gene gene
    #' @param protein_complex protein_complex
    #' @param genomic_element genomic_element
    #' @param source source
    #' @param method method
    #' @param regulatory_type regulatory_type
    #' @param gene_consequence gene_consequence
    #' @param biological_context biological_context
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param effect_size effect_size
    #' @param posterior_inclusion_probability posterior_inclusion_probability
    #' @param intron_chr intron_chr
    #' @param intron_start intron_start
    #' @param intron_end intron_end
    #' @param study study
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`variant`, `gene`, `protein_complex`, `genomic_element`, `source`, `method`, `regulatory_type` = NULL, `gene_consequence` = NULL, `biological_context` = NULL, `neg_log10_pvalue` = NULL, `effect_size` = NULL, `posterior_inclusion_probability` = NULL, `intron_chr` = NULL, `intron_start` = NULL, `intron_end` = NULL, `study` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
      }
      if (!missing(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!missing(`protein_complex`)) {
        stopifnot(R6::is.R6(`protein_complex`))
        self$`protein_complex` <- `protein_complex`
      }
      if (!missing(`genomic_element`)) {
        stopifnot(R6::is.R6(`genomic_element`))
        self$`genomic_element` <- `genomic_element`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`regulatory_type`)) {
        if (!(is.character(`regulatory_type`) && length(`regulatory_type`) == 1)) {
          stop(paste("Error! Invalid data for `regulatory_type`. Must be a string:", `regulatory_type`))
        }
        self$`regulatory_type` <- `regulatory_type`
      }
      if (!is.null(`gene_consequence`)) {
        if (!(is.character(`gene_consequence`) && length(`gene_consequence`) == 1)) {
          stop(paste("Error! Invalid data for `gene_consequence`. Must be a string:", `gene_consequence`))
        }
        self$`gene_consequence` <- `gene_consequence`
      }
      if (!is.null(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`effect_size`)) {
        self$`effect_size` <- `effect_size`
      }
      if (!is.null(`posterior_inclusion_probability`)) {
        self$`posterior_inclusion_probability` <- `posterior_inclusion_probability`
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
      if (!is.null(`study`)) {
        stopifnot(R6::is.R6(`study`))
        self$`study` <- `study`
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
    #' @return Qtls as a base R list.
    #' @examples
    #' # convert array of Qtls (x) to a data frame
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
    #' Convert Qtls to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QtlsObject <- list()
      if (!is.null(self$`variant`)) {
        QtlsObject[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      if (!is.null(self$`gene`)) {
        QtlsObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`protein_complex`)) {
        QtlsObject[["protein_complex"]] <-
          self$`protein_complex`$toSimpleType()
      }
      if (!is.null(self$`genomic_element`)) {
        QtlsObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      if (!is.null(self$`source`)) {
        QtlsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`method`)) {
        QtlsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`regulatory_type`)) {
        QtlsObject[["regulatory_type"]] <-
          self$`regulatory_type`
      }
      if (!is.null(self$`gene_consequence`)) {
        QtlsObject[["gene_consequence"]] <-
          self$`gene_consequence`
      }
      if (!is.null(self$`biological_context`)) {
        QtlsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        QtlsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`effect_size`)) {
        QtlsObject[["effect_size"]] <-
          self$`effect_size`
      }
      if (!is.null(self$`posterior_inclusion_probability`)) {
        QtlsObject[["posterior_inclusion_probability"]] <-
          self$`posterior_inclusion_probability`
      }
      if (!is.null(self$`intron_chr`)) {
        QtlsObject[["intron_chr"]] <-
          self$`intron_chr`
      }
      if (!is.null(self$`intron_start`)) {
        QtlsObject[["intron_start"]] <-
          self$`intron_start`
      }
      if (!is.null(self$`intron_end`)) {
        QtlsObject[["intron_end"]] <-
          self$`intron_end`
      }
      if (!is.null(self$`study`)) {
        QtlsObject[["study"]] <-
          self$`study`$toSimpleType()
      }
      if (!is.null(self$`files_filesets`)) {
        QtlsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(QtlsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Qtls
    #'
    #' @param input_json the JSON input
    #' @return the instance of Qtls
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- Variant$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- IdName$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`protein_complex`)) {
        `protein_complex_object` <- IdName$new()
        `protein_complex_object`$fromJSON(jsonlite::toJSON(this_object$`protein_complex`, auto_unbox = TRUE, digits = NA))
        self$`protein_complex` <- `protein_complex_object`
      }
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- GenomicElement5$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`regulatory_type`)) {
        self$`regulatory_type` <- this_object$`regulatory_type`
      }
      if (!is.null(this_object$`gene_consequence`)) {
        self$`gene_consequence` <- this_object$`gene_consequence`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`effect_size`)) {
        self$`effect_size` <- this_object$`effect_size`
      }
      if (!is.null(this_object$`posterior_inclusion_probability`)) {
        self$`posterior_inclusion_probability` <- this_object$`posterior_inclusion_probability`
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
      if (!is.null(this_object$`study`)) {
        `study_object` <- Study2$new()
        `study_object`$fromJSON(jsonlite::toJSON(this_object$`study`, auto_unbox = TRUE, digits = NA))
        self$`study` <- `study_object`
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
    #' @return Qtls in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Qtls
    #'
    #' @param input_json the JSON input
    #' @return the instance of Qtls
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variant` <- Variant$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self$`gene` <- IdName$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`protein_complex` <- IdName$new()$fromJSON(jsonlite::toJSON(this_object$`protein_complex`, auto_unbox = TRUE, digits = NA))
      self$`genomic_element` <- GenomicElement5$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`source` <- this_object$`source`
      self$`method` <- this_object$`method`
      self$`regulatory_type` <- this_object$`regulatory_type`
      self$`gene_consequence` <- this_object$`gene_consequence`
      self$`biological_context` <- this_object$`biological_context`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`effect_size` <- this_object$`effect_size`
      self$`posterior_inclusion_probability` <- this_object$`posterior_inclusion_probability`
      self$`intron_chr` <- this_object$`intron_chr`
      self$`intron_start` <- this_object$`intron_start`
      self$`intron_end` <- this_object$`intron_end`
      self$`study` <- Study2$new()$fromJSON(jsonlite::toJSON(this_object$`study`, auto_unbox = TRUE, digits = NA))
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Qtls and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `variant`
      if (!is.null(input_json$`variant`)) {
        stopifnot(R6::is.R6(input_json$`variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Qtls: the required field `variant` is missing."))
      }
      # check the required field `gene`
      if (!is.null(input_json$`gene`)) {
        stopifnot(R6::is.R6(input_json$`gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Qtls: the required field `gene` is missing."))
      }
      # check the required field `protein_complex`
      if (!is.null(input_json$`protein_complex`)) {
        stopifnot(R6::is.R6(input_json$`protein_complex`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Qtls: the required field `protein_complex` is missing."))
      }
      # check the required field `genomic_element`
      if (!is.null(input_json$`genomic_element`)) {
        stopifnot(R6::is.R6(input_json$`genomic_element`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Qtls: the required field `genomic_element` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Qtls: the required field `source` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Qtls: the required field `method` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Qtls
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `variant` is null
      if (is.null(self$`variant`)) {
        return(FALSE)
      }

      # check if the required `gene` is null
      if (is.null(self$`gene`)) {
        return(FALSE)
      }

      # check if the required `protein_complex` is null
      if (is.null(self$`protein_complex`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
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
      # check if the required `variant` is null
      if (is.null(self$`variant`)) {
        invalid_fields["variant"] <- "Non-nullable required field `variant` cannot be null."
      }

      # check if the required `gene` is null
      if (is.null(self$`gene`)) {
        invalid_fields["gene"] <- "Non-nullable required field `gene` cannot be null."
      }

      # check if the required `protein_complex` is null
      if (is.null(self$`protein_complex`)) {
        invalid_fields["protein_complex"] <- "Non-nullable required field `protein_complex` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
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
# Qtls$unlock()
#
## Below is an example to define the print function
# Qtls$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Qtls$lock()

