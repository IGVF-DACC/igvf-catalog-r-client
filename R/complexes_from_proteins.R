#' Create a new ComplexesFromProteins
#'
#' @description
#' ComplexesFromProteins Class
#'
#' @docType class
#' @title ComplexesFromProteins
#' @description ComplexesFromProteins Class
#' @format An \code{R6Class} generator object
#' @field protein  \link{ComplexesFromProteinsProtein} [optional]
#' @field complex  \link{ComplexesFromProteinsComplex} [optional]
#' @field name  character
#' @field stoichiometry  numeric [optional]
#' @field chain_id  character [optional]
#' @field isoform_id  character [optional]
#' @field number_of_paralogs  numeric [optional]
#' @field linked_features  list(\link{LinkedFeature}) [optional]
#' @field class  character [optional]
#' @field method  character
#' @field label  character
#' @field files_filesets  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComplexesFromProteins <- R6::R6Class(
  "ComplexesFromProteins",
  public = list(
    `protein` = NULL,
    `complex` = NULL,
    `name` = NULL,
    `stoichiometry` = NULL,
    `chain_id` = NULL,
    `isoform_id` = NULL,
    `number_of_paralogs` = NULL,
    `linked_features` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,
    `source` = NULL,
    `source_url` = NULL,

    #' @description
    #' Initialize a new ComplexesFromProteins class.
    #'
    #' @param name name
    #' @param method method
    #' @param label label
    #' @param protein protein
    #' @param complex complex
    #' @param stoichiometry stoichiometry
    #' @param chain_id chain_id
    #' @param isoform_id isoform_id
    #' @param number_of_paralogs number_of_paralogs
    #' @param linked_features linked_features
    #' @param class class
    #' @param files_filesets files_filesets
    #' @param source source
    #' @param source_url source_url
    #' @param ... Other optional arguments.
    initialize = function(`name`, `method`, `label`, `protein` = NULL, `complex` = NULL, `stoichiometry` = NULL, `chain_id` = NULL, `isoform_id` = NULL, `number_of_paralogs` = NULL, `linked_features` = NULL, `class` = NULL, `files_filesets` = NULL, `source` = NULL, `source_url` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
      }
      if (!is.null(`complex`)) {
        stopifnot(R6::is.R6(`complex`))
        self$`complex` <- `complex`
      }
      if (!is.null(`stoichiometry`)) {
        self$`stoichiometry` <- `stoichiometry`
      }
      if (!is.null(`chain_id`)) {
        if (!(is.character(`chain_id`) && length(`chain_id`) == 1)) {
          stop(paste("Error! Invalid data for `chain_id`. Must be a string:", `chain_id`))
        }
        self$`chain_id` <- `chain_id`
      }
      if (!is.null(`isoform_id`)) {
        if (!(is.character(`isoform_id`) && length(`isoform_id`) == 1)) {
          stop(paste("Error! Invalid data for `isoform_id`. Must be a string:", `isoform_id`))
        }
        self$`isoform_id` <- `isoform_id`
      }
      if (!is.null(`number_of_paralogs`)) {
        self$`number_of_paralogs` <- `number_of_paralogs`
      }
      if (!is.null(`linked_features`)) {
        stopifnot(is.vector(`linked_features`), length(`linked_features`) != 0)
        sapply(`linked_features`, function(x) stopifnot(R6::is.R6(x)))
        self$`linked_features` <- `linked_features`
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
    #' @return ComplexesFromProteins as a base R list.
    #' @examples
    #' # convert array of ComplexesFromProteins (x) to a data frame
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
    #' Convert ComplexesFromProteins to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComplexesFromProteinsObject <- list()
      if (!is.null(self$`protein`)) {
        ComplexesFromProteinsObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`complex`)) {
        ComplexesFromProteinsObject[["complex"]] <-
          self$`complex`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        ComplexesFromProteinsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`stoichiometry`)) {
        ComplexesFromProteinsObject[["stoichiometry"]] <-
          self$`stoichiometry`
      }
      if (!is.null(self$`chain_id`)) {
        ComplexesFromProteinsObject[["chain_id"]] <-
          self$`chain_id`
      }
      if (!is.null(self$`isoform_id`)) {
        ComplexesFromProteinsObject[["isoform_id"]] <-
          self$`isoform_id`
      }
      if (!is.null(self$`number_of_paralogs`)) {
        ComplexesFromProteinsObject[["number_of_paralogs"]] <-
          self$`number_of_paralogs`
      }
      if (!is.null(self$`linked_features`)) {
        ComplexesFromProteinsObject[["linked_features"]] <-
          lapply(self$`linked_features`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`class`)) {
        ComplexesFromProteinsObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        ComplexesFromProteinsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        ComplexesFromProteinsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        ComplexesFromProteinsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      if (!is.null(self$`source`)) {
        ComplexesFromProteinsObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        ComplexesFromProteinsObject[["source_url"]] <-
          self$`source_url`
      }
      return(ComplexesFromProteinsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ComplexesFromProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplexesFromProteins
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- ComplexesFromProteinsProtein$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`complex`)) {
        `complex_object` <- ComplexesFromProteinsComplex$new()
        `complex_object`$fromJSON(jsonlite::toJSON(this_object$`complex`, auto_unbox = TRUE, digits = NA))
        self$`complex` <- `complex_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`stoichiometry`)) {
        self$`stoichiometry` <- this_object$`stoichiometry`
      }
      if (!is.null(this_object$`chain_id`)) {
        self$`chain_id` <- this_object$`chain_id`
      }
      if (!is.null(this_object$`isoform_id`)) {
        self$`isoform_id` <- this_object$`isoform_id`
      }
      if (!is.null(this_object$`number_of_paralogs`)) {
        self$`number_of_paralogs` <- this_object$`number_of_paralogs`
      }
      if (!is.null(this_object$`linked_features`)) {
        self$`linked_features` <- ApiClient$new()$deserializeObj(this_object$`linked_features`, "array[LinkedFeature]", loadNamespace("igvfcatalogclient"))
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
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ComplexesFromProteins in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ComplexesFromProteins
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplexesFromProteins
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`protein` <- ComplexesFromProteinsProtein$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`complex` <- ComplexesFromProteinsComplex$new()$fromJSON(jsonlite::toJSON(this_object$`complex`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`stoichiometry` <- this_object$`stoichiometry`
      self$`chain_id` <- this_object$`chain_id`
      self$`isoform_id` <- this_object$`isoform_id`
      self$`number_of_paralogs` <- this_object$`number_of_paralogs`
      self$`linked_features` <- ApiClient$new()$deserializeObj(this_object$`linked_features`, "array[LinkedFeature]", loadNamespace("igvfcatalogclient"))
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to ComplexesFromProteins and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ComplexesFromProteins: the required field `name` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplexesFromProteins: the required field `method` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplexesFromProteins: the required field `label` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComplexesFromProteins
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
# ComplexesFromProteins$unlock()
#
## Below is an example to define the print function
# ComplexesFromProteins$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComplexesFromProteins$lock()

