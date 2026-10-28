#' Create a new PropertyScores
#'
#' @description
#' PropertyScores Class
#'
#' @docType class
#' @title PropertyScores
#' @description PropertyScores Class
#' @format An \code{R6Class} generator object
#' @field property  character
#' @field posterior_probability  numeric
#' @field p_value  numeric
#' @field affected_position  character
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PropertyScores <- R6::R6Class(
  "PropertyScores",
  public = list(
    `property` = NULL,
    `posterior_probability` = NULL,
    `p_value` = NULL,
    `affected_position` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new PropertyScores class.
    #'
    #' @param property property
    #' @param posterior_probability posterior_probability
    #' @param p_value p_value
    #' @param affected_position affected_position
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`property`, `posterior_probability`, `p_value`, `affected_position`, `type`, ...) {
      if (!missing(`property`)) {
        if (!(is.character(`property`) && length(`property`) == 1)) {
          stop(paste("Error! Invalid data for `property`. Must be a string:", `property`))
        }
        self$`property` <- `property`
      }
      if (!missing(`posterior_probability`)) {
        self$`posterior_probability` <- `posterior_probability`
      }
      if (!missing(`p_value`)) {
        self$`p_value` <- `p_value`
      }
      if (!missing(`affected_position`)) {
        if (!(is.character(`affected_position`) && length(`affected_position`) == 1)) {
          stop(paste("Error! Invalid data for `affected_position`. Must be a string:", `affected_position`))
        }
        self$`affected_position` <- `affected_position`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("Loss", "Gain", "Altered"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"Loss\", \"Gain\", \"Altered\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return PropertyScores as a base R list.
    #' @examples
    #' # convert array of PropertyScores (x) to a data frame
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
    #' Convert PropertyScores to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PropertyScoresObject <- list()
      if (!is.null(self$`property`)) {
        PropertyScoresObject[["property"]] <-
          self$`property`
      }
      if (!is.null(self$`posterior_probability`)) {
        PropertyScoresObject[["posterior_probability"]] <-
          self$`posterior_probability`
      }
      if (!is.null(self$`p_value`)) {
        PropertyScoresObject[["p_value"]] <-
          self$`p_value`
      }
      if (!is.null(self$`affected_position`)) {
        PropertyScoresObject[["affected_position"]] <-
          self$`affected_position`
      }
      if (!is.null(self$`type`)) {
        PropertyScoresObject[["type"]] <-
          self$`type`
      }
      return(PropertyScoresObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PropertyScores
    #'
    #' @param input_json the JSON input
    #' @return the instance of PropertyScores
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`property`)) {
        self$`property` <- this_object$`property`
      }
      if (!is.null(this_object$`posterior_probability`)) {
        self$`posterior_probability` <- this_object$`posterior_probability`
      }
      if (!is.null(this_object$`p_value`)) {
        self$`p_value` <- this_object$`p_value`
      }
      if (!is.null(this_object$`affected_position`)) {
        self$`affected_position` <- this_object$`affected_position`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Loss", "Gain", "Altered"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Loss\", \"Gain\", \"Altered\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PropertyScores in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PropertyScores
    #'
    #' @param input_json the JSON input
    #' @return the instance of PropertyScores
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`property` <- this_object$`property`
      self$`posterior_probability` <- this_object$`posterior_probability`
      self$`p_value` <- this_object$`p_value`
      self$`affected_position` <- this_object$`affected_position`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Loss", "Gain", "Altered"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Loss\", \"Gain\", \"Altered\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to PropertyScores and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `property`
      if (!is.null(input_json$`property`)) {
        if (!(is.character(input_json$`property`) && length(input_json$`property`) == 1)) {
          stop(paste("Error! Invalid data for `property`. Must be a string:", input_json$`property`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PropertyScores: the required field `property` is missing."))
      }
      # check the required field `posterior_probability`
      if (!is.null(input_json$`posterior_probability`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PropertyScores: the required field `posterior_probability` is missing."))
      }
      # check the required field `p_value`
      if (!is.null(input_json$`p_value`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PropertyScores: the required field `p_value` is missing."))
      }
      # check the required field `affected_position`
      if (!is.null(input_json$`affected_position`)) {
        if (!(is.character(input_json$`affected_position`) && length(input_json$`affected_position`) == 1)) {
          stop(paste("Error! Invalid data for `affected_position`. Must be a string:", input_json$`affected_position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PropertyScores: the required field `affected_position` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PropertyScores: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PropertyScores
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `property` is null
      if (is.null(self$`property`)) {
        return(FALSE)
      }

      # check if the required `posterior_probability` is null
      if (is.null(self$`posterior_probability`)) {
        return(FALSE)
      }

      # check if the required `p_value` is null
      if (is.null(self$`p_value`)) {
        return(FALSE)
      }

      # check if the required `affected_position` is null
      if (is.null(self$`affected_position`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `property` is null
      if (is.null(self$`property`)) {
        invalid_fields["property"] <- "Non-nullable required field `property` cannot be null."
      }

      # check if the required `posterior_probability` is null
      if (is.null(self$`posterior_probability`)) {
        invalid_fields["posterior_probability"] <- "Non-nullable required field `posterior_probability` cannot be null."
      }

      # check if the required `p_value` is null
      if (is.null(self$`p_value`)) {
        invalid_fields["p_value"] <- "Non-nullable required field `p_value` cannot be null."
      }

      # check if the required `affected_position` is null
      if (is.null(self$`affected_position`)) {
        invalid_fields["affected_position"] <- "Non-nullable required field `affected_position` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# PropertyScores$unlock()
#
## Below is an example to define the print function
# PropertyScores$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PropertyScores$lock()

