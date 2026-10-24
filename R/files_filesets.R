#' Create a new FilesFilesets
#'
#' @description
#' FilesFilesets Class
#'
#' @docType class
#' @title FilesFilesets
#' @description FilesFilesets Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field file_set_id  character
#' @field lab  character
#' @field preferred_assay_titles  list(character) [optional]
#' @field assay_term_ids  list(character) [optional]
#' @field method  character [optional]
#' @field class  character
#' @field software  list(character) [optional]
#' @field collections  list(character) [optional]
#' @field samples  list(character) [optional]
#' @field sample_ids  list(character) [optional]
#' @field simple_sample_summaries  list(character) [optional]
#' @field donors  list(character) [optional]
#' @field source  character
#' @field source_url  character [optional]
#' @field download_link  character
#' @field cell_annotation  character [optional]
#' @field cell_annotation_term  character [optional]
#' @field genome_browser_link  character [optional]
#' @field perturbation  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FilesFilesets <- R6::R6Class(
  "FilesFilesets",
  public = list(
    `_id` = NULL,
    `file_set_id` = NULL,
    `lab` = NULL,
    `preferred_assay_titles` = NULL,
    `assay_term_ids` = NULL,
    `method` = NULL,
    `class` = NULL,
    `software` = NULL,
    `collections` = NULL,
    `samples` = NULL,
    `sample_ids` = NULL,
    `simple_sample_summaries` = NULL,
    `donors` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `download_link` = NULL,
    `cell_annotation` = NULL,
    `cell_annotation_term` = NULL,
    `genome_browser_link` = NULL,
    `perturbation` = NULL,

    #' @description
    #' Initialize a new FilesFilesets class.
    #'
    #' @param _id _id
    #' @param file_set_id file_set_id
    #' @param lab lab
    #' @param class class
    #' @param source source
    #' @param download_link download_link
    #' @param preferred_assay_titles preferred_assay_titles
    #' @param assay_term_ids assay_term_ids
    #' @param method method
    #' @param software software
    #' @param collections collections
    #' @param samples samples
    #' @param sample_ids sample_ids
    #' @param simple_sample_summaries simple_sample_summaries
    #' @param donors donors
    #' @param source_url source_url
    #' @param cell_annotation cell_annotation
    #' @param cell_annotation_term cell_annotation_term
    #' @param genome_browser_link genome_browser_link
    #' @param perturbation perturbation
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `file_set_id`, `lab`, `class`, `source`, `download_link`, `preferred_assay_titles` = NULL, `assay_term_ids` = NULL, `method` = NULL, `software` = NULL, `collections` = NULL, `samples` = NULL, `sample_ids` = NULL, `simple_sample_summaries` = NULL, `donors` = NULL, `source_url` = NULL, `cell_annotation` = NULL, `cell_annotation_term` = NULL, `genome_browser_link` = NULL, `perturbation` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`file_set_id`)) {
        if (!(is.character(`file_set_id`) && length(`file_set_id`) == 1)) {
          stop(paste("Error! Invalid data for `file_set_id`. Must be a string:", `file_set_id`))
        }
        self$`file_set_id` <- `file_set_id`
      }
      if (!missing(`lab`)) {
        if (!(is.character(`lab`) && length(`lab`) == 1)) {
          stop(paste("Error! Invalid data for `lab`. Must be a string:", `lab`))
        }
        self$`lab` <- `lab`
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
      if (!missing(`download_link`)) {
        if (!(is.character(`download_link`) && length(`download_link`) == 1)) {
          stop(paste("Error! Invalid data for `download_link`. Must be a string:", `download_link`))
        }
        self$`download_link` <- `download_link`
      }
      if (!is.null(`preferred_assay_titles`)) {
        stopifnot(is.vector(`preferred_assay_titles`), length(`preferred_assay_titles`) != 0)
        sapply(`preferred_assay_titles`, function(x) stopifnot(is.character(x)))
        self$`preferred_assay_titles` <- `preferred_assay_titles`
      }
      if (!is.null(`assay_term_ids`)) {
        stopifnot(is.vector(`assay_term_ids`), length(`assay_term_ids`) != 0)
        sapply(`assay_term_ids`, function(x) stopifnot(is.character(x)))
        self$`assay_term_ids` <- `assay_term_ids`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`software`)) {
        stopifnot(is.vector(`software`), length(`software`) != 0)
        sapply(`software`, function(x) stopifnot(is.character(x)))
        self$`software` <- `software`
      }
      if (!is.null(`collections`)) {
        stopifnot(is.vector(`collections`), length(`collections`) != 0)
        sapply(`collections`, function(x) stopifnot(is.character(x)))
        self$`collections` <- `collections`
      }
      if (!is.null(`samples`)) {
        stopifnot(is.vector(`samples`), length(`samples`) != 0)
        sapply(`samples`, function(x) stopifnot(is.character(x)))
        self$`samples` <- `samples`
      }
      if (!is.null(`sample_ids`)) {
        stopifnot(is.vector(`sample_ids`), length(`sample_ids`) != 0)
        sapply(`sample_ids`, function(x) stopifnot(is.character(x)))
        self$`sample_ids` <- `sample_ids`
      }
      if (!is.null(`simple_sample_summaries`)) {
        stopifnot(is.vector(`simple_sample_summaries`), length(`simple_sample_summaries`) != 0)
        sapply(`simple_sample_summaries`, function(x) stopifnot(is.character(x)))
        self$`simple_sample_summaries` <- `simple_sample_summaries`
      }
      if (!is.null(`donors`)) {
        stopifnot(is.vector(`donors`), length(`donors`) != 0)
        sapply(`donors`, function(x) stopifnot(is.character(x)))
        self$`donors` <- `donors`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`cell_annotation`)) {
        if (!(is.character(`cell_annotation`) && length(`cell_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation`. Must be a string:", `cell_annotation`))
        }
        self$`cell_annotation` <- `cell_annotation`
      }
      if (!is.null(`cell_annotation_term`)) {
        if (!(is.character(`cell_annotation_term`) && length(`cell_annotation_term`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation_term`. Must be a string:", `cell_annotation_term`))
        }
        self$`cell_annotation_term` <- `cell_annotation_term`
      }
      if (!is.null(`genome_browser_link`)) {
        if (!(is.character(`genome_browser_link`) && length(`genome_browser_link`) == 1)) {
          stop(paste("Error! Invalid data for `genome_browser_link`. Must be a string:", `genome_browser_link`))
        }
        self$`genome_browser_link` <- `genome_browser_link`
      }
      if (!is.null(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
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
    #' @return FilesFilesets as a base R list.
    #' @examples
    #' # convert array of FilesFilesets (x) to a data frame
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
    #' Convert FilesFilesets to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FilesFilesetsObject <- list()
      if (!is.null(self$`_id`)) {
        FilesFilesetsObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`file_set_id`)) {
        FilesFilesetsObject[["file_set_id"]] <-
          self$`file_set_id`
      }
      if (!is.null(self$`lab`)) {
        FilesFilesetsObject[["lab"]] <-
          self$`lab`
      }
      if (!is.null(self$`preferred_assay_titles`)) {
        FilesFilesetsObject[["preferred_assay_titles"]] <-
          self$`preferred_assay_titles`
      }
      if (!is.null(self$`assay_term_ids`)) {
        FilesFilesetsObject[["assay_term_ids"]] <-
          self$`assay_term_ids`
      }
      if (!is.null(self$`method`)) {
        FilesFilesetsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        FilesFilesetsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`software`)) {
        FilesFilesetsObject[["software"]] <-
          self$`software`
      }
      if (!is.null(self$`collections`)) {
        FilesFilesetsObject[["collections"]] <-
          self$`collections`
      }
      if (!is.null(self$`samples`)) {
        FilesFilesetsObject[["samples"]] <-
          self$`samples`
      }
      if (!is.null(self$`sample_ids`)) {
        FilesFilesetsObject[["sample_ids"]] <-
          self$`sample_ids`
      }
      if (!is.null(self$`simple_sample_summaries`)) {
        FilesFilesetsObject[["simple_sample_summaries"]] <-
          self$`simple_sample_summaries`
      }
      if (!is.null(self$`donors`)) {
        FilesFilesetsObject[["donors"]] <-
          self$`donors`
      }
      if (!is.null(self$`source`)) {
        FilesFilesetsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        FilesFilesetsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`download_link`)) {
        FilesFilesetsObject[["download_link"]] <-
          self$`download_link`
      }
      if (!is.null(self$`cell_annotation`)) {
        FilesFilesetsObject[["cell_annotation"]] <-
          self$`cell_annotation`
      }
      if (!is.null(self$`cell_annotation_term`)) {
        FilesFilesetsObject[["cell_annotation_term"]] <-
          self$`cell_annotation_term`
      }
      if (!is.null(self$`genome_browser_link`)) {
        FilesFilesetsObject[["genome_browser_link"]] <-
          self$`genome_browser_link`
      }
      if (!is.null(self$`perturbation`)) {
        FilesFilesetsObject[["perturbation"]] <-
          self$`perturbation`
      }
      return(FilesFilesetsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FilesFilesets
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilesFilesets
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`file_set_id`)) {
        self$`file_set_id` <- this_object$`file_set_id`
      }
      if (!is.null(this_object$`lab`)) {
        self$`lab` <- this_object$`lab`
      }
      if (!is.null(this_object$`preferred_assay_titles`)) {
        self$`preferred_assay_titles` <- ApiClient$new()$deserializeObj(this_object$`preferred_assay_titles`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`assay_term_ids`)) {
        self$`assay_term_ids` <- ApiClient$new()$deserializeObj(this_object$`assay_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`software`)) {
        self$`software` <- ApiClient$new()$deserializeObj(this_object$`software`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`collections`)) {
        self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`samples`)) {
        self$`samples` <- ApiClient$new()$deserializeObj(this_object$`samples`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`sample_ids`)) {
        self$`sample_ids` <- ApiClient$new()$deserializeObj(this_object$`sample_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`simple_sample_summaries`)) {
        self$`simple_sample_summaries` <- ApiClient$new()$deserializeObj(this_object$`simple_sample_summaries`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`donors`)) {
        self$`donors` <- ApiClient$new()$deserializeObj(this_object$`donors`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`download_link`)) {
        self$`download_link` <- this_object$`download_link`
      }
      if (!is.null(this_object$`cell_annotation`)) {
        self$`cell_annotation` <- this_object$`cell_annotation`
      }
      if (!is.null(this_object$`cell_annotation_term`)) {
        self$`cell_annotation_term` <- this_object$`cell_annotation_term`
      }
      if (!is.null(this_object$`genome_browser_link`)) {
        self$`genome_browser_link` <- this_object$`genome_browser_link`
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FilesFilesets in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FilesFilesets
    #'
    #' @param input_json the JSON input
    #' @return the instance of FilesFilesets
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`file_set_id` <- this_object$`file_set_id`
      self$`lab` <- this_object$`lab`
      self$`preferred_assay_titles` <- ApiClient$new()$deserializeObj(this_object$`preferred_assay_titles`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`assay_term_ids` <- ApiClient$new()$deserializeObj(this_object$`assay_term_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`software` <- ApiClient$new()$deserializeObj(this_object$`software`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`samples` <- ApiClient$new()$deserializeObj(this_object$`samples`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`sample_ids` <- ApiClient$new()$deserializeObj(this_object$`sample_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`simple_sample_summaries` <- ApiClient$new()$deserializeObj(this_object$`simple_sample_summaries`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`donors` <- ApiClient$new()$deserializeObj(this_object$`donors`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`download_link` <- this_object$`download_link`
      self$`cell_annotation` <- this_object$`cell_annotation`
      self$`cell_annotation_term` <- this_object$`cell_annotation_term`
      self$`genome_browser_link` <- this_object$`genome_browser_link`
      self$`perturbation` <- this_object$`perturbation`
      self
    },

    #' @description
    #' Validate JSON input with respect to FilesFilesets and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for FilesFilesets: the required field `_id` is missing."))
      }
      # check the required field `file_set_id`
      if (!is.null(input_json$`file_set_id`)) {
        if (!(is.character(input_json$`file_set_id`) && length(input_json$`file_set_id`) == 1)) {
          stop(paste("Error! Invalid data for `file_set_id`. Must be a string:", input_json$`file_set_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FilesFilesets: the required field `file_set_id` is missing."))
      }
      # check the required field `lab`
      if (!is.null(input_json$`lab`)) {
        if (!(is.character(input_json$`lab`) && length(input_json$`lab`) == 1)) {
          stop(paste("Error! Invalid data for `lab`. Must be a string:", input_json$`lab`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FilesFilesets: the required field `lab` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FilesFilesets: the required field `class` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FilesFilesets: the required field `source` is missing."))
      }
      # check the required field `download_link`
      if (!is.null(input_json$`download_link`)) {
        if (!(is.character(input_json$`download_link`) && length(input_json$`download_link`) == 1)) {
          stop(paste("Error! Invalid data for `download_link`. Must be a string:", input_json$`download_link`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FilesFilesets: the required field `download_link` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FilesFilesets
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

      # check if the required `file_set_id` is null
      if (is.null(self$`file_set_id`)) {
        return(FALSE)
      }

      # check if the required `lab` is null
      if (is.null(self$`lab`)) {
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

      # check if the required `download_link` is null
      if (is.null(self$`download_link`)) {
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

      # check if the required `file_set_id` is null
      if (is.null(self$`file_set_id`)) {
        invalid_fields["file_set_id"] <- "Non-nullable required field `file_set_id` cannot be null."
      }

      # check if the required `lab` is null
      if (is.null(self$`lab`)) {
        invalid_fields["lab"] <- "Non-nullable required field `lab` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `download_link` is null
      if (is.null(self$`download_link`)) {
        invalid_fields["download_link"] <- "Non-nullable required field `download_link` cannot be null."
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
# FilesFilesets$unlock()
#
## Below is an example to define the print function
# FilesFilesets$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FilesFilesets$lock()

