#' Create a new GenesStructure
#'
#' @description
#' GenesStructure Class
#'
#' @docType class
#' @title GenesStructure
#' @description GenesStructure Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @field strand  character
#' @field type  character
#' @field gene_id  character
#' @field gene_name  character
#' @field transcript_id  character
#' @field transcript_name  character
#' @field protein_id  character [optional]
#' @field exon_number  character
#' @field exon_id  character
#' @field organism  character
#' @field source  character
#' @field version  character
#' @field source_url  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenesStructure <- R6::R6Class(
  "GenesStructure",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `strand` = NULL,
    `type` = NULL,
    `gene_id` = NULL,
    `gene_name` = NULL,
    `transcript_id` = NULL,
    `transcript_name` = NULL,
    `protein_id` = NULL,
    `exon_number` = NULL,
    `exon_id` = NULL,
    `organism` = NULL,
    `source` = NULL,
    `version` = NULL,
    `source_url` = NULL,

    #' @description
    #' Initialize a new GenesStructure class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param strand strand
    #' @param type type
    #' @param gene_id gene_id
    #' @param gene_name gene_name
    #' @param transcript_id transcript_id
    #' @param transcript_name transcript_name
    #' @param exon_number exon_number
    #' @param exon_id exon_id
    #' @param organism organism
    #' @param source source
    #' @param version version
    #' @param source_url source_url
    #' @param protein_id protein_id
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `chr`, `start`, `end`, `strand`, `type`, `gene_id`, `gene_name`, `transcript_id`, `transcript_name`, `exon_number`, `exon_id`, `organism`, `source`, `version`, `source_url`, `protein_id` = NULL, ...) {
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
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
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
      if (!missing(`transcript_name`)) {
        if (!(is.character(`transcript_name`) && length(`transcript_name`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_name`. Must be a string:", `transcript_name`))
        }
        self$`transcript_name` <- `transcript_name`
      }
      if (!missing(`exon_number`)) {
        if (!(is.character(`exon_number`) && length(`exon_number`) == 1)) {
          stop(paste("Error! Invalid data for `exon_number`. Must be a string:", `exon_number`))
        }
        self$`exon_number` <- `exon_number`
      }
      if (!missing(`exon_id`)) {
        if (!(is.character(`exon_id`) && length(`exon_id`) == 1)) {
          stop(paste("Error! Invalid data for `exon_id`. Must be a string:", `exon_id`))
        }
        self$`exon_id` <- `exon_id`
      }
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
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
      if (!is.null(`protein_id`)) {
        if (!(is.character(`protein_id`) && length(`protein_id`) == 1)) {
          stop(paste("Error! Invalid data for `protein_id`. Must be a string:", `protein_id`))
        }
        self$`protein_id` <- `protein_id`
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
    #' @return GenesStructure as a base R list.
    #' @examples
    #' # convert array of GenesStructure (x) to a data frame
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
    #' Convert GenesStructure to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenesStructureObject <- list()
      if (!is.null(self$`_id`)) {
        GenesStructureObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        GenesStructureObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`chr`)) {
        GenesStructureObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        GenesStructureObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        GenesStructureObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`strand`)) {
        GenesStructureObject[["strand"]] <-
          self$`strand`
      }
      if (!is.null(self$`type`)) {
        GenesStructureObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`gene_id`)) {
        GenesStructureObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`gene_name`)) {
        GenesStructureObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`transcript_id`)) {
        GenesStructureObject[["transcript_id"]] <-
          self$`transcript_id`
      }
      if (!is.null(self$`transcript_name`)) {
        GenesStructureObject[["transcript_name"]] <-
          self$`transcript_name`
      }
      if (!is.null(self$`protein_id`)) {
        GenesStructureObject[["protein_id"]] <-
          self$`protein_id`
      }
      if (!is.null(self$`exon_number`)) {
        GenesStructureObject[["exon_number"]] <-
          self$`exon_number`
      }
      if (!is.null(self$`exon_id`)) {
        GenesStructureObject[["exon_id"]] <-
          self$`exon_id`
      }
      if (!is.null(self$`organism`)) {
        GenesStructureObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`source`)) {
        GenesStructureObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`version`)) {
        GenesStructureObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`source_url`)) {
        GenesStructureObject[["source_url"]] <-
          self$`source_url`
      }
      return(GenesStructureObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesStructure
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesStructure
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`transcript_id`)) {
        self$`transcript_id` <- this_object$`transcript_id`
      }
      if (!is.null(this_object$`transcript_name`)) {
        self$`transcript_name` <- this_object$`transcript_name`
      }
      if (!is.null(this_object$`protein_id`)) {
        self$`protein_id` <- this_object$`protein_id`
      }
      if (!is.null(this_object$`exon_number`)) {
        self$`exon_number` <- this_object$`exon_number`
      }
      if (!is.null(this_object$`exon_id`)) {
        self$`exon_id` <- this_object$`exon_id`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
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
    #' @return GenesStructure in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenesStructure
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenesStructure
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`strand` <- this_object$`strand`
      self$`type` <- this_object$`type`
      self$`gene_id` <- this_object$`gene_id`
      self$`gene_name` <- this_object$`gene_name`
      self$`transcript_id` <- this_object$`transcript_id`
      self$`transcript_name` <- this_object$`transcript_name`
      self$`protein_id` <- this_object$`protein_id`
      self$`exon_number` <- this_object$`exon_number`
      self$`exon_id` <- this_object$`exon_id`
      self$`organism` <- this_object$`organism`
      self$`source` <- this_object$`source`
      self$`version` <- this_object$`version`
      self$`source_url` <- this_object$`source_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenesStructure and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `name` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `end` is missing."))
      }
      # check the required field `strand`
      if (!is.null(input_json$`strand`)) {
        if (!(is.character(input_json$`strand`) && length(input_json$`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", input_json$`strand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `strand` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `type` is missing."))
      }
      # check the required field `gene_id`
      if (!is.null(input_json$`gene_id`)) {
        if (!(is.character(input_json$`gene_id`) && length(input_json$`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", input_json$`gene_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `gene_id` is missing."))
      }
      # check the required field `gene_name`
      if (!is.null(input_json$`gene_name`)) {
        if (!(is.character(input_json$`gene_name`) && length(input_json$`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", input_json$`gene_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `gene_name` is missing."))
      }
      # check the required field `transcript_id`
      if (!is.null(input_json$`transcript_id`)) {
        if (!(is.character(input_json$`transcript_id`) && length(input_json$`transcript_id`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_id`. Must be a string:", input_json$`transcript_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `transcript_id` is missing."))
      }
      # check the required field `transcript_name`
      if (!is.null(input_json$`transcript_name`)) {
        if (!(is.character(input_json$`transcript_name`) && length(input_json$`transcript_name`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_name`. Must be a string:", input_json$`transcript_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `transcript_name` is missing."))
      }
      # check the required field `exon_number`
      if (!is.null(input_json$`exon_number`)) {
        if (!(is.character(input_json$`exon_number`) && length(input_json$`exon_number`) == 1)) {
          stop(paste("Error! Invalid data for `exon_number`. Must be a string:", input_json$`exon_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `exon_number` is missing."))
      }
      # check the required field `exon_id`
      if (!is.null(input_json$`exon_id`)) {
        if (!(is.character(input_json$`exon_id`) && length(input_json$`exon_id`) == 1)) {
          stop(paste("Error! Invalid data for `exon_id`. Must be a string:", input_json$`exon_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `exon_id` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `organism` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `source` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `version` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenesStructure: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenesStructure
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `strand` is null
      if (is.null(self$`strand`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        return(FALSE)
      }

      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        return(FALSE)
      }

      # check if the required `transcript_id` is null
      if (is.null(self$`transcript_id`)) {
        return(FALSE)
      }

      # check if the required `transcript_name` is null
      if (is.null(self$`transcript_name`)) {
        return(FALSE)
      }

      # check if the required `exon_number` is null
      if (is.null(self$`exon_number`)) {
        return(FALSE)
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `strand` is null
      if (is.null(self$`strand`)) {
        invalid_fields["strand"] <- "Non-nullable required field `strand` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `gene_id` is null
      if (is.null(self$`gene_id`)) {
        invalid_fields["gene_id"] <- "Non-nullable required field `gene_id` cannot be null."
      }

      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        invalid_fields["gene_name"] <- "Non-nullable required field `gene_name` cannot be null."
      }

      # check if the required `transcript_id` is null
      if (is.null(self$`transcript_id`)) {
        invalid_fields["transcript_id"] <- "Non-nullable required field `transcript_id` cannot be null."
      }

      # check if the required `transcript_name` is null
      if (is.null(self$`transcript_name`)) {
        invalid_fields["transcript_name"] <- "Non-nullable required field `transcript_name` cannot be null."
      }

      # check if the required `exon_number` is null
      if (is.null(self$`exon_number`)) {
        invalid_fields["exon_number"] <- "Non-nullable required field `exon_number` cannot be null."
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        invalid_fields["organism"] <- "Non-nullable required field `organism` cannot be null."
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
# GenesStructure$unlock()
#
## Below is an example to define the print function
# GenesStructure$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenesStructure$lock()

