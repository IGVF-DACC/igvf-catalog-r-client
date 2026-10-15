#' Create a new DiseasesFromGenes
#'
#' @description
#' DiseasesFromGenes Class
#'
#' @docType class
#' @title DiseasesFromGenes
#' @description DiseasesFromGenes Class
#' @format An \code{R6Class} generator object
#' @field pmids  list(character) [optional]
#' @field term_name  character [optional]
#' @field gene_name  character [optional]
#' @field association_type  character [optional]
#' @field association_status  character [optional]
#' @field sgc_id  character [optional]
#' @field hgnc  character [optional]
#' @field classification  character [optional]
#' @field moi_id  character [optional]
#' @field moi_name  character [optional]
#' @field submitter  character [optional]
#' @field class  character [optional]
#' @field method  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field gene  \link{DiseasesFromGenesGene} [optional]
#' @field disease  \link{BiosamplesFromGenomicElementsBiosample} [optional]
#' @field inheritance_mode  character [optional]
#' @field variants  list(\link{VariantMinimal}) [optional]
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DiseasesFromGenes <- R6::R6Class(
  "DiseasesFromGenes",
  public = list(
    `pmids` = NULL,
    `term_name` = NULL,
    `gene_name` = NULL,
    `association_type` = NULL,
    `association_status` = NULL,
    `sgc_id` = NULL,
    `hgnc` = NULL,
    `classification` = NULL,
    `moi_id` = NULL,
    `moi_name` = NULL,
    `submitter` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `gene` = NULL,
    `disease` = NULL,
    `inheritance_mode` = NULL,
    `variants` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new DiseasesFromGenes class.
    #'
    #' @param name name
    #' @param pmids pmids
    #' @param term_name term_name
    #' @param gene_name gene_name
    #' @param association_type association_type
    #' @param association_status association_status
    #' @param sgc_id sgc_id
    #' @param hgnc hgnc
    #' @param classification classification
    #' @param moi_id moi_id
    #' @param moi_name moi_name
    #' @param submitter submitter
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param source source
    #' @param source_url source_url
    #' @param gene gene
    #' @param disease disease
    #' @param inheritance_mode inheritance_mode
    #' @param variants variants
    #' @param ... Other optional arguments.
    initialize = function(`name`, `pmids` = NULL, `term_name` = NULL, `gene_name` = NULL, `association_type` = NULL, `association_status` = NULL, `sgc_id` = NULL, `hgnc` = NULL, `classification` = NULL, `moi_id` = NULL, `moi_name` = NULL, `submitter` = NULL, `class` = NULL, `method` = NULL, `label` = NULL, `files_filesets` = NULL, `source` = NULL, `source_url` = NULL, `gene` = NULL, `disease` = NULL, `inheritance_mode` = NULL, `variants` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`pmids`)) {
        stopifnot(is.vector(`pmids`), length(`pmids`) != 0)
        sapply(`pmids`, function(x) stopifnot(is.character(x)))
        self$`pmids` <- `pmids`
      }
      if (!is.null(`term_name`)) {
        if (!(is.character(`term_name`) && length(`term_name`) == 1)) {
          stop(paste("Error! Invalid data for `term_name`. Must be a string:", `term_name`))
        }
        self$`term_name` <- `term_name`
      }
      if (!is.null(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!is.null(`association_type`)) {
        if (!(is.character(`association_type`) && length(`association_type`) == 1)) {
          stop(paste("Error! Invalid data for `association_type`. Must be a string:", `association_type`))
        }
        self$`association_type` <- `association_type`
      }
      if (!is.null(`association_status`)) {
        if (!(is.character(`association_status`) && length(`association_status`) == 1)) {
          stop(paste("Error! Invalid data for `association_status`. Must be a string:", `association_status`))
        }
        self$`association_status` <- `association_status`
      }
      if (!is.null(`sgc_id`)) {
        if (!(is.character(`sgc_id`) && length(`sgc_id`) == 1)) {
          stop(paste("Error! Invalid data for `sgc_id`. Must be a string:", `sgc_id`))
        }
        self$`sgc_id` <- `sgc_id`
      }
      if (!is.null(`hgnc`)) {
        if (!(is.character(`hgnc`) && length(`hgnc`) == 1)) {
          stop(paste("Error! Invalid data for `hgnc`. Must be a string:", `hgnc`))
        }
        self$`hgnc` <- `hgnc`
      }
      if (!is.null(`classification`)) {
        if (!(is.character(`classification`) && length(`classification`) == 1)) {
          stop(paste("Error! Invalid data for `classification`. Must be a string:", `classification`))
        }
        self$`classification` <- `classification`
      }
      if (!is.null(`moi_id`)) {
        if (!(is.character(`moi_id`) && length(`moi_id`) == 1)) {
          stop(paste("Error! Invalid data for `moi_id`. Must be a string:", `moi_id`))
        }
        self$`moi_id` <- `moi_id`
      }
      if (!is.null(`moi_name`)) {
        if (!(is.character(`moi_name`) && length(`moi_name`) == 1)) {
          stop(paste("Error! Invalid data for `moi_name`. Must be a string:", `moi_name`))
        }
        self$`moi_name` <- `moi_name`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
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
      if (!is.null(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!is.null(`disease`)) {
        stopifnot(R6::is.R6(`disease`))
        self$`disease` <- `disease`
      }
      if (!is.null(`inheritance_mode`)) {
        if (!(is.character(`inheritance_mode`) && length(`inheritance_mode`) == 1)) {
          stop(paste("Error! Invalid data for `inheritance_mode`. Must be a string:", `inheritance_mode`))
        }
        self$`inheritance_mode` <- `inheritance_mode`
      }
      if (!is.null(`variants`)) {
        stopifnot(is.vector(`variants`), length(`variants`) != 0)
        sapply(`variants`, function(x) stopifnot(R6::is.R6(x)))
        self$`variants` <- `variants`
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
    #' @return DiseasesFromGenes as a base R list.
    #' @examples
    #' # convert array of DiseasesFromGenes (x) to a data frame
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
    #' Convert DiseasesFromGenes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DiseasesFromGenesObject <- list()
      if (!is.null(self$`pmids`)) {
        DiseasesFromGenesObject[["pmids"]] <-
          self$`pmids`
      }
      if (!is.null(self$`term_name`)) {
        DiseasesFromGenesObject[["term_name"]] <-
          self$`term_name`
      }
      if (!is.null(self$`gene_name`)) {
        DiseasesFromGenesObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`association_type`)) {
        DiseasesFromGenesObject[["association_type"]] <-
          self$`association_type`
      }
      if (!is.null(self$`association_status`)) {
        DiseasesFromGenesObject[["association_status"]] <-
          self$`association_status`
      }
      if (!is.null(self$`sgc_id`)) {
        DiseasesFromGenesObject[["sgc_id"]] <-
          self$`sgc_id`
      }
      if (!is.null(self$`hgnc`)) {
        DiseasesFromGenesObject[["hgnc"]] <-
          self$`hgnc`
      }
      if (!is.null(self$`classification`)) {
        DiseasesFromGenesObject[["classification"]] <-
          self$`classification`
      }
      if (!is.null(self$`moi_id`)) {
        DiseasesFromGenesObject[["moi_id"]] <-
          self$`moi_id`
      }
      if (!is.null(self$`moi_name`)) {
        DiseasesFromGenesObject[["moi_name"]] <-
          self$`moi_name`
      }
      if (!is.null(self$`submitter`)) {
        DiseasesFromGenesObject[["submitter"]] <-
          self$`submitter`
      }
      if (!is.null(self$`class`)) {
        DiseasesFromGenesObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        DiseasesFromGenesObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        DiseasesFromGenesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        DiseasesFromGenesObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`source`)) {
        DiseasesFromGenesObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        DiseasesFromGenesObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`gene`)) {
        DiseasesFromGenesObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`disease`)) {
        DiseasesFromGenesObject[["disease"]] <-
          self$`disease`$toSimpleType()
      }
      if (!is.null(self$`inheritance_mode`)) {
        DiseasesFromGenesObject[["inheritance_mode"]] <-
          self$`inheritance_mode`
      }
      if (!is.null(self$`variants`)) {
        DiseasesFromGenesObject[["variants"]] <-
          lapply(self$`variants`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`name`)) {
        DiseasesFromGenesObject[["name"]] <-
          self$`name`
      }
      return(DiseasesFromGenesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DiseasesFromGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiseasesFromGenes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pmids`)) {
        self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`term_name`)) {
        self$`term_name` <- this_object$`term_name`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`association_type`)) {
        self$`association_type` <- this_object$`association_type`
      }
      if (!is.null(this_object$`association_status`)) {
        self$`association_status` <- this_object$`association_status`
      }
      if (!is.null(this_object$`sgc_id`)) {
        self$`sgc_id` <- this_object$`sgc_id`
      }
      if (!is.null(this_object$`hgnc`)) {
        self$`hgnc` <- this_object$`hgnc`
      }
      if (!is.null(this_object$`classification`)) {
        self$`classification` <- this_object$`classification`
      }
      if (!is.null(this_object$`moi_id`)) {
        self$`moi_id` <- this_object$`moi_id`
      }
      if (!is.null(this_object$`moi_name`)) {
        self$`moi_name` <- this_object$`moi_name`
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
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
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- DiseasesFromGenesGene$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`disease`)) {
        `disease_object` <- BiosamplesFromGenomicElementsBiosample$new()
        `disease_object`$fromJSON(jsonlite::toJSON(this_object$`disease`, auto_unbox = TRUE, digits = NA))
        self$`disease` <- `disease_object`
      }
      if (!is.null(this_object$`inheritance_mode`)) {
        self$`inheritance_mode` <- this_object$`inheritance_mode`
      }
      if (!is.null(this_object$`variants`)) {
        self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[VariantMinimal]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DiseasesFromGenes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DiseasesFromGenes
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiseasesFromGenes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`term_name` <- this_object$`term_name`
      self$`gene_name` <- this_object$`gene_name`
      self$`association_type` <- this_object$`association_type`
      self$`association_status` <- this_object$`association_status`
      self$`sgc_id` <- this_object$`sgc_id`
      self$`hgnc` <- this_object$`hgnc`
      self$`classification` <- this_object$`classification`
      self$`moi_id` <- this_object$`moi_id`
      self$`moi_name` <- this_object$`moi_name`
      self$`submitter` <- this_object$`submitter`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`gene` <- DiseasesFromGenesGene$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`disease` <- BiosamplesFromGenomicElementsBiosample$new()$fromJSON(jsonlite::toJSON(this_object$`disease`, auto_unbox = TRUE, digits = NA))
      self$`inheritance_mode` <- this_object$`inheritance_mode`
      self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[VariantMinimal]", loadNamespace("igvfcatalogclient"))
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to DiseasesFromGenes and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for DiseasesFromGenes: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DiseasesFromGenes
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
# DiseasesFromGenes$unlock()
#
## Below is an example to define the print function
# DiseasesFromGenes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DiseasesFromGenes$lock()

