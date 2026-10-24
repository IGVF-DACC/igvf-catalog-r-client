#' Create a new Groups
#'
#' @description
#' Groups Class
#'
#' @docType class
#' @title Groups
#' @description Groups Class
#' @format An \code{R6Class} generator object
#' @field method  character
#' @field source  character
#' @field files_filesets  character
#' @field biosample_term  character
#' @field biological_context  character
#' @field cell_annotation  character
#' @field cell_annotation_term  character
#' @field perturbation  character
#' @field min  numeric
#' @field max  numeric
#' @field edge_count  numeric
#' @field numeric_count  numeric
#' @field missing_count  numeric
#' @field invalid_count  numeric
#' @field zero_count  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Groups <- R6::R6Class(
  "Groups",
  public = list(
    `method` = NULL,
    `source` = NULL,
    `files_filesets` = NULL,
    `biosample_term` = NULL,
    `biological_context` = NULL,
    `cell_annotation` = NULL,
    `cell_annotation_term` = NULL,
    `perturbation` = NULL,
    `min` = NULL,
    `max` = NULL,
    `edge_count` = NULL,
    `numeric_count` = NULL,
    `missing_count` = NULL,
    `invalid_count` = NULL,
    `zero_count` = NULL,

    #' @description
    #' Initialize a new Groups class.
    #'
    #' @param method method
    #' @param source source
    #' @param files_filesets files_filesets
    #' @param biosample_term biosample_term
    #' @param biological_context biological_context
    #' @param cell_annotation cell_annotation
    #' @param cell_annotation_term cell_annotation_term
    #' @param perturbation perturbation
    #' @param min min
    #' @param max max
    #' @param edge_count edge_count
    #' @param numeric_count numeric_count
    #' @param missing_count missing_count
    #' @param invalid_count invalid_count
    #' @param zero_count zero_count
    #' @param ... Other optional arguments.
    initialize = function(`method`, `source`, `files_filesets`, `biosample_term`, `biological_context`, `cell_annotation`, `cell_annotation_term`, `perturbation`, `min`, `max`, `edge_count`, `numeric_count`, `missing_count`, `invalid_count`, `zero_count`, ...) {
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`files_filesets`)) {
        if (!(is.character(`files_filesets`) && length(`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", `files_filesets`))
        }
        self$`files_filesets` <- `files_filesets`
      }
      if (!missing(`biosample_term`)) {
        if (!(is.character(`biosample_term`) && length(`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", `biosample_term`))
        }
        self$`biosample_term` <- `biosample_term`
      }
      if (!missing(`biological_context`)) {
        if (!(is.character(`biological_context`) && length(`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", `biological_context`))
        }
        self$`biological_context` <- `biological_context`
      }
      if (!missing(`cell_annotation`)) {
        if (!(is.character(`cell_annotation`) && length(`cell_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation`. Must be a string:", `cell_annotation`))
        }
        self$`cell_annotation` <- `cell_annotation`
      }
      if (!missing(`cell_annotation_term`)) {
        if (!(is.character(`cell_annotation_term`) && length(`cell_annotation_term`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation_term`. Must be a string:", `cell_annotation_term`))
        }
        self$`cell_annotation_term` <- `cell_annotation_term`
      }
      if (!missing(`perturbation`)) {
        if (!(is.character(`perturbation`) && length(`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", `perturbation`))
        }
        self$`perturbation` <- `perturbation`
      }
      if (!missing(`min`)) {
        self$`min` <- `min`
      }
      if (!missing(`max`)) {
        self$`max` <- `max`
      }
      if (!missing(`edge_count`)) {
        self$`edge_count` <- `edge_count`
      }
      if (!missing(`numeric_count`)) {
        self$`numeric_count` <- `numeric_count`
      }
      if (!missing(`missing_count`)) {
        self$`missing_count` <- `missing_count`
      }
      if (!missing(`invalid_count`)) {
        self$`invalid_count` <- `invalid_count`
      }
      if (!missing(`zero_count`)) {
        self$`zero_count` <- `zero_count`
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
    #' @return Groups as a base R list.
    #' @examples
    #' # convert array of Groups (x) to a data frame
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
    #' Convert Groups to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GroupsObject <- list()
      if (!is.null(self$`method`)) {
        GroupsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`source`)) {
        GroupsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`files_filesets`)) {
        GroupsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`biosample_term`)) {
        GroupsObject[["biosample_term"]] <-
          self$`biosample_term`
      }
      if (!is.null(self$`biological_context`)) {
        GroupsObject[["biological_context"]] <-
          self$`biological_context`
      }
      if (!is.null(self$`cell_annotation`)) {
        GroupsObject[["cell_annotation"]] <-
          self$`cell_annotation`
      }
      if (!is.null(self$`cell_annotation_term`)) {
        GroupsObject[["cell_annotation_term"]] <-
          self$`cell_annotation_term`
      }
      if (!is.null(self$`perturbation`)) {
        GroupsObject[["perturbation"]] <-
          self$`perturbation`
      }
      if (!is.null(self$`min`)) {
        GroupsObject[["min"]] <-
          self$`min`
      }
      if (!is.null(self$`max`)) {
        GroupsObject[["max"]] <-
          self$`max`
      }
      if (!is.null(self$`edge_count`)) {
        GroupsObject[["edge_count"]] <-
          self$`edge_count`
      }
      if (!is.null(self$`numeric_count`)) {
        GroupsObject[["numeric_count"]] <-
          self$`numeric_count`
      }
      if (!is.null(self$`missing_count`)) {
        GroupsObject[["missing_count"]] <-
          self$`missing_count`
      }
      if (!is.null(self$`invalid_count`)) {
        GroupsObject[["invalid_count"]] <-
          self$`invalid_count`
      }
      if (!is.null(self$`zero_count`)) {
        GroupsObject[["zero_count"]] <-
          self$`zero_count`
      }
      return(GroupsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Groups
    #'
    #' @param input_json the JSON input
    #' @return the instance of Groups
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      if (!is.null(this_object$`biosample_term`)) {
        self$`biosample_term` <- this_object$`biosample_term`
      }
      if (!is.null(this_object$`biological_context`)) {
        self$`biological_context` <- this_object$`biological_context`
      }
      if (!is.null(this_object$`cell_annotation`)) {
        self$`cell_annotation` <- this_object$`cell_annotation`
      }
      if (!is.null(this_object$`cell_annotation_term`)) {
        self$`cell_annotation_term` <- this_object$`cell_annotation_term`
      }
      if (!is.null(this_object$`perturbation`)) {
        self$`perturbation` <- this_object$`perturbation`
      }
      if (!is.null(this_object$`min`)) {
        self$`min` <- this_object$`min`
      }
      if (!is.null(this_object$`max`)) {
        self$`max` <- this_object$`max`
      }
      if (!is.null(this_object$`edge_count`)) {
        self$`edge_count` <- this_object$`edge_count`
      }
      if (!is.null(this_object$`numeric_count`)) {
        self$`numeric_count` <- this_object$`numeric_count`
      }
      if (!is.null(this_object$`missing_count`)) {
        self$`missing_count` <- this_object$`missing_count`
      }
      if (!is.null(this_object$`invalid_count`)) {
        self$`invalid_count` <- this_object$`invalid_count`
      }
      if (!is.null(this_object$`zero_count`)) {
        self$`zero_count` <- this_object$`zero_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Groups in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Groups
    #'
    #' @param input_json the JSON input
    #' @return the instance of Groups
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`method` <- this_object$`method`
      self$`source` <- this_object$`source`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`biosample_term` <- this_object$`biosample_term`
      self$`biological_context` <- this_object$`biological_context`
      self$`cell_annotation` <- this_object$`cell_annotation`
      self$`cell_annotation_term` <- this_object$`cell_annotation_term`
      self$`perturbation` <- this_object$`perturbation`
      self$`min` <- this_object$`min`
      self$`max` <- this_object$`max`
      self$`edge_count` <- this_object$`edge_count`
      self$`numeric_count` <- this_object$`numeric_count`
      self$`missing_count` <- this_object$`missing_count`
      self$`invalid_count` <- this_object$`invalid_count`
      self$`zero_count` <- this_object$`zero_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to Groups and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `method` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `source` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `files_filesets` is missing."))
      }
      # check the required field `biosample_term`
      if (!is.null(input_json$`biosample_term`)) {
        if (!(is.character(input_json$`biosample_term`) && length(input_json$`biosample_term`) == 1)) {
          stop(paste("Error! Invalid data for `biosample_term`. Must be a string:", input_json$`biosample_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `biosample_term` is missing."))
      }
      # check the required field `biological_context`
      if (!is.null(input_json$`biological_context`)) {
        if (!(is.character(input_json$`biological_context`) && length(input_json$`biological_context`) == 1)) {
          stop(paste("Error! Invalid data for `biological_context`. Must be a string:", input_json$`biological_context`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `biological_context` is missing."))
      }
      # check the required field `cell_annotation`
      if (!is.null(input_json$`cell_annotation`)) {
        if (!(is.character(input_json$`cell_annotation`) && length(input_json$`cell_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation`. Must be a string:", input_json$`cell_annotation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `cell_annotation` is missing."))
      }
      # check the required field `cell_annotation_term`
      if (!is.null(input_json$`cell_annotation_term`)) {
        if (!(is.character(input_json$`cell_annotation_term`) && length(input_json$`cell_annotation_term`) == 1)) {
          stop(paste("Error! Invalid data for `cell_annotation_term`. Must be a string:", input_json$`cell_annotation_term`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `cell_annotation_term` is missing."))
      }
      # check the required field `perturbation`
      if (!is.null(input_json$`perturbation`)) {
        if (!(is.character(input_json$`perturbation`) && length(input_json$`perturbation`) == 1)) {
          stop(paste("Error! Invalid data for `perturbation`. Must be a string:", input_json$`perturbation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `perturbation` is missing."))
      }
      # check the required field `min`
      if (!is.null(input_json$`min`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `min` is missing."))
      }
      # check the required field `max`
      if (!is.null(input_json$`max`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `max` is missing."))
      }
      # check the required field `edge_count`
      if (!is.null(input_json$`edge_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `edge_count` is missing."))
      }
      # check the required field `numeric_count`
      if (!is.null(input_json$`numeric_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `numeric_count` is missing."))
      }
      # check the required field `missing_count`
      if (!is.null(input_json$`missing_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `missing_count` is missing."))
      }
      # check the required field `invalid_count`
      if (!is.null(input_json$`invalid_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `invalid_count` is missing."))
      }
      # check the required field `zero_count`
      if (!is.null(input_json$`zero_count`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Groups: the required field `zero_count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Groups
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `edge_count` is null
      if (is.null(self$`edge_count`)) {
        return(FALSE)
      }

      # check if the required `numeric_count` is null
      if (is.null(self$`numeric_count`)) {
        return(FALSE)
      }

      # check if the required `missing_count` is null
      if (is.null(self$`missing_count`)) {
        return(FALSE)
      }

      # check if the required `invalid_count` is null
      if (is.null(self$`invalid_count`)) {
        return(FALSE)
      }

      # check if the required `zero_count` is null
      if (is.null(self$`zero_count`)) {
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
      # check if the required `edge_count` is null
      if (is.null(self$`edge_count`)) {
        invalid_fields["edge_count"] <- "Non-nullable required field `edge_count` cannot be null."
      }

      # check if the required `numeric_count` is null
      if (is.null(self$`numeric_count`)) {
        invalid_fields["numeric_count"] <- "Non-nullable required field `numeric_count` cannot be null."
      }

      # check if the required `missing_count` is null
      if (is.null(self$`missing_count`)) {
        invalid_fields["missing_count"] <- "Non-nullable required field `missing_count` cannot be null."
      }

      # check if the required `invalid_count` is null
      if (is.null(self$`invalid_count`)) {
        invalid_fields["invalid_count"] <- "Non-nullable required field `invalid_count` cannot be null."
      }

      # check if the required `zero_count` is null
      if (is.null(self$`zero_count`)) {
        invalid_fields["zero_count"] <- "Non-nullable required field `zero_count` cannot be null."
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
# Groups$unlock()
#
## Below is an example to define the print function
# Groups$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Groups$lock()

