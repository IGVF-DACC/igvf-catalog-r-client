#' Create a new PredictionsFromVariants
#'
#' @description
#' PredictionsFromVariants Class
#'
#' @docType class
#' @title PredictionsFromVariants
#' @description PredictionsFromVariants Class
#' @format An \code{R6Class} generator object
#' @field distance_gene_variant  numeric
#' @field element_chr  character
#' @field element_start  numeric
#' @field element_end  numeric
#' @field element_type  character
#' @field id  character
#' @field cell_type  character
#' @field target_gene  \link{TargetGene}
#' @field score  numeric [optional]
#' @field model  character
#' @field dataset  character
#' @field name  character
#' @field method  character [optional]
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PredictionsFromVariants <- R6::R6Class(
  "PredictionsFromVariants",
  public = list(
    `distance_gene_variant` = NULL,
    `element_chr` = NULL,
    `element_start` = NULL,
    `element_end` = NULL,
    `element_type` = NULL,
    `id` = NULL,
    `cell_type` = NULL,
    `target_gene` = NULL,
    `score` = NULL,
    `model` = NULL,
    `dataset` = NULL,
    `name` = NULL,
    `method` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new PredictionsFromVariants class.
    #'
    #' @param distance_gene_variant distance_gene_variant
    #' @param element_chr element_chr
    #' @param element_start element_start
    #' @param element_end element_end
    #' @param element_type element_type
    #' @param id id
    #' @param cell_type cell_type
    #' @param target_gene target_gene
    #' @param model model
    #' @param dataset dataset
    #' @param name name
    #' @param score score
    #' @param method method
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`distance_gene_variant`, `element_chr`, `element_start`, `element_end`, `element_type`, `id`, `cell_type`, `target_gene`, `model`, `dataset`, `name`, `score` = NULL, `method` = NULL, `files_filesets` = NULL, ...) {
      if (!missing(`distance_gene_variant`)) {
        self$`distance_gene_variant` <- `distance_gene_variant`
      }
      if (!missing(`element_chr`)) {
        if (!(is.character(`element_chr`) && length(`element_chr`) == 1)) {
          stop(paste("Error! Invalid data for `element_chr`. Must be a string:", `element_chr`))
        }
        self$`element_chr` <- `element_chr`
      }
      if (!missing(`element_start`)) {
        self$`element_start` <- `element_start`
      }
      if (!missing(`element_end`)) {
        self$`element_end` <- `element_end`
      }
      if (!missing(`element_type`)) {
        if (!(is.character(`element_type`) && length(`element_type`) == 1)) {
          stop(paste("Error! Invalid data for `element_type`. Must be a string:", `element_type`))
        }
        self$`element_type` <- `element_type`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`cell_type`)) {
        if (!(is.character(`cell_type`) && length(`cell_type`) == 1)) {
          stop(paste("Error! Invalid data for `cell_type`. Must be a string:", `cell_type`))
        }
        self$`cell_type` <- `cell_type`
      }
      if (!missing(`target_gene`)) {
        stopifnot(R6::is.R6(`target_gene`))
        self$`target_gene` <- `target_gene`
      }
      if (!missing(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`dataset`)) {
        if (!(is.character(`dataset`) && length(`dataset`) == 1)) {
          stop(paste("Error! Invalid data for `dataset`. Must be a string:", `dataset`))
        }
        self$`dataset` <- `dataset`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
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
    #' @return PredictionsFromVariants as a base R list.
    #' @examples
    #' # convert array of PredictionsFromVariants (x) to a data frame
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
    #' Convert PredictionsFromVariants to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PredictionsFromVariantsObject <- list()
      if (!is.null(self$`distance_gene_variant`)) {
        PredictionsFromVariantsObject[["distance_gene_variant"]] <-
          self$`distance_gene_variant`
      }
      if (!is.null(self$`element_chr`)) {
        PredictionsFromVariantsObject[["element_chr"]] <-
          self$`element_chr`
      }
      if (!is.null(self$`element_start`)) {
        PredictionsFromVariantsObject[["element_start"]] <-
          self$`element_start`
      }
      if (!is.null(self$`element_end`)) {
        PredictionsFromVariantsObject[["element_end"]] <-
          self$`element_end`
      }
      if (!is.null(self$`element_type`)) {
        PredictionsFromVariantsObject[["element_type"]] <-
          self$`element_type`
      }
      if (!is.null(self$`id`)) {
        PredictionsFromVariantsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`cell_type`)) {
        PredictionsFromVariantsObject[["cell_type"]] <-
          self$`cell_type`
      }
      if (!is.null(self$`target_gene`)) {
        PredictionsFromVariantsObject[["target_gene"]] <-
          self$`target_gene`$toSimpleType()
      }
      if (!is.null(self$`score`)) {
        PredictionsFromVariantsObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`model`)) {
        PredictionsFromVariantsObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`dataset`)) {
        PredictionsFromVariantsObject[["dataset"]] <-
          self$`dataset`
      }
      if (!is.null(self$`name`)) {
        PredictionsFromVariantsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`method`)) {
        PredictionsFromVariantsObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`files_filesets`)) {
        PredictionsFromVariantsObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(PredictionsFromVariantsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PredictionsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of PredictionsFromVariants
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`distance_gene_variant`)) {
        self$`distance_gene_variant` <- this_object$`distance_gene_variant`
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
      if (!is.null(this_object$`element_type`)) {
        self$`element_type` <- this_object$`element_type`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`cell_type`)) {
        self$`cell_type` <- this_object$`cell_type`
      }
      if (!is.null(this_object$`target_gene`)) {
        `target_gene_object` <- TargetGene$new()
        `target_gene_object`$fromJSON(jsonlite::toJSON(this_object$`target_gene`, auto_unbox = TRUE, digits = NA))
        self$`target_gene` <- `target_gene_object`
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
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
    #' @return PredictionsFromVariants in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PredictionsFromVariants
    #'
    #' @param input_json the JSON input
    #' @return the instance of PredictionsFromVariants
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`distance_gene_variant` <- this_object$`distance_gene_variant`
      self$`element_chr` <- this_object$`element_chr`
      self$`element_start` <- this_object$`element_start`
      self$`element_end` <- this_object$`element_end`
      self$`element_type` <- this_object$`element_type`
      self$`id` <- this_object$`id`
      self$`cell_type` <- this_object$`cell_type`
      self$`target_gene` <- TargetGene$new()$fromJSON(jsonlite::toJSON(this_object$`target_gene`, auto_unbox = TRUE, digits = NA))
      self$`score` <- this_object$`score`
      self$`model` <- this_object$`model`
      self$`dataset` <- this_object$`dataset`
      self$`name` <- this_object$`name`
      self$`method` <- this_object$`method`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to PredictionsFromVariants and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `distance_gene_variant`
      if (!is.null(input_json$`distance_gene_variant`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `distance_gene_variant` is missing."))
      }
      # check the required field `element_chr`
      if (!is.null(input_json$`element_chr`)) {
        if (!(is.character(input_json$`element_chr`) && length(input_json$`element_chr`) == 1)) {
          stop(paste("Error! Invalid data for `element_chr`. Must be a string:", input_json$`element_chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `element_chr` is missing."))
      }
      # check the required field `element_start`
      if (!is.null(input_json$`element_start`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `element_start` is missing."))
      }
      # check the required field `element_end`
      if (!is.null(input_json$`element_end`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `element_end` is missing."))
      }
      # check the required field `element_type`
      if (!is.null(input_json$`element_type`)) {
        if (!(is.character(input_json$`element_type`) && length(input_json$`element_type`) == 1)) {
          stop(paste("Error! Invalid data for `element_type`. Must be a string:", input_json$`element_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `element_type` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `id` is missing."))
      }
      # check the required field `cell_type`
      if (!is.null(input_json$`cell_type`)) {
        if (!(is.character(input_json$`cell_type`) && length(input_json$`cell_type`) == 1)) {
          stop(paste("Error! Invalid data for `cell_type`. Must be a string:", input_json$`cell_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `cell_type` is missing."))
      }
      # check the required field `target_gene`
      if (!is.null(input_json$`target_gene`)) {
        stopifnot(R6::is.R6(input_json$`target_gene`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `target_gene` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `model` is missing."))
      }
      # check the required field `dataset`
      if (!is.null(input_json$`dataset`)) {
        if (!(is.character(input_json$`dataset`) && length(input_json$`dataset`) == 1)) {
          stop(paste("Error! Invalid data for `dataset`. Must be a string:", input_json$`dataset`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `dataset` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionsFromVariants: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PredictionsFromVariants
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `distance_gene_variant` is null
      if (is.null(self$`distance_gene_variant`)) {
        return(FALSE)
      }

      # check if the required `element_chr` is null
      if (is.null(self$`element_chr`)) {
        return(FALSE)
      }

      # check if the required `element_start` is null
      if (is.null(self$`element_start`)) {
        return(FALSE)
      }

      # check if the required `element_end` is null
      if (is.null(self$`element_end`)) {
        return(FALSE)
      }

      # check if the required `element_type` is null
      if (is.null(self$`element_type`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `cell_type` is null
      if (is.null(self$`cell_type`)) {
        return(FALSE)
      }

      # check if the required `target_gene` is null
      if (is.null(self$`target_gene`)) {
        return(FALSE)
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `dataset` is null
      if (is.null(self$`dataset`)) {
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
      # check if the required `distance_gene_variant` is null
      if (is.null(self$`distance_gene_variant`)) {
        invalid_fields["distance_gene_variant"] <- "Non-nullable required field `distance_gene_variant` cannot be null."
      }

      # check if the required `element_chr` is null
      if (is.null(self$`element_chr`)) {
        invalid_fields["element_chr"] <- "Non-nullable required field `element_chr` cannot be null."
      }

      # check if the required `element_start` is null
      if (is.null(self$`element_start`)) {
        invalid_fields["element_start"] <- "Non-nullable required field `element_start` cannot be null."
      }

      # check if the required `element_end` is null
      if (is.null(self$`element_end`)) {
        invalid_fields["element_end"] <- "Non-nullable required field `element_end` cannot be null."
      }

      # check if the required `element_type` is null
      if (is.null(self$`element_type`)) {
        invalid_fields["element_type"] <- "Non-nullable required field `element_type` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `cell_type` is null
      if (is.null(self$`cell_type`)) {
        invalid_fields["cell_type"] <- "Non-nullable required field `cell_type` cannot be null."
      }

      # check if the required `target_gene` is null
      if (is.null(self$`target_gene`)) {
        invalid_fields["target_gene"] <- "Non-nullable required field `target_gene` cannot be null."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `dataset` is null
      if (is.null(self$`dataset`)) {
        invalid_fields["dataset"] <- "Non-nullable required field `dataset` cannot be null."
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
# PredictionsFromVariants$unlock()
#
## Below is an example to define the print function
# PredictionsFromVariants$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PredictionsFromVariants$lock()

