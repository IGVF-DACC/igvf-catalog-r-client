#' Create a new GenomicElementsFromVariants
#'
#' @description
#' GenomicElementsFromVariants Class
#'
#' @docType class
#' @title GenomicElementsFromVariants
#' @description GenomicElementsFromVariants Class
#' @format An \code{R6Class} generator object
#' @field variant  \link{VariantBasic}
#' @field name  character
#' @field label  character
#' @field method  character
#' @field class  character [optional]
#' @field log2FC  numeric [optional]
#' @field neg_log10_pvalue  numeric [optional]
#' @field beta  numeric [optional]
#' @field files_filesets  character [optional]
#' @field biological_context  character [optional]
#' @field biosample_term  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field genomic_element  \link{GenomicElement9} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenomicElementsFromVariants <- R6::R6Class(
  "GenomicElementsFromVariants",
  public = list(
    `variant` = NULL,
    `name` = NULL,
    `label` = NULL,
    `method` = NULL,
    `class` = NULL,
    `log2FC` = NULL,
    `neg_log10_pvalue` = NULL,
    `beta` = NULL,
    `files_filesets` = NULL,
    `biological_context` = NULL,
    `biosample_term` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `genomic_element` = NULL,

    #' @description
    #' Initialize a new GenomicElementsFromVariants class.
    #'
    #' @param variant variant
    #' @param name name
    #' @param label label
    #' @param method method
    #' @param class class
    #' @param log2FC log2FC
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param beta beta
    #' @param files_filesets files_filesets
    #' @param biological_context biological_context
    #' @param biosample_term biosample_term
    #' @param source source
    #' @param source_url source_url
    #' @param genomic_element genomic_element
    #' @param ... Other optional arguments.
    initialize = function(`variant`, `name`, `label`, `method`, `class` = NULL, `log2FC` = NULL, `neg_log10_pvalue` = NULL, `beta` = NULL, `files_filesets` = NULL, `biological_context` = NULL, `biosample_term` = NULL, `source` = NULL, `source_url` = NULL, `genomic_element` = NULL, ...) {
      if (!missing(`variant`)) {
        stopifnot(R6::is.R6(`variant`))
        self$`variant` <- `variant`
      }
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
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!is.null(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!is.null(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!is.null(`beta`)) {
        self$`beta` <- `beta`
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
      if (!is.null(`genomic_element`)) {
        stopifnot(R6::is.R6(`genomic_element`))
        self$`genomic_element` <- `genomic_element`
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
    #' @return GenomicElementsFromVariants as a base R list.
    #' @examples
    #' # convert array of GenomicElementsFromVariants (x) to a data frame
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
    #' Convert GenomicElementsFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenomicElementsFromVariantsObject <- list()
      if (!is.null(self$`variant`)) {
        GenomicElementsFromVariantsObject[["variant"]] <-
          self$`variant`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        GenomicElementsFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        GenomicElementsFromVariantsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`method`)) {
        GenomicElementsFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        GenomicElementsFromVariantsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`log2FC`)) {
        GenomicElementsFromVariantsObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        GenomicElementsFromVariantsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`beta`)) {
        GenomicElementsFromVariantsObject[["beta"]] <-
          self$`beta`
      }
      if (!is.null(self$`files_filesets`)) {
        GenomicElementsFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`biological_context`)) {
        GenomicElementsFromVariantsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`biosample_term`)) {
        GenomicElementsFromVariantsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`source`)) {
        GenomicElementsFromVariantsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        GenomicElementsFromVariantsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`genomic_element`)) {
        GenomicElementsFromVariantsObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      return(GenomicElementsFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variant`)) {
        `variant_object` <- VariantBasic$new()
        `variant_object`$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
        self$`variant` <- `variant_object`
      }
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
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`beta`)) {
        self$`beta` <- this_object$`beta`
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
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- GenomicElement9$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenomicElementsFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenomicElementsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenomicElementsFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variant` <- VariantBasic$new()$fromJSON(jsonlite::toJSON(this_object$`variant`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`log2FC` <- this_object$`log2FC`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`beta` <- this_object$`beta`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`biological_context` <- this_object$`biological_context`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`genomic_element` <- GenomicElement9$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GenomicElementsFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `variant`
      if (!is.null(input_json$`variant`)) {
        stopifnot(R6::is.R6(input_json$`variant`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromVariants: the required field `variant` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromVariants: the required field `name` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromVariants: the required field `label` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenomicElementsFromVariants: the required field `method` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenomicElementsFromVariants
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
# GenomicElementsFromVariants$unlock()
#
## Below is an example to define the print function
# GenomicElementsFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenomicElementsFromVariants$lock()

