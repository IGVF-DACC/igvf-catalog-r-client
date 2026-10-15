#' Create a new Gene
#'
#' @description
#' Gene Class
#'
#' @docType class
#' @title Gene
#' @description Gene Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @field gene_type  character
#' @field name  character
#' @field strand  character [optional]
#' @field hgnc  character [optional]
#' @field entrez  character [optional]
#' @field collections  list(character) [optional]
#' @field study_sets  list(character) [optional]
#' @field source  character
#' @field version  character
#' @field source_url  character
#' @field synonyms  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Gene <- R6::R6Class(
  "Gene",
  public = list(
    `_id` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,
    `gene_type` = NULL,
    `name` = NULL,
    `strand` = NULL,
    `hgnc` = NULL,
    `entrez` = NULL,
    `collections` = NULL,
    `study_sets` = NULL,
    `source` = NULL,
    `version` = NULL,
    `source_url` = NULL,
    `synonyms` = NULL,

    #' @description
    #' Initialize a new Gene class.
    #'
    #' @param _id _id
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param gene_type gene_type
    #' @param name name
    #' @param source source
    #' @param version version
    #' @param source_url source_url
    #' @param strand strand
    #' @param hgnc hgnc
    #' @param entrez entrez
    #' @param collections collections
    #' @param study_sets study_sets
    #' @param synonyms synonyms
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `chr`, `start`, `end`, `gene_type`, `name`, `source`, `version`, `source_url`, `strand` = NULL, `hgnc` = NULL, `entrez` = NULL, `collections` = NULL, `study_sets` = NULL, `synonyms` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
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
      if (!missing(`gene_type`)) {
        if (!(is.character(`gene_type`) && length(`gene_type`) == 1)) {
          stop(paste("Error! Invalid data for `gene_type`. Must be a string:", `gene_type`))
        }
        self$`gene_type` <- `gene_type`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`strand`)) {
        if (!(is.character(`strand`) && length(`strand`) == 1)) {
          stop(paste("Error! Invalid data for `strand`. Must be a string:", `strand`))
        }
        self$`strand` <- `strand`
      }
      if (!is.null(`hgnc`)) {
        if (!(is.character(`hgnc`) && length(`hgnc`) == 1)) {
          stop(paste("Error! Invalid data for `hgnc`. Must be a string:", `hgnc`))
        }
        self$`hgnc` <- `hgnc`
      }
      if (!is.null(`entrez`)) {
        if (!(is.character(`entrez`) && length(`entrez`) == 1)) {
          stop(paste("Error! Invalid data for `entrez`. Must be a string:", `entrez`))
        }
        self$`entrez` <- `entrez`
      }
      if (!is.null(`collections`)) {
        stopifnot(is.vector(`collections`), length(`collections`) != 0)
        sapply(`collections`, function(x) stopifnot(is.character(x)))
        self$`collections` <- `collections`
      }
      if (!is.null(`study_sets`)) {
        stopifnot(is.vector(`study_sets`), length(`study_sets`) != 0)
        sapply(`study_sets`, function(x) stopifnot(is.character(x)))
        self$`study_sets` <- `study_sets`
      }
      if (!is.null(`synonyms`)) {
        stopifnot(is.vector(`synonyms`), length(`synonyms`) != 0)
        sapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
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
    #' @return Gene as a base R list.
    #' @examples
    #' # convert array of Gene (x) to a data frame
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
    #' Convert Gene to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeneObject <- list()
      if (!is.null(self$`_id`)) {
        GeneObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`chr`)) {
        GeneObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        GeneObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        GeneObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`gene_type`)) {
        GeneObject[["gene_type"]] <-
          self$`gene_type`
      }
      if (!is.null(self$`name`)) {
        GeneObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`strand`)) {
        GeneObject[["strand"]] <-
          self$`strand`
      }
      if (!is.null(self$`hgnc`)) {
        GeneObject[["hgnc"]] <-
          self$`hgnc`
      }
      if (!is.null(self$`entrez`)) {
        GeneObject[["entrez"]] <-
          self$`entrez`
      }
      if (!is.null(self$`collections`)) {
        GeneObject[["collections"]] <-
          self$`collections`
      }
      if (!is.null(self$`study_sets`)) {
        GeneObject[["study_sets"]] <-
          self$`study_sets`
      }
      if (!is.null(self$`source`)) {
        GeneObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`version`)) {
        GeneObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`source_url`)) {
        GeneObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`synonyms`)) {
        GeneObject[["synonyms"]] <-
          self$`synonyms`
      }
      return(GeneObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Gene
    #'
    #' @param input_json the JSON input
    #' @return the instance of Gene
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
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
      if (!is.null(this_object$`gene_type`)) {
        self$`gene_type` <- this_object$`gene_type`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`strand`)) {
        self$`strand` <- this_object$`strand`
      }
      if (!is.null(this_object$`hgnc`)) {
        self$`hgnc` <- this_object$`hgnc`
      }
      if (!is.null(this_object$`entrez`)) {
        self$`entrez` <- this_object$`entrez`
      }
      if (!is.null(this_object$`collections`)) {
        self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`study_sets`)) {
        self$`study_sets` <- ApiClient$new()$deserializeObj(this_object$`study_sets`, "array[character]", loadNamespace("igvfcatalogclient"))
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
      if (!is.null(this_object$`synonyms`)) {
        self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Gene in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Gene
    #'
    #' @param input_json the JSON input
    #' @return the instance of Gene
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`gene_type` <- this_object$`gene_type`
      self$`name` <- this_object$`name`
      self$`strand` <- this_object$`strand`
      self$`hgnc` <- this_object$`hgnc`
      self$`entrez` <- this_object$`entrez`
      self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`study_sets` <- ApiClient$new()$deserializeObj(this_object$`study_sets`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`source` <- this_object$`source`
      self$`version` <- this_object$`version`
      self$`source_url` <- this_object$`source_url`
      self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("igvfcatalogclient"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Gene and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `_id` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `end` is missing."))
      }
      # check the required field `gene_type`
      if (!is.null(input_json$`gene_type`)) {
        if (!(is.character(input_json$`gene_type`) && length(input_json$`gene_type`) == 1)) {
          stop(paste("Error! Invalid data for `gene_type`. Must be a string:", input_json$`gene_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `gene_type` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `name` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `source` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `version` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Gene: the required field `source_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Gene
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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

      # check if the required `chr` is null
      if (is.null(self$`chr`)) {
        invalid_fields["chr"] <- "Non-nullable required field `chr` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# Gene$unlock()
#
## Below is an example to define the print function
# Gene$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Gene$lock()

