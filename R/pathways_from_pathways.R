#' Create a new PathwaysFromPathways
#'
#' @description
#' PathwaysFromPathways Class
#'
#' @docType class
#' @title PathwaysFromPathways
#' @description PathwaysFromPathways Class
#' @format An \code{R6Class} generator object
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field orgnism  character [optional]
#' @field organism  character [optional]
#' @field class  character [optional]
#' @field method  character [optional]
#' @field label  character [optional]
#' @field files_filesets  character [optional]
#' @field parent_pathway  \link{GenesFromPathwaysPathway} [optional]
#' @field child_pathway  \link{GenesFromPathwaysPathway} [optional]
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PathwaysFromPathways <- R6::R6Class(
  "PathwaysFromPathways",
  public = list(
    `source` = NULL,
    `source_url` = NULL,
    `orgnism` = NULL,
    `organism` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `parent_pathway` = NULL,
    `child_pathway` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new PathwaysFromPathways class.
    #'
    #' @param name name
    #' @param source source
    #' @param source_url source_url
    #' @param orgnism orgnism
    #' @param organism organism
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param parent_pathway parent_pathway
    #' @param child_pathway child_pathway
    #' @param ... Other optional arguments.
    initialize = function(`name`, `source` = NULL, `source_url` = NULL, `orgnism` = NULL, `organism` = NULL, `class` = NULL, `method` = NULL, `label` = NULL, `files_filesets` = NULL, `parent_pathway` = NULL, `child_pathway` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`orgnism`)) {
        if (!(is.character(`orgnism`) && length(`orgnism`) == 1)) {
          stop(paste("Error! Invalid data for `orgnism`. Must be a string:", `orgnism`))
        }
        self$`orgnism` <- `orgnism`
      }
      if (!is.null(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
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
      if (!is.null(`parent_pathway`)) {
        stopifnot(R6::is.R6(`parent_pathway`))
        self$`parent_pathway` <- `parent_pathway`
      }
      if (!is.null(`child_pathway`)) {
        stopifnot(R6::is.R6(`child_pathway`))
        self$`child_pathway` <- `child_pathway`
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
    #' @return PathwaysFromPathways as a base R list.
    #' @examples
    #' # convert array of PathwaysFromPathways (x) to a data frame
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
    #' Convert PathwaysFromPathways to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PathwaysFromPathwaysObject <- list()
      if (!is.null(self$`source`)) {
        PathwaysFromPathwaysObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        PathwaysFromPathwaysObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`orgnism`)) {
        PathwaysFromPathwaysObject[["orgnism"]] <-
          self$`orgnism`
      }
      if (!is.null(self$`organism`)) {
        PathwaysFromPathwaysObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`class`)) {
        PathwaysFromPathwaysObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        PathwaysFromPathwaysObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        PathwaysFromPathwaysObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        PathwaysFromPathwaysObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`parent_pathway`)) {
        PathwaysFromPathwaysObject[["parent_pathway"]] <-
          self$`parent_pathway`$toSimpleType()
      }
      if (!is.null(self$`child_pathway`)) {
        PathwaysFromPathwaysObject[["child_pathway"]] <-
          self$`child_pathway`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        PathwaysFromPathwaysObject[["name"]] <-
          self$`name`
      }
      return(PathwaysFromPathwaysObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PathwaysFromPathways
    #'
    #' @param input_json the JSON input
    #' @return the instance of PathwaysFromPathways
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`orgnism`)) {
        self$`orgnism` <- this_object$`orgnism`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
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
      if (!is.null(this_object$`parent_pathway`)) {
        `parent_pathway_object` <- GenesFromPathwaysPathway$new()
        `parent_pathway_object`$fromJSON(jsonlite::toJSON(this_object$`parent_pathway`, auto_unbox = TRUE, digits = NA))
        self$`parent_pathway` <- `parent_pathway_object`
      }
      if (!is.null(this_object$`child_pathway`)) {
        `child_pathway_object` <- GenesFromPathwaysPathway$new()
        `child_pathway_object`$fromJSON(jsonlite::toJSON(this_object$`child_pathway`, auto_unbox = TRUE, digits = NA))
        self$`child_pathway` <- `child_pathway_object`
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
    #' @return PathwaysFromPathways in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PathwaysFromPathways
    #'
    #' @param input_json the JSON input
    #' @return the instance of PathwaysFromPathways
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`orgnism` <- this_object$`orgnism`
      self$`organism` <- this_object$`organism`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`parent_pathway` <- GenesFromPathwaysPathway$new()$fromJSON(jsonlite::toJSON(this_object$`parent_pathway`, auto_unbox = TRUE, digits = NA))
      self$`child_pathway` <- GenesFromPathwaysPathway$new()$fromJSON(jsonlite::toJSON(this_object$`child_pathway`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to PathwaysFromPathways and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PathwaysFromPathways: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PathwaysFromPathways
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
# PathwaysFromPathways$unlock()
#
## Below is an example to define the print function
# PathwaysFromPathways$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PathwaysFromPathways$lock()

