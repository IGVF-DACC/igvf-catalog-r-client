#' Create a new Elements
#'
#' @description
#' Elements Class
#'
#' @docType class
#' @title Elements
#' @description Elements Class
#' @format An \code{R6Class} generator object
#' @field id  character
#' @field cell_type  character [optional]
#' @field score  numeric [optional]
#' @field model  character [optional]
#' @field dataset  character [optional]
#' @field element_type  character [optional]
#' @field element_chr  character [optional]
#' @field element_start  numeric [optional]
#' @field element_end  numeric [optional]
#' @field name  character
#' @field method  character [optional]
#' @field class  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Elements <- R6::R6Class(
  "Elements",
  public = list(
    `id` = NULL,
    `cell_type` = NULL,
    `score` = NULL,
    `model` = NULL,
    `dataset` = NULL,
    `element_type` = NULL,
    `element_chr` = NULL,
    `element_start` = NULL,
    `element_end` = NULL,
    `name` = NULL,
    `method` = NULL,
    `class` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Elements class.
    #'
    #' @param id id
    #' @param name name
    #' @param cell_type cell_type
    #' @param score score
    #' @param model model
    #' @param dataset dataset
    #' @param element_type element_type
    #' @param element_chr element_chr
    #' @param element_start element_start
    #' @param element_end element_end
    #' @param method method
    #' @param class class
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `cell_type` = NULL, `score` = NULL, `model` = NULL, `dataset` = NULL, `element_type` = NULL, `element_chr` = NULL, `element_start` = NULL, `element_end` = NULL, `method` = NULL, `class` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`cell_type`)) {
        if (!(is.character(`cell_type`) && length(`cell_type`) == 1)) {
          stop(paste("Error! Invalid data for `cell_type`. Must be a string:", `cell_type`))
        }
        self$`cell_type` <- `cell_type`
      }
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`dataset`)) {
        if (!(is.character(`dataset`) && length(`dataset`) == 1)) {
          stop(paste("Error! Invalid data for `dataset`. Must be a string:", `dataset`))
        }
        self$`dataset` <- `dataset`
      }
      if (!is.null(`element_type`)) {
        if (!(is.character(`element_type`) && length(`element_type`) == 1)) {
          stop(paste("Error! Invalid data for `element_type`. Must be a string:", `element_type`))
        }
        self$`element_type` <- `element_type`
      }
      if (!is.null(`element_chr`)) {
        if (!(is.character(`element_chr`) && length(`element_chr`) == 1)) {
          stop(paste("Error! Invalid data for `element_chr`. Must be a string:", `element_chr`))
        }
        self$`element_chr` <- `element_chr`
      }
      if (!is.null(`element_start`)) {
        self$`element_start` <- `element_start`
      }
      if (!is.null(`element_end`)) {
        self$`element_end` <- `element_end`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
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
    #' @return Elements as a base R list.
    #' @examples
    #' # convert array of Elements (x) to a data frame
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
    #' Convert Elements to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ElementsObject <- list()
      if (!is.null(self$`id`)) {
        ElementsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`cell_type`)) {
        ElementsObject[["cell_type"]] <-
          self$`cell_type`
      }
      if (!is.null(self$`score`)) {
        ElementsObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`model`)) {
        ElementsObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`dataset`)) {
        ElementsObject[["dataset"]] <-
          self$`dataset`
      }
      if (!is.null(self$`element_type`)) {
        ElementsObject[["element_type"]] <-
          self$`element_type`
      }
      if (!is.null(self$`element_chr`)) {
        ElementsObject[["element_chr"]] <-
          self$`element_chr`
      }
      if (!is.null(self$`element_start`)) {
        ElementsObject[["element_start"]] <-
          self$`element_start`
      }
      if (!is.null(self$`element_end`)) {
        ElementsObject[["element_end"]] <-
          self$`element_end`
      }
      if (!is.null(self$`name`)) {
        ElementsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`method`)) {
        ElementsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`class`)) {
        ElementsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`files_filesets`)) {
        ElementsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(ElementsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Elements
    #'
    #' @param input_json the JSON input
    #' @return the instance of Elements
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`cell_type`)) {
        self$`cell_type` <- this_object$`cell_type`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`dataset`)) {
        self$`dataset` <- this_object$`dataset`
      }
      if (!is.null(this_object$`element_type`)) {
        self$`element_type` <- this_object$`element_type`
      }
      if (!is.null(this_object$`element_chr`)) {
        self$`element_chr` <- this_object$`element_chr`
      }
      if (!is.null(this_object$`element_start`)) {
        self$`element_start` <- this_object$`element_start`
      }
      if (!is.null(this_object$`element_end`)) {
        self$`element_end` <- this_object$`element_end`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`files_filesets`)) {
        self$`files_filesets` <- this_object$`files_filesets`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Elements in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Elements
    #'
    #' @param input_json the JSON input
    #' @return the instance of Elements
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`cell_type` <- this_object$`cell_type`
      self$`score` <- this_object$`score`
      self$`model` <- this_object$`model`
      self$`dataset` <- this_object$`dataset`
      self$`element_type` <- this_object$`element_type`
      self$`element_chr` <- this_object$`element_chr`
      self$`element_start` <- this_object$`element_start`
      self$`element_end` <- this_object$`element_end`
      self$`name` <- this_object$`name`
      self$`method` <- this_object$`method`
      self$`class` <- this_object$`class`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Elements and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Elements: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Elements: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Elements
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

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
# Elements$unlock()
#
## Below is an example to define the print function
# Elements$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Elements$lock()

