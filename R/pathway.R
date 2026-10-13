#' Create a new Pathway
#'
#' @description
#' Pathway Class
#'
#' @docType class
#' @title Pathway
#' @description Pathway Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field organism  character
#' @field source  character
#' @field source_url  character
#' @field id_version  character
#' @field is_in_disease  character
#' @field name_aliases  list(character)
#' @field is_top_level_pathway  character
#' @field disease_ontology_terms  list(character)
#' @field biological_process  character
#' @field class  character
#' @field method  character
#' @field label  character
#' @field files_filesets  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Pathway <- R6::R6Class(
  "Pathway",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `organism` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `id_version` = NULL,
    `is_in_disease` = NULL,
    `name_aliases` = NULL,
    `is_top_level_pathway` = NULL,
    `disease_ontology_terms` = NULL,
    `biological_process` = NULL,
    `class` = NULL,
    `method` = NULL,
    `label` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Pathway class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param organism organism
    #' @param source source
    #' @param source_url source_url
    #' @param id_version id_version
    #' @param is_in_disease is_in_disease
    #' @param name_aliases name_aliases
    #' @param is_top_level_pathway is_top_level_pathway
    #' @param disease_ontology_terms disease_ontology_terms
    #' @param biological_process biological_process
    #' @param class class
    #' @param method method
    #' @param label label
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `organism`, `source`, `source_url`, `id_version`, `is_in_disease`, `name_aliases`, `is_top_level_pathway`, `disease_ontology_terms`, `biological_process`, `class`, `method`, `label`, `files_filesets`, ...) {
      if (!missing(`_id`)) {
        if (!(is.character(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be a string:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`organism`)) {
        if (!(is.character(`organism`) && length(`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", `organism`))
        }
        self$`organism` <- `organism`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!missing(`id_version`)) {
        if (!(is.character(`id_version`) && length(`id_version`) == 1)) {
          stop(paste("Error! Invalid data for `id_version`. Must be a string:", `id_version`))
        }
        self$`id_version` <- `id_version`
      }
      if (!missing(`is_in_disease`)) {
        if (!(is.logical(`is_in_disease`) && length(`is_in_disease`) == 1)) {
          stop(paste("Error! Invalid data for `is_in_disease`. Must be a boolean:", `is_in_disease`))
        }
        self$`is_in_disease` <- `is_in_disease`
      }
      if (!missing(`name_aliases`)) {
        stopifnot(is.vector(`name_aliases`), length(`name_aliases`) != 0)
        sapply(`name_aliases`, function(x) stopifnot(is.character(x)))
        self$`name_aliases` <- `name_aliases`
      }
      if (!missing(`is_top_level_pathway`)) {
        if (!(is.logical(`is_top_level_pathway`) && length(`is_top_level_pathway`) == 1)) {
          stop(paste("Error! Invalid data for `is_top_level_pathway`. Must be a boolean:", `is_top_level_pathway`))
        }
        self$`is_top_level_pathway` <- `is_top_level_pathway`
      }
      if (!missing(`disease_ontology_terms`)) {
        stopifnot(is.vector(`disease_ontology_terms`), length(`disease_ontology_terms`) != 0)
        sapply(`disease_ontology_terms`, function(x) stopifnot(is.character(x)))
        self$`disease_ontology_terms` <- `disease_ontology_terms`
      }
      if (!missing(`biological_process`)) {
        if (!(is.character(`biological_process`) && length(`biological_process`) == 1)) {
          stop(paste("Error! Invalid data for `biological_process`. Must be a string:", `biological_process`))
        }
        self$`biological_process` <- `biological_process`
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
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`files_filesets`)) {
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
    #' @return Pathway as a base R list.
    #' @examples
    #' # convert array of Pathway (x) to a data frame
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
    #' Convert Pathway to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PathwayObject <- list()
      if (!is.null(self$`_id`)) {
        PathwayObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        PathwayObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organism`)) {
        PathwayObject[["organism"]] <-
          self$`organism`
      }
      if (!is.null(self$`source`)) {
        PathwayObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        PathwayObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`id_version`)) {
        PathwayObject[["id_version"]] <-
          self$`id_version`
      }
      if (!is.null(self$`is_in_disease`)) {
        PathwayObject[["is_in_disease"]] <-
          self$`is_in_disease`
      }
      if (!is.null(self$`name_aliases`)) {
        PathwayObject[["name_aliases"]] <-
          self$`name_aliases`
      }
      if (!is.null(self$`is_top_level_pathway`)) {
        PathwayObject[["is_top_level_pathway"]] <-
          self$`is_top_level_pathway`
      }
      if (!is.null(self$`disease_ontology_terms`)) {
        PathwayObject[["disease_ontology_terms"]] <-
          self$`disease_ontology_terms`
      }
      if (!is.null(self$`biological_process`)) {
        PathwayObject[["biological_process"]] <-
          self$`biological_process`
      }
      if (!is.null(self$`class`)) {
        PathwayObject[["class"]] <-
          self$`class`
      }
      if (!is.null(self$`method`)) {
        PathwayObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`label`)) {
        PathwayObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`files_filesets`)) {
        PathwayObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(PathwayObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Pathway
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pathway
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`organism`)) {
        self$`organism` <- this_object$`organism`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`id_version`)) {
        self$`id_version` <- this_object$`id_version`
      }
      if (!is.null(this_object$`is_in_disease`)) {
        self$`is_in_disease` <- this_object$`is_in_disease`
      }
      if (!is.null(this_object$`name_aliases`)) {
        self$`name_aliases` <- ApiClient$new()$deserializeObj(this_object$`name_aliases`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`is_top_level_pathway`)) {
        self$`is_top_level_pathway` <- this_object$`is_top_level_pathway`
      }
      if (!is.null(this_object$`disease_ontology_terms`)) {
        self$`disease_ontology_terms` <- ApiClient$new()$deserializeObj(this_object$`disease_ontology_terms`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`biological_process`)) {
        self$`biological_process` <- this_object$`biological_process`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Pathway in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Pathway
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pathway
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`organism` <- this_object$`organism`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`id_version` <- this_object$`id_version`
      self$`is_in_disease` <- this_object$`is_in_disease`
      self$`name_aliases` <- ApiClient$new()$deserializeObj(this_object$`name_aliases`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`is_top_level_pathway` <- this_object$`is_top_level_pathway`
      self$`disease_ontology_terms` <- ApiClient$new()$deserializeObj(this_object$`disease_ontology_terms`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`biological_process` <- this_object$`biological_process`
      self$`class` <- this_object$`class`
      self$`method` <- this_object$`method`
      self$`label` <- this_object$`label`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Pathway and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `name` is missing."))
      }
      # check the required field `organism`
      if (!is.null(input_json$`organism`)) {
        if (!(is.character(input_json$`organism`) && length(input_json$`organism`) == 1)) {
          stop(paste("Error! Invalid data for `organism`. Must be a string:", input_json$`organism`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `organism` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `source` is missing."))
      }
      # check the required field `source_url`
      if (!is.null(input_json$`source_url`)) {
        if (!(is.character(input_json$`source_url`) && length(input_json$`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", input_json$`source_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `source_url` is missing."))
      }
      # check the required field `id_version`
      if (!is.null(input_json$`id_version`)) {
        if (!(is.character(input_json$`id_version`) && length(input_json$`id_version`) == 1)) {
          stop(paste("Error! Invalid data for `id_version`. Must be a string:", input_json$`id_version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `id_version` is missing."))
      }
      # check the required field `is_in_disease`
      if (!is.null(input_json$`is_in_disease`)) {
        if (!(is.logical(input_json$`is_in_disease`) && length(input_json$`is_in_disease`) == 1)) {
          stop(paste("Error! Invalid data for `is_in_disease`. Must be a boolean:", input_json$`is_in_disease`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `is_in_disease` is missing."))
      }
      # check the required field `name_aliases`
      if (!is.null(input_json$`name_aliases`)) {
        stopifnot(is.vector(input_json$`name_aliases`), length(input_json$`name_aliases`) != 0)
        tmp <- sapply(input_json$`name_aliases`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `name_aliases` is missing."))
      }
      # check the required field `is_top_level_pathway`
      if (!is.null(input_json$`is_top_level_pathway`)) {
        if (!(is.logical(input_json$`is_top_level_pathway`) && length(input_json$`is_top_level_pathway`) == 1)) {
          stop(paste("Error! Invalid data for `is_top_level_pathway`. Must be a boolean:", input_json$`is_top_level_pathway`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `is_top_level_pathway` is missing."))
      }
      # check the required field `disease_ontology_terms`
      if (!is.null(input_json$`disease_ontology_terms`)) {
        stopifnot(is.vector(input_json$`disease_ontology_terms`), length(input_json$`disease_ontology_terms`) != 0)
        tmp <- sapply(input_json$`disease_ontology_terms`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `disease_ontology_terms` is missing."))
      }
      # check the required field `biological_process`
      if (!is.null(input_json$`biological_process`)) {
        if (!(is.character(input_json$`biological_process`) && length(input_json$`biological_process`) == 1)) {
          stop(paste("Error! Invalid data for `biological_process`. Must be a string:", input_json$`biological_process`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `biological_process` is missing."))
      }
      # check the required field `class`
      if (!is.null(input_json$`class`)) {
        if (!(is.character(input_json$`class`) && length(input_json$`class`) == 1)) {
          stop(paste("Error! Invalid data for `class`. Must be a string:", input_json$`class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `class` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `method` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `label` is missing."))
      }
      # check the required field `files_filesets`
      if (!is.null(input_json$`files_filesets`)) {
        if (!(is.character(input_json$`files_filesets`) && length(input_json$`files_filesets`) == 1)) {
          stop(paste("Error! Invalid data for `files_filesets`. Must be a string:", input_json$`files_filesets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Pathway: the required field `files_filesets` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Pathway
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        return(FALSE)
      }

      # check if the required `id_version` is null
      if (is.null(self$`id_version`)) {
        return(FALSE)
      }

      # check if the required `is_in_disease` is null
      if (is.null(self$`is_in_disease`)) {
        return(FALSE)
      }

      # check if the required `name_aliases` is null
      if (is.null(self$`name_aliases`)) {
        return(FALSE)
      }

      # check if the required `is_top_level_pathway` is null
      if (is.null(self$`is_top_level_pathway`)) {
        return(FALSE)
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        return(FALSE)
      }

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `organism` is null
      if (is.null(self$`organism`)) {
        invalid_fields["organism"] <- "Non-nullable required field `organism` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `source_url` is null
      if (is.null(self$`source_url`)) {
        invalid_fields["source_url"] <- "Non-nullable required field `source_url` cannot be null."
      }

      # check if the required `id_version` is null
      if (is.null(self$`id_version`)) {
        invalid_fields["id_version"] <- "Non-nullable required field `id_version` cannot be null."
      }

      # check if the required `is_in_disease` is null
      if (is.null(self$`is_in_disease`)) {
        invalid_fields["is_in_disease"] <- "Non-nullable required field `is_in_disease` cannot be null."
      }

      # check if the required `name_aliases` is null
      if (is.null(self$`name_aliases`)) {
        invalid_fields["name_aliases"] <- "Non-nullable required field `name_aliases` cannot be null."
      }

      # check if the required `is_top_level_pathway` is null
      if (is.null(self$`is_top_level_pathway`)) {
        invalid_fields["is_top_level_pathway"] <- "Non-nullable required field `is_top_level_pathway` cannot be null."
      }

      # check if the required `class` is null
      if (is.null(self$`class`)) {
        invalid_fields["class"] <- "Non-nullable required field `class` cannot be null."
      }

      # check if the required `files_filesets` is null
      if (is.null(self$`files_filesets`)) {
        invalid_fields["files_filesets"] <- "Non-nullable required field `files_filesets` cannot be null."
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
# Pathway$unlock()
#
## Below is an example to define the print function
# Pathway$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Pathway$lock()

