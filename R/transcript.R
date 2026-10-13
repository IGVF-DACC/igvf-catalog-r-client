#' Create a new Transcript
#'
#' @description
#' Transcript Class
#'
#' @docType class
#' @title Transcript
#' @description Transcript Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field transcript_type  character
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @field strand  character
#' @field name  character
#' @field gene_name  character
#' @field refseq_transcript_ids  list(character) [optional]
#' @field MANE_Select  character [optional]
#' @field source  character
#' @field version  character
#' @field source_url  character
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
    #' @param source source
    #' @param version version
    #' @param source_url source_url
    #' @param refseq_transcript_ids refseq_transcript_ids
    #' @param MANE_Select MANE_Select
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `transcript_type`, `chr`, `start`, `end`, `strand`, `name`, `gene_name`, `source`, `version`, `source_url`, `refseq_transcript_ids` = NULL, `MANE_Select` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`transcript_type`)) {
        if (!(is.character(`transcript_type`) && length(`transcript_type`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_type`. Must be a string:", `transcript_type`))
        }
        self$`transcript_type` <- `transcript_type`
      }
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!missing(`start`)) {
        self$`start` <- `start`
      }
      if (!missing(`end`)) {
        self$`end` <- `end`
      }
      if (!missing(`strand`)) {
        if (!(is.character(`strand`) && length(`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", `strand`))
        }
        self$`strand` <- `strand`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!missing(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
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
      # check the required field `_id`
      if (!is.null(input_json$`_id`)) {
        if (!(is.character(input_json$`_id`) && length(input_json$`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", input_json$`_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `_id` is missing."))
      }
      # check the required field `transcript_type`
      if (!is.null(input_json$`transcript_type`)) {
        if (!(is.character(input_json$`transcript_type`) && length(input_json$`transcript_type`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_type`. Must be a string:", input_json$`transcript_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `transcript_type` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `end` is missing."))
      }
      # check the required field `strand`
      if (!is.null(input_json$`strand`)) {
        if (!(is.character(input_json$`strand`) && length(input_json$`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", input_json$`strand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `strand` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `name` is missing."))
      }
      # check the required field `gene_name`
      if (!is.null(input_json$`gene_name`)) {
        if (!(is.character(input_json$`gene_name`) && length(input_json$`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", input_json$`gene_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `gene_name` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `source` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `version` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transcript: the required field `source_url` is missing."))
      }
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        return(FALSE)
      }

      # check if the required `transcript_type` is null
      if (is.null(self$`transcript_type`)) {
        return(FALSE)
      }

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      # check if the required `end` is null
      if (is.null(self$`end`)) {
        return(FALSE)
      }

      # check if the required `strand` is null
      if (is.null(self$`strand`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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

      # check if the required `transcript_type` is null
      if (is.null(self$`transcript_type`)) {
        invalid_fields["transcript_type"] <- "Non-nullable required field `transcript_type` cannot be null."
      }

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
      }

      # check if the required `strand` is null
      if (is.null(self$`strand`)) {
        invalid_fields["strand"] <- "Non-nullable required field `strand` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        invalid_fields["gene_name"] <- "Non-nullable required field `gene_name` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# Transcript$unlock()
#
## Below is an example to define the print function
# Transcript$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Transcript$lock()

