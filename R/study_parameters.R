#' Create a new StudyParameters
#'
#' @description
#' StudyParameters Class
#'
#' @docType class
#' @title StudyParameters
#' @description StudyParameters Class
#' @format An \code{R6Class} generator object
#' @field study_parameter_id  character
#' @field study_type  character [optional]
#' @field study_cases  character [optional]
#' @field study_controls  character [optional]
#' @field p-value  character [optional]
#' @field biogeographical_groups  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StudyParameters <- R6::R6Class(
  "StudyParameters",
  public = list(
    `study_parameter_id` = NULL,
    `study_type` = NULL,
    `study_cases` = NULL,
    `study_controls` = NULL,
    `p-value` = NULL,
    `biogeographical_groups` = NULL,

    #' @description
    #' Initialize a new StudyParameters class.
    #'
    #' @param study_parameter_id study_parameter_id
    #' @param study_type study_type
    #' @param study_cases study_cases
    #' @param study_controls study_controls
    #' @param p-value p-value
    #' @param biogeographical_groups biogeographical_groups
    #' @param ... Other optional arguments.
    initialize = function(`study_parameter_id`, `study_type` = NULL, `study_cases` = NULL, `study_controls` = NULL, `p-value` = NULL, `biogeographical_groups` = NULL, ...) {
      if (!missing(`study_parameter_id`)) {
        if (!(is.character(`study_parameter_id`) && length(`study_parameter_id`) == 1)) {
          stop(paste("Error! Invalid data for `study_parameter_id`. Must be a string:", `study_parameter_id`))
        }
        self$`study_parameter_id` <- `study_parameter_id`
      }
      if (!is.null(`study_type`)) {
        if (!(is.character(`study_type`) && length(`study_type`) == 1)) {
          stop(paste("Error! Invalid data for `study_type`. Must be a string:", `study_type`))
        }
        self$`study_type` <- `study_type`
      }
      if (!is.null(`study_cases`)) {
        if (!(is.character(`study_cases`) && length(`study_cases`) == 1)) {
          stop(paste("Error! Invalid data for `study_cases`. Must be a string:", `study_cases`))
        }
        self$`study_cases` <- `study_cases`
      }
      if (!is.null(`study_controls`)) {
        if (!(is.character(`study_controls`) && length(`study_controls`) == 1)) {
          stop(paste("Error! Invalid data for `study_controls`. Must be a string:", `study_controls`))
        }
        self$`study_controls` <- `study_controls`
      }
      if (!is.null(`p-value`)) {
        if (!(is.character(`p-value`) && length(`p-value`) == 1)) {
          stop(paste("Error! Invalid data for `p-value`. Must be a string:", `p-value`))
        }
        self$`p-value` <- `p-value`
      }
      if (!is.null(`biogeographical_groups`)) {
        if (!(is.character(`biogeographical_groups`) && length(`biogeographical_groups`) == 1)) {
          stop(paste("Error! Invalid data for `biogeographical_groups`. Must be a string:", `biogeographical_groups`))
        }
        self$`biogeographical_groups` <- `biogeographical_groups`
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
    #' @return StudyParameters as a base R list.
    #' @examples
    #' # convert array of StudyParameters (x) to a data frame
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
    #' Convert StudyParameters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StudyParametersObject <- list()
      if (!is.null(self$`study_parameter_id`)) {
        StudyParametersObject[["study_parameter_id"]] <-
          self$`study_parameter_id`
      }
      if (!is.null(self$`study_type`)) {
        StudyParametersObject[["study_type"]] <-
          self$`study_type`
      }
      if (!is.null(self$`study_cases`)) {
        StudyParametersObject[["study_cases"]] <-
          self$`study_cases`
      }
      if (!is.null(self$`study_controls`)) {
        StudyParametersObject[["study_controls"]] <-
          self$`study_controls`
      }
      if (!is.null(self$`p-value`)) {
        StudyParametersObject[["p-value"]] <-
          self$`p-value`
      }
      if (!is.null(self$`biogeographical_groups`)) {
        StudyParametersObject[["biogeographical_groups"]] <-
          self$`biogeographical_groups`
      }
      return(StudyParametersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StudyParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of StudyParameters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`study_parameter_id`)) {
        self$`study_parameter_id` <- this_object$`study_parameter_id`
      }
      if (!is.null(this_object$`study_type`)) {
        self$`study_type` <- this_object$`study_type`
      }
      if (!is.null(this_object$`study_cases`)) {
        self$`study_cases` <- this_object$`study_cases`
      }
      if (!is.null(this_object$`study_controls`)) {
        self$`study_controls` <- this_object$`study_controls`
      }
      if (!is.null(this_object$`p-value`)) {
        self$`p-value` <- this_object$`p-value`
      }
      if (!is.null(this_object$`biogeographical_groups`)) {
        self$`biogeographical_groups` <- this_object$`biogeographical_groups`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StudyParameters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StudyParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of StudyParameters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`study_parameter_id` <- this_object$`study_parameter_id`
      self$`study_type` <- this_object$`study_type`
      self$`study_cases` <- this_object$`study_cases`
      self$`study_controls` <- this_object$`study_controls`
      self$`p-value` <- this_object$`p-value`
      self$`biogeographical_groups` <- this_object$`biogeographical_groups`
      self
    },

    #' @description
    #' Validate JSON input with respect to StudyParameters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `study_parameter_id`
      if (!is.null(input_json$`study_parameter_id`)) {
        if (!(is.character(input_json$`study_parameter_id`) && length(input_json$`study_parameter_id`) == 1)) {
          stop(paste("Error! Invalid data for `study_parameter_id`. Must be a string:", input_json$`study_parameter_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyParameters: the required field `study_parameter_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StudyParameters
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `study_parameter_id` is null
      if (is.null(self$`study_parameter_id`)) {
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
      # check if the required `study_parameter_id` is null
      if (is.null(self$`study_parameter_id`)) {
        invalid_fields["study_parameter_id"] <- "Non-nullable required field `study_parameter_id` cannot be null."
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
# StudyParameters$unlock()
#
## Below is an example to define the print function
# StudyParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StudyParameters$lock()

