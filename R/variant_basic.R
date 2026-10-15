#' Create a new VariantBasic
#'
#' @description
#' VariantBasic Class
#'
#' @docType class
#' @title VariantBasic
#' @description VariantBasic Class
#' @format An \code{R6Class} generator object
#' @field chr  character
#' @field pos  numeric
#' @field ref  character
#' @field alt  character
#' @field rsid  list(character) [optional]
#' @field spdi  character [optional]
#' @field hgvs  character [optional]
#' @field ca_id  character [optional]
#' @field _id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantBasic <- R6::R6Class(
  "VariantBasic",
  public = list(
    `chr` = NULL,
    `pos` = NULL,
    `ref` = NULL,
    `alt` = NULL,
    `rsid` = NULL,
    `spdi` = NULL,
    `hgvs` = NULL,
    `ca_id` = NULL,
    `_id` = NULL,

    #' @description
    #' Initialize a new VariantBasic class.
    #'
    #' @param chr chr
    #' @param pos pos
    #' @param ref ref
    #' @param alt alt
    #' @param rsid rsid
    #' @param spdi spdi
    #' @param hgvs hgvs
    #' @param ca_id ca_id
    #' @param _id _id
    #' @param ... Other optional arguments.
    initialize = function(`chr`, `pos`, `ref`, `alt`, `rsid` = NULL, `spdi` = NULL, `hgvs` = NULL, `ca_id` = NULL, `_id` = NULL, ...) {
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
      if (!is.null(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
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
    #' @return VariantBasic as a base R list.
    #' @examples
    #' # convert array of VariantBasic (x) to a data frame
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
    #' Convert VariantBasic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantBasicObject <- list()
      if (!is.null(self$`chr`)) {
        VariantBasicObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`pos`)) {
        VariantBasicObject[["pos"]] <-
          self$`pos`
      }
      if (!is.null(self$`ref`)) {
        VariantBasicObject[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        VariantBasicObject[["alt"]] <-
          self$`alt`
      }
      if (!is.null(self$`rsid`)) {
        VariantBasicObject[["rsid"]] <-
          self$`rsid`
      }
      if (!is.null(self$`spdi`)) {
        VariantBasicObject[["spdi"]] <-
          self$`spdi`
      }
      if (!is.null(self$`hgvs`)) {
        VariantBasicObject[["hgvs"]] <-
          self$`hgvs`
      }
      if (!is.null(self$`ca_id`)) {
        VariantBasicObject[["ca_id"]] <-
          self$`ca_id`
      }
      if (!is.null(self$`_id`)) {
        VariantBasicObject[["_id"]] <-
          self$`_id`
      }
      return(VariantBasicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantBasic
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantBasic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`pos`)) {
        self$`pos` <- this_object$`pos`
      }
      if (!is.null(this_object$`ref`)) {
        self$`ref` <- this_object$`ref`
      }
      if (!is.null(this_object$`alt`)) {
        self$`alt` <- this_object$`alt`
      }
      if (!is.null(this_object$`rsid`)) {
        self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
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
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VariantBasic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantBasic
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantBasic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chr` <- this_object$`chr`
      self$`pos` <- this_object$`pos`
      self$`ref` <- this_object$`ref`
      self$`alt` <- this_object$`alt`
      self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`spdi` <- this_object$`spdi`
      self$`hgvs` <- this_object$`hgvs`
      self$`ca_id` <- this_object$`ca_id`
      self$`_id` <- this_object$`_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to VariantBasic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantBasic: the required field `chr` is missing."))
      }
      # check the required field `pos`
      if (!is.null(input_json$`pos`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantBasic: the required field `pos` is missing."))
      }
      # check the required field `ref`
      if (!is.null(input_json$`ref`)) {
        if (!(is.character(input_json$`ref`) && length(input_json$`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", input_json$`ref`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantBasic: the required field `ref` is missing."))
      }
      # check the required field `alt`
      if (!is.null(input_json$`alt`)) {
        if (!(is.character(input_json$`alt`) && length(input_json$`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", input_json$`alt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantBasic: the required field `alt` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VariantBasic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# VariantBasic$unlock()
#
## Below is an example to define the print function
# VariantBasic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VariantBasic$lock()

