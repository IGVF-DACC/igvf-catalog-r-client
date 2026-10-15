#' Create a new SequenceVariant9
#'
#' @description
#' SequenceVariant9 Class
#'
#' @docType class
#' @title SequenceVariant9
#' @description SequenceVariant9 Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field chr  character
#' @field pos  numeric
#' @field rsid  list(character) [optional]
#' @field ref  character
#' @field alt  character
#' @field spdi  character
#' @field hgvs  character
#' @field ca_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SequenceVariant9 <- R6::R6Class(
  "SequenceVariant9",
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

    #' @description
    #' Initialize a new SequenceVariant9 class.
    #'
    #' @param _id _id
    #' @param chr chr
    #' @param pos pos
    #' @param ref ref
    #' @param alt alt
    #' @param spdi spdi
    #' @param hgvs hgvs
    #' @param rsid rsid
    #' @param ca_id ca_id
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `chr`, `pos`, `ref`, `alt`, `spdi`, `hgvs`, `rsid` = NULL, `ca_id` = NULL, ...) {
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
      if (!missing(`spdi`)) {
        if (!(is.character(`spdi`) && length(`spdi`) == 1)) {
          stop(paste("Error! Invalid data for `spdi`. Must be a string:", `spdi`))
        }
        self$`spdi` <- `spdi`
      }
      if (!missing(`hgvs`)) {
        if (!(is.character(`hgvs`) && length(`hgvs`) == 1)) {
          stop(paste("Error! Invalid data for `hgvs`. Must be a string:", `hgvs`))
        }
        self$`hgvs` <- `hgvs`
      }
      if (!is.null(`rsid`)) {
        stopifnot(is.vector(`rsid`), length(`rsid`) != 0)
        sapply(`rsid`, function(x) stopifnot(is.character(x)))
        self$`rsid` <- `rsid`
      }
      if (!is.null(`ca_id`)) {
        if (!(is.character(`ca_id`) && length(`ca_id`) == 1)) {
          stop(paste("Error! Invalid data for `ca_id`. Must be a string:", `ca_id`))
        }
        self$`ca_id` <- `ca_id`
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
    #' @return SequenceVariant9 as a base R list.
    #' @examples
    #' # convert array of SequenceVariant9 (x) to a data frame
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
    #' Convert SequenceVariant9 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SequenceVariant9Object <- list()
      if (!is.null(self$`_id`)) {
        SequenceVariant9Object[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`chr`)) {
        SequenceVariant9Object[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`pos`)) {
        SequenceVariant9Object[["pos"]] <-
          self$`pos`
      }
      if (!is.null(self$`rsid`)) {
        SequenceVariant9Object[["rsid"]] <-
          self$`rsid`
      }
      if (!is.null(self$`ref`)) {
        SequenceVariant9Object[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        SequenceVariant9Object[["alt"]] <-
          self$`alt`
      }
      if (!is.null(self$`spdi`)) {
        SequenceVariant9Object[["spdi"]] <-
          self$`spdi`
      }
      if (!is.null(self$`hgvs`)) {
        SequenceVariant9Object[["hgvs"]] <-
          self$`hgvs`
      }
      if (!is.null(self$`ca_id`)) {
        SequenceVariant9Object[["ca_id"]] <-
          self$`ca_id`
      }
      return(SequenceVariant9Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of SequenceVariant9
    #'
    #' @param input_json the JSON input
    #' @return the instance of SequenceVariant9
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SequenceVariant9 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SequenceVariant9
    #'
    #' @param input_json the JSON input
    #' @return the instance of SequenceVariant9
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
      self
    },

    #' @description
    #' Validate JSON input with respect to SequenceVariant9 and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `_id` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `chr` is missing."))
      }
      # check the required field `pos`
      if (!is.null(input_json$`pos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `pos` is missing."))
      }
      # check the required field `ref`
      if (!is.null(input_json$`ref`)) {
        if (!(is.character(input_json$`ref`) && length(input_json$`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", input_json$`ref`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `ref` is missing."))
      }
      # check the required field `alt`
      if (!is.null(input_json$`alt`)) {
        if (!(is.character(input_json$`alt`) && length(input_json$`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", input_json$`alt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `alt` is missing."))
      }
      # check the required field `spdi`
      if (!is.null(input_json$`spdi`)) {
        if (!(is.character(input_json$`spdi`) && length(input_json$`spdi`) == 1)) {
          stop(paste("Error! Invalid data for `spdi`. Must be a string:", input_json$`spdi`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `spdi` is missing."))
      }
      # check the required field `hgvs`
      if (!is.null(input_json$`hgvs`)) {
        if (!(is.character(input_json$`hgvs`) && length(input_json$`hgvs`) == 1)) {
          stop(paste("Error! Invalid data for `hgvs`. Must be a string:", input_json$`hgvs`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SequenceVariant9: the required field `hgvs` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SequenceVariant9
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

      # check if the required `spdi` is null
      if (is.null(self$`spdi`)) {
        return(FALSE)
      }

      # check if the required `hgvs` is null
      if (is.null(self$`hgvs`)) {
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

      # check if the required `spdi` is null
      if (is.null(self$`spdi`)) {
        invalid_fields["spdi"] <- "Non-nullable required field `spdi` cannot be null."
      }

      # check if the required `hgvs` is null
      if (is.null(self$`hgvs`)) {
        invalid_fields["hgvs"] <- "Non-nullable required field `hgvs` cannot be null."
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
# SequenceVariant9$unlock()
#
## Below is an example to define the print function
# SequenceVariant9$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SequenceVariant9$lock()

