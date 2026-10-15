#' Create a new SequenceVariant
#'
#' @description
#' SequenceVariant Class
#'
#' @docType class
#' @title SequenceVariant
#' @description SequenceVariant Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field chr  character
#' @field pos  numeric
#' @field rsid  list(character) [optional]
#' @field ref  character
#' @field alt  character
#' @field spdi  character [optional]
#' @field hgvs  character [optional]
#' @field ca_id  character [optional]
#' @field strain  list(character) [optional]
#' @field qual  character [optional]
#' @field files_filesets  character [optional]
#' @field annotations  \link{VariantAnnotations}
#' @field source  character
#' @field source_url  character
#' @field organism  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SequenceVariant <- R6::R6Class(
  "SequenceVariant",
  public = list(
    `_id` = NULL,
    `chr` = NULL,
    `pos` = NULL,
    `rsid` = NULL,
    `ref` = NULL,
    `alt` = NULL,
    `spdi` = NULL,
    `hgvs` = NULL,
    `ca_id` = NULL,
    `strain` = NULL,
    `qual` = NULL,
    `files_filesets` = NULL,
    `annotations` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `organism` = NULL,

    #' @description
    #' Initialize a new SequenceVariant class.
    #'
    #' @param _id _id
    #' @param chr chr
    #' @param pos pos
    #' @param ref ref
    #' @param alt alt
    #' @param annotations annotations
    #' @param source source
    #' @param source_url source_url
    #' @param organism organism
    #' @param rsid rsid
    #' @param spdi spdi
    #' @param hgvs hgvs
    #' @param ca_id ca_id
    #' @param strain strain
    #' @param qual qual
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `chr`, `pos`, `ref`, `alt`, `annotations`, `source`, `source_url`, `organism`, `rsid` = NULL, `spdi` = NULL, `hgvs` = NULL, `ca_id` = NULL, `strain` = NULL, `qual` = NULL, `files_filesets` = NULL, ...) {
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
      if (!missing(`pos`)) {
        self$`pos` <- `pos`
      }
      if (!missing(`ref`)) {
        if (!(is.character(`ref`) && length(`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", `ref`))
        }
        self$`ref` <- `ref`
      }
      if (!missing(`alt`)) {
        if (!(is.character(`alt`) && length(`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", `alt`))
        }
        self$`alt` <- `alt`
      }
      if (!missing(`annotations`)) {
        stopifnot(R6::is.R6(`annotations`))
        self$`annotations` <- `annotations`
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
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
      }
      if (!is.null(`rsid`)) {
        stopifnot(is.vector(`rsid`), length(`rsid`) != 0)
        sapply(`rsid`, function(x) stopifnot(is.character(x)))
        self$`rsid` <- `rsid`
      }
      if (!is.null(`spdi`)) {
        if (!(is.character(`spdi`) && length(`spdi`) == 1)) {
          stop(paste("Error! Invalid data for `spdi`. Must be a string:", `spdi`))
        }
        self$`spdi` <- `spdi`
      }
      if (!is.null(`hgvs`)) {
        if (!(is.character(`hgvs`) && length(`hgvs`) == 1)) {
          stop(paste("Error! Invalid data for `hgvs`. Must be a string:", `hgvs`))
        }
        self$`hgvs` <- `hgvs`
      }
      if (!is.null(`ca_id`)) {
        if (!(is.character(`ca_id`) && length(`ca_id`) == 1)) {
          stop(paste("Error! Invalid data for `ca_id`. Must be a string:", `ca_id`))
        }
        self$`ca_id` <- `ca_id`
      }
      if (!is.null(`strain`)) {
        stopifnot(is.vector(`strain`), length(`strain`) != 0)
        sapply(`strain`, function(x) stopifnot(is.character(x)))
        self$`strain` <- `strain`
      }
      if (!is.null(`qual`)) {
        if (!(is.character(`qual`) && length(`qual`) == 1)) {
          stop(paste("Error! Invalid data for `qual`. Must be a string:", `qual`))
        }
        self$`qual` <- `qual`
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
    #' @return SequenceVariant as a base R list.
    #' @examples
    #' # convert array of SequenceVariant (x) to a data frame
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
    #' Convert SequenceVariant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SequenceVariantObject <- list()
      if (!is.null(self$`_id`)) {
        SequenceVariantObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`chr`)) {
        SequenceVariantObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`pos`)) {
        SequenceVariantObject[["pos"]] <-
          self$`pos`
      }
      if (!is.null(self$`rsid`)) {
        SequenceVariantObject[["rsid"]] <-
          self$`rsid`
      }
      if (!is.null(self$`ref`)) {
        SequenceVariantObject[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        SequenceVariantObject[["alt"]] <-
          self$`alt`
      }
      if (!is.null(self$`spdi`)) {
        SequenceVariantObject[["spdi"]] <-
          self$`spdi`
      }
      if (!is.null(self$`hgvs`)) {
        SequenceVariantObject[["hgvs"]] <-
          self$`hgvs`
      }
      if (!is.null(self$`ca_id`)) {
        SequenceVariantObject[["ca_id"]] <-
          self$`ca_id`
      }
      if (!is.null(self$`strain`)) {
        SequenceVariantObject[["strain"]] <-
          self$`strain`
      }
      if (!is.null(self$`qual`)) {
        SequenceVariantObject[["qual"]] <-
          self$`qual`
      }
      if (!is.null(self$`files_filesets`)) {
        SequenceVariantObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`annotations`)) {
        SequenceVariantObject[["annotations"]] <-
          self$`annotations`$toSimpleType()
      }
      if (!is.null(self$`source`)) {
        SequenceVariantObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        SequenceVariantObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`organism`)) {
        SequenceVariantObject[["organism"]] <-
          self$`organism`
      }
      return(SequenceVariantObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SequenceVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of SequenceVariant
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`pos`)) {
        self$`pos` <- this_object$`pos`
      }
      if (!is.null(this_object$`rsid`)) {
        self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`ref`)) {
        self$`ref` <- this_object$`ref`
      }
      if (!is.null(this_object$`alt`)) {
        self$`alt` <- this_object$`alt`
      }
      if (!is.null(this_object$`spdi`)) {
        self$`spdi` <- this_object$`spdi`
      }
      if (!is.null(this_object$`hgvs`)) {
        self$`hgvs` <- this_object$`hgvs`
      }
      if (!is.null(this_object$`ca_id`)) {
        self$`ca_id` <- this_object$`ca_id`
      }
      if (!is.null(this_object$`strain`)) {
        self$`strain` <- ApiClient$new()$deserializeObj(this_object$`strain`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`qual`)) {
        self$`qual` <- this_object$`qual`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`annotations`)) {
        `annotations_object` <- VariantAnnotations$new()
        `annotations_object`$fromJSON(jsonlite::toJSON(this_object$`annotations`, auto_unbox = TRUE, digits = NA))
        self$`annotations` <- `annotations_object`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SequenceVariant in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SequenceVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of SequenceVariant
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`chr` <- this_object$`chr`
      self$`pos` <- this_object$`pos`
      self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`ref` <- this_object$`ref`
      self$`alt` <- this_object$`alt`
      self$`spdi` <- this_object$`spdi`
      self$`hgvs` <- this_object$`hgvs`
      self$`ca_id` <- this_object$`ca_id`
      self$`strain` <- ApiClient$new()$deserializeObj(this_object$`strain`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`qual` <- this_object$`qual`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`annotations` <- VariantAnnotations$new()$fromJSON(jsonlite::toJSON(this_object$`annotations`, auto_unbox = TRUE, digits = NA))
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`organism` <- this_object$`organism`
      self
    },

    #' @description
    #' Validate JSON input with respect to SequenceVariant and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `_id` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `chr` is missing."))
      }
      # check the required field `pos`
      if (!is.null(input_json$`pos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `pos` is missing."))
      }
      # check the required field `ref`
      if (!is.null(input_json$`ref`)) {
        if (!(is.character(input_json$`ref`) && length(input_json$`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", input_json$`ref`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `ref` is missing."))
      }
      # check the required field `alt`
      if (!is.null(input_json$`alt`)) {
        if (!(is.character(input_json$`alt`) && length(input_json$`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", input_json$`alt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `alt` is missing."))
      }
      # check the required field `annotations`
      if (!is.null(input_json$`annotations`)) {
        stopifnot(R6::is.R6(input_json$`annotations`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `annotations` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `source_url` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant: the required field `organism` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SequenceVariant
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

      # check if the required `pos` is null
      if (is.null(self$`pos`)) {
        return(FALSE)
      }

      # check if the required `ref` is null
      if (is.null(self$`ref`)) {
        return(FALSE)
      }

      # check if the required `alt` is null
      if (is.null(self$`alt`)) {
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

      # check if the required `pos` is null
      if (is.null(self$`pos`)) {
        invalid_fields["pos"] <- "Non-nullable required field `pos` cannot be null."
      }

      # check if the required `ref` is null
      if (is.null(self$`ref`)) {
        invalid_fields["ref"] <- "Non-nullable required field `ref` cannot be null."
      }

      # check if the required `alt` is null
      if (is.null(self$`alt`)) {
        invalid_fields["alt"] <- "Non-nullable required field `alt` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
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
# SequenceVariant$unlock()
#
## Below is an example to define the print function
# SequenceVariant$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SequenceVariant$lock()

