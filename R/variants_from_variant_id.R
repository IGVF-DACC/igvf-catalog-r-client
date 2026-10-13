#' Create a new VariantsFromVariantID
#'
#' @description
#' VariantsFromVariantID Class
#'
#' @docType class
#' @title VariantsFromVariantID
#' @description VariantsFromVariantID Class
#' @format An \code{R6Class} generator object
#' @field chr  character
#' @field ancestry  character
#' @field d_prime  numeric
#' @field r2  numeric
#' @field positive_corr  character
#' @field label  character
#' @field variant_1_base_pair  character
#' @field variant_1_rsid  character
#' @field variant_2_base_pair  character
#' @field variant_2_rsid  character
#' @field variant_1_pos  numeric [optional]
#' @field variant_1_spdi  character [optional]
#' @field variant_1_hgvs  character [optional]
#' @field variant_2_pos  numeric [optional]
#' @field variant_2_spdi  character [optional]
#' @field variant_2_hgvs  character [optional]
#' @field source  character [optional]
#' @field source_url  character [optional]
#' @field sequence_variant  \link{VariantsFromVariantIDSequenceVariant} [optional]
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariantsFromVariantID <- R6::R6Class(
  "VariantsFromVariantID",
  public = list(
    `chr` = NULL,
    `ancestry` = NULL,
    `d_prime` = NULL,
    `r2` = NULL,
    `positive_corr` = NULL,
    `label` = NULL,
    `variant_1_base_pair` = NULL,
    `variant_1_rsid` = NULL,
    `variant_2_base_pair` = NULL,
    `variant_2_rsid` = NULL,
    `variant_1_pos` = NULL,
    `variant_1_spdi` = NULL,
    `variant_1_hgvs` = NULL,
    `variant_2_pos` = NULL,
    `variant_2_spdi` = NULL,
    `variant_2_hgvs` = NULL,
    `source` = NULL,
    `source_url` = NULL,
    `sequence_variant` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new VariantsFromVariantID class.
    #'
    #' @param chr chr
    #' @param ancestry ancestry
    #' @param d_prime d_prime
    #' @param r2 r2
    #' @param positive_corr positive_corr
    #' @param label label
    #' @param variant_1_base_pair variant_1_base_pair
    #' @param variant_1_rsid variant_1_rsid
    #' @param variant_2_base_pair variant_2_base_pair
    #' @param variant_2_rsid variant_2_rsid
    #' @param name name
    #' @param variant_1_pos variant_1_pos
    #' @param variant_1_spdi variant_1_spdi
    #' @param variant_1_hgvs variant_1_hgvs
    #' @param variant_2_pos variant_2_pos
    #' @param variant_2_spdi variant_2_spdi
    #' @param variant_2_hgvs variant_2_hgvs
    #' @param source source
    #' @param source_url source_url
    #' @param sequence_variant sequence_variant
    #' @param ... Other optional arguments.
    initialize = function(`chr`, `ancestry`, `d_prime`, `r2`, `positive_corr`, `label`, `variant_1_base_pair`, `variant_1_rsid`, `variant_2_base_pair`, `variant_2_rsid`, `name`, `variant_1_pos` = NULL, `variant_1_spdi` = NULL, `variant_1_hgvs` = NULL, `variant_2_pos` = NULL, `variant_2_spdi` = NULL, `variant_2_hgvs` = NULL, `source` = NULL, `source_url` = NULL, `sequence_variant` = NULL, ...) {
      if (!missing(`chr`)) {
        if (!(is.character(`chr`) && length(`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", `chr`))
        }
        self$`chr` <- `chr`
      }
      if (!missing(`ancestry`)) {
        if (!(is.character(`ancestry`) && length(`ancestry`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry`. Must be a string:", `ancestry`))
        }
        self$`ancestry` <- `ancestry`
      }
      if (!missing(`d_prime`)) {
        self$`d_prime` <- `d_prime`
      }
      if (!missing(`r2`)) {
        self$`r2` <- `r2`
      }
      if (!missing(`positive_corr`)) {
        if (!(is.logical(`positive_corr`) && length(`positive_corr`) == 1)) {
          stop(paste("Error! Invalid data for `positive_corr`. Must be a boolean:", `positive_corr`))
        }
        self$`positive_corr` <- `positive_corr`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`variant_1_base_pair`)) {
        if (!(is.character(`variant_1_base_pair`) && length(`variant_1_base_pair`) == 1)) {
          stop(paste("Error! Invalid data for `variant_1_base_pair`. Must be a string:", `variant_1_base_pair`))
        }
        self$`variant_1_base_pair` <- `variant_1_base_pair`
      }
      if (!missing(`variant_1_rsid`)) {
        if (!(is.character(`variant_1_rsid`) && length(`variant_1_rsid`) == 1)) {
          stop(paste("Error! Invalid data for `variant_1_rsid`. Must be a string:", `variant_1_rsid`))
        }
        self$`variant_1_rsid` <- `variant_1_rsid`
      }
      if (!missing(`variant_2_base_pair`)) {
        if (!(is.character(`variant_2_base_pair`) && length(`variant_2_base_pair`) == 1)) {
          stop(paste("Error! Invalid data for `variant_2_base_pair`. Must be a string:", `variant_2_base_pair`))
        }
        self$`variant_2_base_pair` <- `variant_2_base_pair`
      }
      if (!missing(`variant_2_rsid`)) {
        if (!(is.character(`variant_2_rsid`) && length(`variant_2_rsid`) == 1)) {
          stop(paste("Error! Invalid data for `variant_2_rsid`. Must be a string:", `variant_2_rsid`))
        }
        self$`variant_2_rsid` <- `variant_2_rsid`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`variant_1_pos`)) {
        self$`variant_1_pos` <- `variant_1_pos`
      }
      if (!is.null(`variant_1_spdi`)) {
        if (!(is.character(`variant_1_spdi`) && length(`variant_1_spdi`) == 1)) {
          stop(paste("Error! Invalid data for `variant_1_spdi`. Must be a string:", `variant_1_spdi`))
        }
        self$`variant_1_spdi` <- `variant_1_spdi`
      }
      if (!is.null(`variant_1_hgvs`)) {
        if (!(is.character(`variant_1_hgvs`) && length(`variant_1_hgvs`) == 1)) {
          stop(paste("Error! Invalid data for `variant_1_hgvs`. Must be a string:", `variant_1_hgvs`))
        }
        self$`variant_1_hgvs` <- `variant_1_hgvs`
      }
      if (!is.null(`variant_2_pos`)) {
        self$`variant_2_pos` <- `variant_2_pos`
      }
      if (!is.null(`variant_2_spdi`)) {
        if (!(is.character(`variant_2_spdi`) && length(`variant_2_spdi`) == 1)) {
          stop(paste("Error! Invalid data for `variant_2_spdi`. Must be a string:", `variant_2_spdi`))
        }
        self$`variant_2_spdi` <- `variant_2_spdi`
      }
      if (!is.null(`variant_2_hgvs`)) {
        if (!(is.character(`variant_2_hgvs`) && length(`variant_2_hgvs`) == 1)) {
          stop(paste("Error! Invalid data for `variant_2_hgvs`. Must be a string:", `variant_2_hgvs`))
        }
        self$`variant_2_hgvs` <- `variant_2_hgvs`
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
      if (!is.null(`sequence_variant`)) {
        stopifnot(R6::is.R6(`sequence_variant`))
        self$`sequence_variant` <- `sequence_variant`
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
    #' @return VariantsFromVariantID as a base R list.
    #' @examples
    #' # convert array of VariantsFromVariantID (x) to a data frame
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
    #' Convert VariantsFromVariantID to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VariantsFromVariantIDObject <- list()
      if (!is.null(self$`chr`)) {
        VariantsFromVariantIDObject[["chr"]] <-
          self$`chr`
      }
      if (!is.null(self$`ancestry`)) {
        VariantsFromVariantIDObject[["ancestry"]] <-
          self$`ancestry`
      }
      if (!is.null(self$`d_prime`)) {
        VariantsFromVariantIDObject[["d_prime"]] <-
          self$`d_prime`
      }
      if (!is.null(self$`r2`)) {
        VariantsFromVariantIDObject[["r2"]] <-
          self$`r2`
      }
      if (!is.null(self$`positive_corr`)) {
        VariantsFromVariantIDObject[["positive_corr"]] <-
          self$`positive_corr`
      }
      if (!is.null(self$`label`)) {
        VariantsFromVariantIDObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`variant_1_base_pair`)) {
        VariantsFromVariantIDObject[["variant_1_base_pair"]] <-
          self$`variant_1_base_pair`
      }
      if (!is.null(self$`variant_1_rsid`)) {
        VariantsFromVariantIDObject[["variant_1_rsid"]] <-
          self$`variant_1_rsid`
      }
      if (!is.null(self$`variant_2_base_pair`)) {
        VariantsFromVariantIDObject[["variant_2_base_pair"]] <-
          self$`variant_2_base_pair`
      }
      if (!is.null(self$`variant_2_rsid`)) {
        VariantsFromVariantIDObject[["variant_2_rsid"]] <-
          self$`variant_2_rsid`
      }
      if (!is.null(self$`variant_1_pos`)) {
        VariantsFromVariantIDObject[["variant_1_pos"]] <-
          self$`variant_1_pos`
      }
      if (!is.null(self$`variant_1_spdi`)) {
        VariantsFromVariantIDObject[["variant_1_spdi"]] <-
          self$`variant_1_spdi`
      }
      if (!is.null(self$`variant_1_hgvs`)) {
        VariantsFromVariantIDObject[["variant_1_hgvs"]] <-
          self$`variant_1_hgvs`
      }
      if (!is.null(self$`variant_2_pos`)) {
        VariantsFromVariantIDObject[["variant_2_pos"]] <-
          self$`variant_2_pos`
      }
      if (!is.null(self$`variant_2_spdi`)) {
        VariantsFromVariantIDObject[["variant_2_spdi"]] <-
          self$`variant_2_spdi`
      }
      if (!is.null(self$`variant_2_hgvs`)) {
        VariantsFromVariantIDObject[["variant_2_hgvs"]] <-
          self$`variant_2_hgvs`
      }
      if (!is.null(self$`source`)) {
        VariantsFromVariantIDObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`source_url`)) {
        VariantsFromVariantIDObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`sequence_variant`)) {
        VariantsFromVariantIDObject[["sequence_variant"]] <-
          self$`sequence_variant`$toSimpleType()
      }
      if (!is.null(self$`name`)) {
        VariantsFromVariantIDObject[["name"]] <-
          self$`name`
      }
      return(VariantsFromVariantIDObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsFromVariantID
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantsFromVariantID
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chr`)) {
        self$`chr` <- this_object$`chr`
      }
      if (!is.null(this_object$`ancestry`)) {
        self$`ancestry` <- this_object$`ancestry`
      }
      if (!is.null(this_object$`d_prime`)) {
        self$`d_prime` <- this_object$`d_prime`
      }
      if (!is.null(this_object$`r2`)) {
        self$`r2` <- this_object$`r2`
      }
      if (!is.null(this_object$`positive_corr`)) {
        self$`positive_corr` <- this_object$`positive_corr`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`variant_1_base_pair`)) {
        self$`variant_1_base_pair` <- this_object$`variant_1_base_pair`
      }
      if (!is.null(this_object$`variant_1_rsid`)) {
        self$`variant_1_rsid` <- this_object$`variant_1_rsid`
      }
      if (!is.null(this_object$`variant_2_base_pair`)) {
        self$`variant_2_base_pair` <- this_object$`variant_2_base_pair`
      }
      if (!is.null(this_object$`variant_2_rsid`)) {
        self$`variant_2_rsid` <- this_object$`variant_2_rsid`
      }
      if (!is.null(this_object$`variant_1_pos`)) {
        self$`variant_1_pos` <- this_object$`variant_1_pos`
      }
      if (!is.null(this_object$`variant_1_spdi`)) {
        self$`variant_1_spdi` <- this_object$`variant_1_spdi`
      }
      if (!is.null(this_object$`variant_1_hgvs`)) {
        self$`variant_1_hgvs` <- this_object$`variant_1_hgvs`
      }
      if (!is.null(this_object$`variant_2_pos`)) {
        self$`variant_2_pos` <- this_object$`variant_2_pos`
      }
      if (!is.null(this_object$`variant_2_spdi`)) {
        self$`variant_2_spdi` <- this_object$`variant_2_spdi`
      }
      if (!is.null(this_object$`variant_2_hgvs`)) {
        self$`variant_2_hgvs` <- this_object$`variant_2_hgvs`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`sequence_variant`)) {
        `sequence_variant_object` <- VariantsFromVariantIDSequenceVariant$new()
        `sequence_variant_object`$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
        self$`sequence_variant` <- `sequence_variant_object`
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
    #' @return VariantsFromVariantID in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VariantsFromVariantID
    #'
    #' @param input_json the JSON input
    #' @return the instance of VariantsFromVariantID
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chr` <- this_object$`chr`
      self$`ancestry` <- this_object$`ancestry`
      self$`d_prime` <- this_object$`d_prime`
      self$`r2` <- this_object$`r2`
      self$`positive_corr` <- this_object$`positive_corr`
      self$`label` <- this_object$`label`
      self$`variant_1_base_pair` <- this_object$`variant_1_base_pair`
      self$`variant_1_rsid` <- this_object$`variant_1_rsid`
      self$`variant_2_base_pair` <- this_object$`variant_2_base_pair`
      self$`variant_2_rsid` <- this_object$`variant_2_rsid`
      self$`variant_1_pos` <- this_object$`variant_1_pos`
      self$`variant_1_spdi` <- this_object$`variant_1_spdi`
      self$`variant_1_hgvs` <- this_object$`variant_1_hgvs`
      self$`variant_2_pos` <- this_object$`variant_2_pos`
      self$`variant_2_spdi` <- this_object$`variant_2_spdi`
      self$`variant_2_hgvs` <- this_object$`variant_2_hgvs`
      self$`source` <- this_object$`source`
      self$`source_url` <- this_object$`source_url`
      self$`sequence_variant` <- VariantsFromVariantIDSequenceVariant$new()$fromJSON(jsonlite::toJSON(this_object$`sequence_variant`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to VariantsFromVariantID and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `chr`
      if (!is.null(input_json$`chr`)) {
        if (!(is.character(input_json$`chr`) && length(input_json$`chr`) == 1)) {
          stop(paste("Error! Invalid data for `chr`. Must be a string:", input_json$`chr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `chr` is missing."))
      }
      # check the required field `ancestry`
      if (!is.null(input_json$`ancestry`)) {
        if (!(is.character(input_json$`ancestry`) && length(input_json$`ancestry`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry`. Must be a string:", input_json$`ancestry`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `ancestry` is missing."))
      }
      # check the required field `d_prime`
      if (!is.null(input_json$`d_prime`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `d_prime` is missing."))
      }
      # check the required field `r2`
      if (!is.null(input_json$`r2`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `r2` is missing."))
      }
      # check the required field `positive_corr`
      if (!is.null(input_json$`positive_corr`)) {
        if (!(is.logical(input_json$`positive_corr`) && length(input_json$`positive_corr`) == 1)) {
          stop(paste("Error! Invalid data for `positive_corr`. Must be a boolean:", input_json$`positive_corr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `positive_corr` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `label` is missing."))
      }
      # check the required field `variant_1_base_pair`
      if (!is.null(input_json$`variant_1_base_pair`)) {
        if (!(is.character(input_json$`variant_1_base_pair`) && length(input_json$`variant_1_base_pair`) == 1)) {
          stop(paste("Error! Invalid data for `variant_1_base_pair`. Must be a string:", input_json$`variant_1_base_pair`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `variant_1_base_pair` is missing."))
      }
      # check the required field `variant_1_rsid`
      if (!is.null(input_json$`variant_1_rsid`)) {
        if (!(is.character(input_json$`variant_1_rsid`) && length(input_json$`variant_1_rsid`) == 1)) {
          stop(paste("Error! Invalid data for `variant_1_rsid`. Must be a string:", input_json$`variant_1_rsid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `variant_1_rsid` is missing."))
      }
      # check the required field `variant_2_base_pair`
      if (!is.null(input_json$`variant_2_base_pair`)) {
        if (!(is.character(input_json$`variant_2_base_pair`) && length(input_json$`variant_2_base_pair`) == 1)) {
          stop(paste("Error! Invalid data for `variant_2_base_pair`. Must be a string:", input_json$`variant_2_base_pair`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `variant_2_base_pair` is missing."))
      }
      # check the required field `variant_2_rsid`
      if (!is.null(input_json$`variant_2_rsid`)) {
        if (!(is.character(input_json$`variant_2_rsid`) && length(input_json$`variant_2_rsid`) == 1)) {
          stop(paste("Error! Invalid data for `variant_2_rsid`. Must be a string:", input_json$`variant_2_rsid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `variant_2_rsid` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VariantsFromVariantID: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VariantsFromVariantID
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `variant_1_base_pair` is null
      if (is.null(self$`variant_1_base_pair`)) {
        return(FALSE)
      }

      # check if the required `variant_1_rsid` is null
      if (is.null(self$`variant_1_rsid`)) {
        return(FALSE)
      }

      # check if the required `variant_2_base_pair` is null
      if (is.null(self$`variant_2_base_pair`)) {
        return(FALSE)
      }

      # check if the required `variant_2_rsid` is null
      if (is.null(self$`variant_2_rsid`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `variant_1_base_pair` is null
      if (is.null(self$`variant_1_base_pair`)) {
        invalid_fields["variant_1_base_pair"] <- "Non-nullable required field `variant_1_base_pair` cannot be null."
      }

      # check if the required `variant_1_rsid` is null
      if (is.null(self$`variant_1_rsid`)) {
        invalid_fields["variant_1_rsid"] <- "Non-nullable required field `variant_1_rsid` cannot be null."
      }

      # check if the required `variant_2_base_pair` is null
      if (is.null(self$`variant_2_base_pair`)) {
        invalid_fields["variant_2_base_pair"] <- "Non-nullable required field `variant_2_base_pair` cannot be null."
      }

      # check if the required `variant_2_rsid` is null
      if (is.null(self$`variant_2_rsid`)) {
        invalid_fields["variant_2_rsid"] <- "Non-nullable required field `variant_2_rsid` cannot be null."
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
# VariantsFromVariantID$unlock()
#
## Below is an example to define the print function
# VariantsFromVariantID$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VariantsFromVariantID$lock()

