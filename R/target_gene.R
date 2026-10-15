#' Create a new TargetGene
#'
#' @description
#' TargetGene Class
#'
#' @docType class
#' @title TargetGene
#' @description TargetGene Class
#' @format An \code{R6Class} generator object
#' @field gene_name  character
#' @field id  character
#' @field chr  character
#' @field start  numeric
#' @field end  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TargetGene <- R6::R6Class(
  "TargetGene",
  public = list(
    `gene_name` = NULL,
    `id` = NULL,
    `chr` = NULL,
    `start` = NULL,
    `end` = NULL,

    #' @description
    #' Initialize a new TargetGene class.
    #'
    #' @param gene_name gene_name
    #' @param id id
    #' @param chr chr
    #' @param start start
    #' @param end end
    #' @param ... Other optional arguments.
    initialize = function(`gene_name`, `id`, `chr`, `start`, `end`, ...) {
      if (!missing(`gene_name`)) {
        if (!(is.character(`gene_name`) && length(`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", `gene_name`))
        }
        self$`gene_name` <- `gene_name`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
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
    #' @return TargetGene as a base R list.
    #' @examples
    #' # convert array of TargetGene (x) to a data frame
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
    #' Convert TargetGene to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TargetGeneObject <- list()
      if (!is.null(self$`gene_name`)) {
        TargetGeneObject[["gene_name"]] <-
          self$`gene_name`
      }
      if (!is.null(self$`id`)) {
        TargetGeneObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`chr`)) {
        TargetGeneObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`start`)) {
        TargetGeneObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        TargetGeneObject[["end"]] <-
          self$`end`
      }
      return(TargetGeneObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TargetGene
    #'
    #' @param input_json the JSON input
    #' @return the instance of TargetGene
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_name`)) {
        self$`gene_name` <- this_object$`gene_name`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TargetGene in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TargetGene
    #'
    #' @param input_json the JSON input
    #' @return the instance of TargetGene
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_name` <- this_object$`gene_name`
      self$`id` <- this_object$`id`
      self$`chr` <- this_object$`chr`
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self
    },

    #' @description
    #' Validate JSON input with respect to TargetGene and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gene_name`
      if (!is.null(input_json$`gene_name`)) {
        if (!(is.character(input_json$`gene_name`) && length(input_json$`gene_name`) == 1)) {
          stop(paste("Error! Invalid data for `gene_name`. Must be a string:", input_json$`gene_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TargetGene: the required field `gene_name` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TargetGene: the required field `id` is missing."))
      }
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TargetGene: the required field `chr` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TargetGene: the required field `start` is missing."))
      }
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TargetGene: the required field `end` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TargetGene
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
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

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `gene_name` is null
      if (is.null(self$`gene_name`)) {
        invalid_fields["gene_name"] <- "Non-nullable required field `gene_name` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
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
# TargetGene$unlock()
#
## Below is an example to define the print function
# TargetGene$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TargetGene$lock()

