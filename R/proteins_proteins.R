#' Create a new ProteinsProteins
#'
#' @description
#' ProteinsProteins Class
#'
#' @docType class
#' @title ProteinsProteins
#' @description ProteinsProteins Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field protein_1  \link{ProteinsProteinsProtein1}
#' @field protein_2  \link{ProteinsProteinsProtein1}
#' @field detection_method  character
#' @field detection_method_code  character
#' @field interaction_type  list(character)
#' @field interaction_type_code  list(character)
#' @field confidence_value_biogrid  numeric
#' @field confidence_value_intact  numeric
#' @field label  character
#' @field class  character
#' @field method  character
#' @field source_url  character
#' @field source  character
#' @field organism  character
#' @field pmids  list(character)
#' @field name  character
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProteinsProteins <- R6::R6Class(
  "ProteinsProteins",
  public = list(
    `_id` = NULL,
    `protein_1` = NULL,
    `protein_2` = NULL,
    `detection_method` = NULL,
    `detection_method_code` = NULL,
    `interaction_type` = NULL,
    `interaction_type_code` = NULL,
    `confidence_value_biogrid` = NULL,
    `confidence_value_intact` = NULL,
    `label` = NULL,
    `class` = NULL,
    `method` = NULL,
    `source_url` = NULL,
    `source` = NULL,
    `organism` = NULL,
    `pmids` = NULL,
    `name` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new ProteinsProteins class.
    #'
    #' @param _id _id
    #' @param protein_1 protein_1
    #' @param protein_2 protein_2
    #' @param detection_method detection_method
    #' @param detection_method_code detection_method_code
    #' @param interaction_type interaction_type
    #' @param interaction_type_code interaction_type_code
    #' @param confidence_value_biogrid confidence_value_biogrid
    #' @param confidence_value_intact confidence_value_intact
    #' @param label label
    #' @param class class
    #' @param method method
    #' @param source_url source_url
    #' @param source source
    #' @param organism organism
    #' @param pmids pmids
    #' @param name name
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `protein_1`, `protein_2`, `detection_method`, `detection_method_code`, `interaction_type`, `interaction_type_code`, `confidence_value_biogrid`, `confidence_value_intact`, `label`, `class`, `method`, `source_url`, `source`, `organism`, `pmids`, `name`, `files_filesets` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`protein_1`)) {
        stopifnot(R6::is.R6(`protein_1`))
        self$`protein_1` <- `protein_1`
      }
      if (!missing(`protein_2`)) {
        stopifnot(R6::is.R6(`protein_2`))
        self$`protein_2` <- `protein_2`
      }
      if (!missing(`detection_method`)) {
        if (!(is.character(`detection_method`) && length(`detection_method`) == 1)) {
          stop(paste("Error! Invalid data for `detection_method`. Must be a string:", `detection_method`))
        }
        self$`detection_method` <- `detection_method`
      }
      if (!missing(`detection_method_code`)) {
        if (!(is.character(`detection_method_code`) && length(`detection_method_code`) == 1)) {
          stop(paste("Error! Invalid data for `detection_method_code`. Must be a string:", `detection_method_code`))
        }
        self$`detection_method_code` <- `detection_method_code`
      }
      if (!missing(`interaction_type`)) {
        stopifnot(is.vector(`interaction_type`), length(`interaction_type`) != 0)
        sapply(`interaction_type`, function(x) stopifnot(is.character(x)))
        self$`interaction_type` <- `interaction_type`
      }
      if (!missing(`interaction_type_code`)) {
        stopifnot(is.vector(`interaction_type_code`), length(`interaction_type_code`) != 0)
        sapply(`interaction_type_code`, function(x) stopifnot(is.character(x)))
        self$`interaction_type_code` <- `interaction_type_code`
      }
      if (!missing(`confidence_value_biogrid`)) {
        self$`confidence_value_biogrid` <- `confidence_value_biogrid`
      }
      if (!missing(`confidence_value_intact`)) {
        self$`confidence_value_intact` <- `confidence_value_intact`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`class`)) {
        if (!(is.character(`class`) && length(`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", `class`))
        }
        self$`class` <- `class`
      }
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
      }
      if (!missing(`pmids`)) {
        stopifnot(is.vector(`pmids`), length(`pmids`) != 0)
        sapply(`pmids`, function(x) stopifnot(is.character(x)))
        self$`pmids` <- `pmids`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return ProteinsProteins as a base R list.
    #' @examples
    #' # convert array of ProteinsProteins (x) to a data frame
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
    #' Convert ProteinsProteins to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProteinsProteinsObject <- list()
      if (!is.null(self$`_id`)) {
        ProteinsProteinsObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`protein_1`)) {
        ProteinsProteinsObject[["protein_1"]] <-
          self$`protein_1`$toSimpleType()
      }
      if (!is.null(self$`protein_2`)) {
        ProteinsProteinsObject[["protein_2"]] <-
          self$`protein_2`$toSimpleType()
      }
      if (!is.null(self$`detection_method`)) {
        ProteinsProteinsObject[["detection_method"]] <-
          self$`detection_method`
      }
      if (!is.null(self$`detection_method_code`)) {
        ProteinsProteinsObject[["detection_method_code"]] <-
          self$`detection_method_code`
      }
      if (!is.null(self$`interaction_type`)) {
        ProteinsProteinsObject[["interaction_type"]] <-
          self$`interaction_type`
      }
      if (!is.null(self$`interaction_type_code`)) {
        ProteinsProteinsObject[["interaction_type_code"]] <-
          self$`interaction_type_code`
      }
      if (!is.null(self$`confidence_value_biogrid`)) {
        ProteinsProteinsObject[["confidence_value_biogrid"]] <-
          self$`confidence_value_biogrid`
      }
      if (!is.null(self$`confidence_value_intact`)) {
        ProteinsProteinsObject[["confidence_value_intact"]] <-
          self$`confidence_value_intact`
      }
      if (!is.null(self$`label`)) {
        ProteinsProteinsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`class`)) {
        ProteinsProteinsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        ProteinsProteinsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`source_url`)) {
        ProteinsProteinsObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`source`)) {
        ProteinsProteinsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`organism`)) {
        ProteinsProteinsObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`pmids`)) {
        ProteinsProteinsObject[["pmids"]] <-
          self$`pmids`
      }
      if (!is.null(self$`name`)) {
        ProteinsProteinsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`files_filesets`)) {
        ProteinsProteinsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(ProteinsProteinsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinsProteins
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`protein_1`)) {
        `protein_1_object` <- ProteinsProteinsProtein1$new()
        `protein_1_object`$fromJSON(jsonlite::toJSON(this_object$`protein_1`, auto_unbox = TRUE, digits = NA))
        self$`protein_1` <- `protein_1_object`
      }
      if (!is.null(this_object$`protein_2`)) {
        `protein_2_object` <- ProteinsProteinsProtein1$new()
        `protein_2_object`$fromJSON(jsonlite::toJSON(this_object$`protein_2`, auto_unbox = TRUE, digits = NA))
        self$`protein_2` <- `protein_2_object`
      }
      if (!is.null(this_object$`detection_method`)) {
        self$`detection_method` <- this_object$`detection_method`
      }
      if (!is.null(this_object$`detection_method_code`)) {
        self$`detection_method_code` <- this_object$`detection_method_code`
      }
      if (!is.null(this_object$`interaction_type`)) {
        self$`interaction_type` <- ApiClient$new()$deserializeObj(this_object$`interaction_type`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`interaction_type_code`)) {
        self$`interaction_type_code` <- ApiClient$new()$deserializeObj(this_object$`interaction_type_code`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`confidence_value_biogrid`)) {
        self$`confidence_value_biogrid` <- this_object$`confidence_value_biogrid`
      }
      if (!is.null(this_object$`confidence_value_intact`)) {
        self$`confidence_value_intact` <- this_object$`confidence_value_intact`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`class`)) {
        self$`class` <- this_object$`class`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
      }
      if (!is.null(this_object$`pmids`)) {
        self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return ProteinsProteins in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProteinsProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProteinsProteins
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`protein_1` <- ProteinsProteinsProtein1$new()$fromJSON(jsonlite::toJSON(this_object$`protein_1`, auto_unbox = TRUE, digits = NA))
      self$`protein_2` <- ProteinsProteinsProtein1$new()$fromJSON(jsonlite::toJSON(this_object$`protein_2`, auto_unbox = TRUE, digits = NA))
      self$`detection_method` <- this_object$`detection_method`
      self$`detection_method_code` <- this_object$`detection_method_code`
      self$`interaction_type` <- ApiClient$new()$deserializeObj(this_object$`interaction_type`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`interaction_type_code` <- ApiClient$new()$deserializeObj(this_object$`interaction_type_code`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`confidence_value_biogrid` <- this_object$`confidence_value_biogrid`
      self$`confidence_value_intact` <- this_object$`confidence_value_intact`
      self$`label` <- this_object$`label`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`source_url` <- this_object$`source_url`
      self$`source` <- this_object$`source`
      self$`organism` <- this_object$`organism`
      self$`pmids` <- ApiClient$new()$deserializeObj(this_object$`pmids`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`name` <- this_object$`name`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProteinsProteins and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `_id` is missing."))
      }
      # check the required field `protein_1`
      if (!is.null(input_json$`protein_1`)) {
        stopifnot(R6::is.R6(input_json$`protein_1`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `protein_1` is missing."))
      }
      # check the required field `protein_2`
      if (!is.null(input_json$`protein_2`)) {
        stopifnot(R6::is.R6(input_json$`protein_2`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `protein_2` is missing."))
      }
      # check the required field `detection_method`
      if (!is.null(input_json$`detection_method`)) {
        if (!(is.character(input_json$`detection_method`) && length(input_json$`detection_method`) == 1)) {
          stop(paste("Error! Invalid data for `detection_method`. Must be a string:", input_json$`detection_method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `detection_method` is missing."))
      }
      # check the required field `detection_method_code`
      if (!is.null(input_json$`detection_method_code`)) {
        if (!(is.character(input_json$`detection_method_code`) && length(input_json$`detection_method_code`) == 1)) {
          stop(paste("Error! Invalid data for `detection_method_code`. Must be a string:", input_json$`detection_method_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `detection_method_code` is missing."))
      }
      # check the required field `interaction_type`
      if (!is.null(input_json$`interaction_type`)) {
        stopifnot(is.vector(input_json$`interaction_type`), length(input_json$`interaction_type`) != 0)
        tmp <- sapply(input_json$`interaction_type`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `interaction_type` is missing."))
      }
      # check the required field `interaction_type_code`
      if (!is.null(input_json$`interaction_type_code`)) {
        stopifnot(is.vector(input_json$`interaction_type_code`), length(input_json$`interaction_type_code`) != 0)
        tmp <- sapply(input_json$`interaction_type_code`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `interaction_type_code` is missing."))
      }
      # check the required field `confidence_value_biogrid`
      if (!is.null(input_json$`confidence_value_biogrid`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `confidence_value_biogrid` is missing."))
      }
      # check the required field `confidence_value_intact`
      if (!is.null(input_json$`confidence_value_intact`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `confidence_value_intact` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `label` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `class` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `method` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `source_url` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `source` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `organism` is missing."))
      }
      # check the required field `pmids`
      if (!is.null(input_json$`pmids`)) {
        stopifnot(is.vector(input_json$`pmids`), length(input_json$`pmids`) != 0)
        tmp <- sapply(input_json$`pmids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `pmids` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProteinsProteins: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProteinsProteins
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

      # check if the required `protein_1` is null
      if (is.null(self$`protein_1`)) {
        return(FALSE)
      }

      # check if the required `protein_2` is null
      if (is.null(self$`protein_2`)) {
        return(FALSE)
      }

      # check if the required `detection_method` is null
      if (is.null(self$`detection_method`)) {
        return(FALSE)
      }

      # check if the required `detection_method_code` is null
      if (is.null(self$`detection_method_code`)) {
        return(FALSE)
      }

      # check if the required `interaction_type` is null
      if (is.null(self$`interaction_type`)) {
        return(FALSE)
      }

      # check if the required `interaction_type_code` is null
      if (is.null(self$`interaction_type_code`)) {
        return(FALSE)
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        return(FALSE)
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        return(FALSE)
      }

      # check if the required `pmids` is null
      if (is.null(self$`pmids`)) {
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

      # check if the required `protein_1` is null
      if (is.null(self$`protein_1`)) {
        invalid_fields["protein_1"] <- "Non-nullable required field `protein_1` cannot be null."
      }

      # check if the required `protein_2` is null
      if (is.null(self$`protein_2`)) {
        invalid_fields["protein_2"] <- "Non-nullable required field `protein_2` cannot be null."
      }

      # check if the required `detection_method` is null
      if (is.null(self$`detection_method`)) {
        invalid_fields["detection_method"] <- "Non-nullable required field `detection_method` cannot be null."
      }

      # check if the required `detection_method_code` is null
      if (is.null(self$`detection_method_code`)) {
        invalid_fields["detection_method_code"] <- "Non-nullable required field `detection_method_code` cannot be null."
      }

      # check if the required `interaction_type` is null
      if (is.null(self$`interaction_type`)) {
        invalid_fields["interaction_type"] <- "Non-nullable required field `interaction_type` cannot be null."
      }

      # check if the required `interaction_type_code` is null
      if (is.null(self$`interaction_type_code`)) {
        invalid_fields["interaction_type_code"] <- "Non-nullable required field `interaction_type_code` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        invalid_fields["organism"] <- "Non-nullable required field `organism` cannot be null."
      }

      # check if the required `pmids` is null
      if (is.null(self$`pmids`)) {
        invalid_fields["pmids"] <- "Non-nullable required field `pmids` cannot be null."
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
# ProteinsProteins$unlock()
#
## Below is an example to define the print function
# ProteinsProteins$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProteinsProteins$lock()

