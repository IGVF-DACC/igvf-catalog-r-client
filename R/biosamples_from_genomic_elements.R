#' Create a new BiosamplesFromGenomicElements
#'
#' @description
#' BiosamplesFromGenomicElements Class
#'
#' @docType class
#' @title BiosamplesFromGenomicElements
#' @description BiosamplesFromGenomicElements Class
#' @format An \code{R6Class} generator object
#' @field log2FC  numeric
#' @field strand  character
#' @field neg_log10_pvalue  numeric
#' @field neg_log10_pvalue_adj  numeric
#' @field DNA_count  numeric [optional]
#' @field RNA_count  numeric [optional]
#' @field significant  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field genomic_element  \link{BiosamplesFromGenomicElementsGenomicElement} [optional]
#' @field biosample  \link{BiosamplesFromGenomicElementsBiosample} [optional]
#' @field name  character
#' @field class  character [optional]
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiosamplesFromGenomicElements <- R6::R6Class(
  "BiosamplesFromGenomicElements",
  public = list(
    `log2FC` = NULL,
    `strand` = NULL,
    `neg_log10_pvalue` = NULL,
    `neg_log10_pvalue_adj` = NULL,
    `DNA_count` = NULL,
    `RNA_count` = NULL,
    `significant` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `genomic_element` = NULL,
    `biosample` = NULL,
    `name` = NULL,
    `class` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new BiosamplesFromGenomicElements class.
    #'
    #' @param log2FC log2FC
    #' @param strand strand
    #' @param neg_log10_pvalue neg_log10_pvalue
    #' @param neg_log10_pvalue_adj neg_log10_pvalue_adj
    #' @param name name
    #' @param DNA_count DNA_count
    #' @param RNA_count RNA_count
    #' @param significant significant
    #' @param source source
    #' @param source_url source_url
    #' @param genomic_element genomic_element
    #' @param biosample biosample
    #' @param class class
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`log2FC`, `strand`, `neg_log10_pvalue`, `neg_log10_pvalue_adj`, `name`, `DNA_count` = NULL, `RNA_count` = NULL, `significant` = NULL, `source` = NULL, `source_url` = NULL, `genomic_element` = NULL, `biosample` = NULL, `class` = NULL, `method` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`log2FC`)) {
        self$`log2FC` <- `log2FC`
      }
      if (!missing(`strand`)) {
        if (!(is.character(`strand`) && length(`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", `strand`))
        }
        self$`strand` <- `strand`
      }
      if (!missing(`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- `neg_log10_pvalue`
      }
      if (!missing(`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- `neg_log10_pvalue_adj`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`DNA_count`)) {
        self$`DNA_count` <- `DNA_count`
      }
      if (!is.null(`RNA_count`)) {
        self$`RNA_count` <- `RNA_count`
      }
      if (!is.null(`significant`)) {
        if (!(is.logical(`significant`) && length(`significant`) == 1)) {
          stop(paste("Error! Invalid data for `significant`. Must be a boolean:", `significant`))
        }
        self$`significant` <- `significant`
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
      if (!is.null(`biosample`)) {
        stopifnot(R6::is.R6(`biosample`))
        self$`biosample` <- `biosample`
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
    #' @return BiosamplesFromGenomicElements as a base R list.
    #' @examples
    #' # convert array of BiosamplesFromGenomicElements (x) to a data frame
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
    #' Convert BiosamplesFromGenomicElements to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiosamplesFromGenomicElementsObject <- list()
      if (!is.null(self$`log2FC`)) {
        BiosamplesFromGenomicElementsObject[["log2FC"]] <-
          self$`log2FC`
      }
      if (!is.null(self$`strand`)) {
        BiosamplesFromGenomicElementsObject[["strand"]] <-
          self$`strand`
      }
      if (!is.null(self$`neg_log10_pvalue`)) {
        BiosamplesFromGenomicElementsObject[["neg_log10_pvalue"]] <-
          self$`neg_log10_pvalue`
      }
      if (!is.null(self$`neg_log10_pvalue_adj`)) {
        BiosamplesFromGenomicElementsObject[["neg_log10_pvalue_adj"]] <-
          self$`neg_log10_pvalue_adj`
      }
      if (!is.null(self$`DNA_count`)) {
        BiosamplesFromGenomicElementsObject[["DNA_count"]] <-
          self$`DNA_count`
      }
      if (!is.null(self$`RNA_count`)) {
        BiosamplesFromGenomicElementsObject[["RNA_count"]] <-
          self$`RNA_count`
      }
      if (!is.null(self$`significant`)) {
        BiosamplesFromGenomicElementsObject[["significant"]] <-
          self$`significant`
      }
      if (!is.null(self$`source`)) {
        BiosamplesFromGenomicElementsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        BiosamplesFromGenomicElementsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`genomic_element`)) {
        BiosamplesFromGenomicElementsObject[["genomic_element"]] <-
          self$`genomic_element`$toSimpleType()
      }
      if (!is.null(self$`biosample`)) {
        BiosamplesFromGenomicElementsObject[["biosample"]] <-
          self$`biosample`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        BiosamplesFromGenomicElementsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`class`)) {
        BiosamplesFromGenomicElementsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        BiosamplesFromGenomicElementsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        BiosamplesFromGenomicElementsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(BiosamplesFromGenomicElementsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BiosamplesFromGenomicElements
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiosamplesFromGenomicElements
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`log2FC`)) {
        self$`log2FC` <- this_object$`log2FC`
      }
      if (!is.null(this_object$`strand`)) {
        self$`strand` <- this_object$`strand`
      }
      if (!is.null(this_object$`neg_log10_pvalue`)) {
        self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      }
      if (!is.null(this_object$`neg_log10_pvalue_adj`)) {
        self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      }
      if (!is.null(this_object$`DNA_count`)) {
        self$`DNA_count` <- this_object$`DNA_count`
      }
      if (!is.null(this_object$`RNA_count`)) {
        self$`RNA_count` <- this_object$`RNA_count`
      }
      if (!is.null(this_object$`significant`)) {
        self$`significant` <- this_object$`significant`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`genomic_element`)) {
        `genomic_element_object` <- BiosamplesFromGenomicElementsGenomicElement$new()
        `genomic_element_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
        self$`genomic_element` <- `genomic_element_object`
      }
      if (!is.null(this_object$`biosample`)) {
        `biosample_object` <- BiosamplesFromGenomicElementsBiosample$new()
        `biosample_object`$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
        self$`biosample` <- `biosample_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
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
    #' @return BiosamplesFromGenomicElements in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiosamplesFromGenomicElements
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiosamplesFromGenomicElements
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`log2FC` <- this_object$`log2FC`
      self$`strand` <- this_object$`strand`
      self$`neg_log10_pvalue` <- this_object$`neg_log10_pvalue`
      self$`neg_log10_pvalue_adj` <- this_object$`neg_log10_pvalue_adj`
      self$`DNA_count` <- this_object$`DNA_count`
      self$`RNA_count` <- this_object$`RNA_count`
      self$`significant` <- this_object$`significant`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`genomic_element` <- BiosamplesFromGenomicElementsGenomicElement$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_element`, auto_unbox = TRUE, digits = NA))
      self$`biosample` <- BiosamplesFromGenomicElementsBiosample$new()$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to BiosamplesFromGenomicElements and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `log2FC`
      if (!is.null(input_json$`log2FC`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromGenomicElements: the required field `log2FC` is missing."))
      }
      # check the required field `strand`
      if (!is.null(input_json$`strand`)) {
        if (!(is.character(input_json$`strand`) && length(input_json$`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", input_json$`strand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromGenomicElements: the required field `strand` is missing."))
      }
      # check the required field `neg_log10_pvalue`
      if (!is.null(input_json$`neg_log10_pvalue`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromGenomicElements: the required field `neg_log10_pvalue` is missing."))
      }
      # check the required field `neg_log10_pvalue_adj`
      if (!is.null(input_json$`neg_log10_pvalue_adj`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromGenomicElements: the required field `neg_log10_pvalue_adj` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiosamplesFromGenomicElements: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiosamplesFromGenomicElements
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
# BiosamplesFromGenomicElements$unlock()
#
## Below is an example to define the print function
# BiosamplesFromGenomicElements$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiosamplesFromGenomicElements$lock()

