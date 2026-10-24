#' Create a new Transcript
#'
#' @description
#' Transcript Class
#'
#' @docType class
#' @title Transcript
#' @description Transcript Class
#' @format An \code{R6Class} generator object
#' @field _id  character [optional]
#' @field transcript_type  character [optional]
#' @field chr  character [optional]
#' @field start  numeric [optional]
#' @field end  numeric [optional]
#' @field strand  character [optional]
#' @field name  character [optional]
#' @field gene_name  character [optional]
#' @field refseq_transcript_ids  list(character) [optional]
#' @field MANE_Select  character [optional]
#' @field source  character [optional]
#' @field version  character [optional]
#' @field source_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Transcript <- R6::R6Class(
  "Transcript",
  public = list(
    `_id` = NULL,
    `transcript_type` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `strand` = NULL,
    `name` = NULL,
    `gene_name` = NULL,
    `refseq_transcript_ids` = NULL,
    `MANE_Select` = NULL,
    `source` = NULL,
    `version` = NULL,
    `source_url` = NULL,

    #' @description
    #' Initialize a new Transcript class.
    #'
    #' @param _id _id
    #' @param transcript_type transcript_type
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param strand strand
    #' @param name name
    #' @param gene_name gene_name
    #' @param refseq_transcript_ids refseq_transcript_ids
    #' @param MANE_Select MANE_Select
    #' @param source source
    #' @param version version
    #' @param source_url source_url
    #' @param ... Other optional arguments.
    initialize = function(`_id` = NULL, `transcript_type` = NULL, `chr` = NULL, `start` = NULL, `end` = NULL, `strand` = NULL, `name` = NULL, `gene_name` = NULL, `refseq_transcript_ids` = NULL, `MANE_Select` = NULL, `source` = NULL, `version` = NULL, `source_url` = NULL, ...) {
      if (!is.null(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!is.null(`transcript_type`)) {
        if (!(is.character(`transcript_type`) && length(`transcript_type`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_type`. Must be a string:", `transcript_type`))
        }
        self$`transcript_type` <- `transcript_type`
      }
      if (!is.null(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!is.null(`start`)) {
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        self$`end` <- `end`
      }
      if (!is.null(`strand`)) {
        if (!(is.character(`strand`) && length(`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", `strand`))
        }
        self$`strand` <- `strand`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!is.null(`refseq_transcript_ids`)) {
        stopifnot(is.vector(`refseq_transcript_ids`), length(`refseq_transcript_ids`) != 0)
        sapply(`refseq_transcript_ids`, function(x) stopifnot(is.character(x)))
        self$`refseq_transcript_ids` <- `refseq_transcript_ids`
      }
      if (!is.null(`MANE_Select`)) {
        if (!(is.logical(`MANE_Select`) && length(`MANE_Select`) == 1)) {
          stop(paste("Error! Invalid data for `MANE_Select`. Must be a boolean:", `MANE_Select`))
        }
        self$`MANE_Select` <- `MANE_Select`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
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
    #' @return Transcript as a base R list.
    #' @examples
    #' # convert array of Transcript (x) to a data frame
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
    #' Convert Transcript to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TranscriptObject <- list()
      if (!is.null(self$`_id`)) {
        TranscriptObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`transcript_type`)) {
        TranscriptObject[["transcript_type"]] <-
          self$`transcript_type`
      }
      if (!is.null(self$`chr`)) {
        TranscriptObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        TranscriptObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        TranscriptObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`strand`)) {
        TranscriptObject[["strand"]] <-
          self$`strand`
      }
      if (!is.null(self$`name`)) {
        TranscriptObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`gene_name`)) {
        TranscriptObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`refseq_transcript_ids`)) {
        TranscriptObject[["refseq_transcript_ids"]] <-
          self$`refseq_transcript_ids`
      }
      if (!is.null(self$`MANE_Select`)) {
        TranscriptObject[["MANE_Select"]] <-
          self$`MANE_Select`
      }
      if (!is.null(self$`source`)) {
        TranscriptObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`version`)) {
        TranscriptObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`source_url`)) {
        TranscriptObject[["source_url"]] <-
          self$`source_url`
      }
      return(TranscriptObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Transcript
    #'
    #' @param input_json the JSON input
    #' @return the instance of Transcript
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`transcript_type`)) {
        self$`transcript_type` <- this_object$`transcript_type`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`strand`)) {
        self$`strand` <- this_object$`strand`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`refseq_transcript_ids`)) {
        self$`refseq_transcript_ids` <- ApiClient$new()$deserializeObj(this_object$`refseq_transcript_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`MANE_Select`)) {
        self$`MANE_Select` <- this_object$`MANE_Select`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
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
    #' @return Transcript in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Transcript
    #'
    #' @param input_json the JSON input
    #' @return the instance of Transcript
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`transcript_type` <- this_object$`transcript_type`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`strand` <- this_object$`strand`
      self$`name` <- this_object$`name`
      self$`gene_name` <- this_object$`gene_name`
      self$`refseq_transcript_ids` <- ApiClient$new()$deserializeObj(this_object$`refseq_transcript_ids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`MANE_Select` <- this_object$`MANE_Select`
      self$`source` <- this_object$`source`
      self$`version` <- this_object$`version`
      self$`source_url` <- this_object$`source_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to Transcript and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Transcript
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
# Transcript$unlock()
#
## Below is an example to define the print function
# Transcript$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Transcript$lock()

