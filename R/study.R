#' Create a new Study
#'
#' @description
#' Study Class
#'
#' @docType class
#' @title Study
#' @description Study Class
#' @format An \code{R6Class} generator object
#' @field _id  character
#' @field name  character
#' @field ancestry_initial  character
#' @field ancestry_replication  character
#' @field n_cases  character
#' @field n_initial  character
#' @field n_replication  character
#' @field pmid  character
#' @field pub_author  character
#' @field pub_date  character
#' @field pub_journal  character
#' @field pub_title  character
#' @field has_sumstats  character
#' @field num_assoc_loci  character
#' @field study_source  character
#' @field trait_reported  character
#' @field trait_efos  character
#' @field trait_category  character
#' @field source  character [optional]
#' @field study_type  character
#' @field version  character
#' @field files_filesets  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Study <- R6::R6Class(
  "Study",
  public = list(
    `_id` = NULL,
    `name` = NULL,
    `ancestry_initial` = NULL,
    `ancestry_replication` = NULL,
    `n_cases` = NULL,
    `n_initial` = NULL,
    `n_replication` = NULL,
    `pmid` = NULL,
    `pub_author` = NULL,
    `pub_date` = NULL,
    `pub_journal` = NULL,
    `pub_title` = NULL,
    `has_sumstats` = NULL,
    `num_assoc_loci` = NULL,
    `study_source` = NULL,
    `trait_reported` = NULL,
    `trait_efos` = NULL,
    `trait_category` = NULL,
    `source` = NULL,
    `study_type` = NULL,
    `version` = NULL,
    `files_filesets` = NULL,

    #' @description
    #' Initialize a new Study class.
    #'
    #' @param _id _id
    #' @param name name
    #' @param ancestry_initial ancestry_initial
    #' @param ancestry_replication ancestry_replication
    #' @param n_cases n_cases
    #' @param n_initial n_initial
    #' @param n_replication n_replication
    #' @param pmid pmid
    #' @param pub_author pub_author
    #' @param pub_date pub_date
    #' @param pub_journal pub_journal
    #' @param pub_title pub_title
    #' @param has_sumstats has_sumstats
    #' @param num_assoc_loci num_assoc_loci
    #' @param study_source study_source
    #' @param trait_reported trait_reported
    #' @param trait_efos trait_efos
    #' @param trait_category trait_category
    #' @param study_type study_type
    #' @param version version
    #' @param source source
    #' @param files_filesets files_filesets
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `name`, `ancestry_initial`, `ancestry_replication`, `n_cases`, `n_initial`, `n_replication`, `pmid`, `pub_author`, `pub_date`, `pub_journal`, `pub_title`, `has_sumstats`, `num_assoc_loci`, `study_source`, `trait_reported`, `trait_efos`, `trait_category`, `study_type`, `version`, `source` = NULL, `files_filesets` = NULL, ...) {
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
      if (!missing(`ancestry_initial`)) {
        if (!(is.character(`ancestry_initial`) && length(`ancestry_initial`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry_initial`. Must be a string:", `ancestry_initial`))
        }
        self$`ancestry_initial` <- `ancestry_initial`
      }
      if (!missing(`ancestry_replication`)) {
        if (!(is.character(`ancestry_replication`) && length(`ancestry_replication`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry_replication`. Must be a string:", `ancestry_replication`))
        }
        self$`ancestry_replication` <- `ancestry_replication`
      }
      if (!missing(`n_cases`)) {
        if (!(is.character(`n_cases`) && length(`n_cases`) == 1)) {
          stop(paste("Error! Invalid data for `n_cases`. Must be a string:", `n_cases`))
        }
        self$`n_cases` <- `n_cases`
      }
      if (!missing(`n_initial`)) {
        if (!(is.character(`n_initial`) && length(`n_initial`) == 1)) {
          stop(paste("Error! Invalid data for `n_initial`. Must be a string:", `n_initial`))
        }
        self$`n_initial` <- `n_initial`
      }
      if (!missing(`n_replication`)) {
        if (!(is.character(`n_replication`) && length(`n_replication`) == 1)) {
          stop(paste("Error! Invalid data for `n_replication`. Must be a string:", `n_replication`))
        }
        self$`n_replication` <- `n_replication`
      }
      if (!missing(`pmid`)) {
        if (!(is.character(`pmid`) && length(`pmid`) == 1)) {
          stop(paste("Error! Invalid data for `pmid`. Must be a string:", `pmid`))
        }
        self$`pmid` <- `pmid`
      }
      if (!missing(`pub_author`)) {
        if (!(is.character(`pub_author`) && length(`pub_author`) == 1)) {
          stop(paste("Error! Invalid data for `pub_author`. Must be a string:", `pub_author`))
        }
        self$`pub_author` <- `pub_author`
      }
      if (!missing(`pub_date`)) {
        if (!(is.character(`pub_date`) && length(`pub_date`) == 1)) {
          stop(paste("Error! Invalid data for `pub_date`. Must be a string:", `pub_date`))
        }
        self$`pub_date` <- `pub_date`
      }
      if (!missing(`pub_journal`)) {
        if (!(is.character(`pub_journal`) && length(`pub_journal`) == 1)) {
          stop(paste("Error! Invalid data for `pub_journal`. Must be a string:", `pub_journal`))
        }
        self$`pub_journal` <- `pub_journal`
      }
      if (!missing(`pub_title`)) {
        if (!(is.character(`pub_title`) && length(`pub_title`) == 1)) {
          stop(paste("Error! Invalid data for `pub_title`. Must be a string:", `pub_title`))
        }
        self$`pub_title` <- `pub_title`
      }
      if (!missing(`has_sumstats`)) {
        if (!(is.character(`has_sumstats`) && length(`has_sumstats`) == 1)) {
          stop(paste("Error! Invalid data for `has_sumstats`. Must be a string:", `has_sumstats`))
        }
        self$`has_sumstats` <- `has_sumstats`
      }
      if (!missing(`num_assoc_loci`)) {
        if (!(is.character(`num_assoc_loci`) && length(`num_assoc_loci`) == 1)) {
          stop(paste("Error! Invalid data for `num_assoc_loci`. Must be a string:", `num_assoc_loci`))
        }
        self$`num_assoc_loci` <- `num_assoc_loci`
      }
      if (!missing(`study_source`)) {
        if (!(is.character(`study_source`) && length(`study_source`) == 1)) {
          stop(paste("Error! Invalid data for `study_source`. Must be a string:", `study_source`))
        }
        self$`study_source` <- `study_source`
      }
      if (!missing(`trait_reported`)) {
        if (!(is.character(`trait_reported`) && length(`trait_reported`) == 1)) {
          stop(paste("Error! Invalid data for `trait_reported`. Must be a string:", `trait_reported`))
        }
        self$`trait_reported` <- `trait_reported`
      }
      if (!missing(`trait_efos`)) {
        if (!(is.character(`trait_efos`) && length(`trait_efos`) == 1)) {
          stop(paste("Error! Invalid data for `trait_efos`. Must be a string:", `trait_efos`))
        }
        self$`trait_efos` <- `trait_efos`
      }
      if (!missing(`trait_category`)) {
        if (!(is.character(`trait_category`) && length(`trait_category`) == 1)) {
          stop(paste("Error! Invalid data for `trait_category`. Must be a string:", `trait_category`))
        }
        self$`trait_category` <- `trait_category`
      }
      if (!missing(`study_type`)) {
        if (!(is.character(`study_type`) && length(`study_type`) == 1)) {
          stop(paste("Error! Invalid data for `study_type`. Must be a string:", `study_type`))
        }
        self$`study_type` <- `study_type`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
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
    #' @return Study as a base R list.
    #' @examples
    #' # convert array of Study (x) to a data frame
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
    #' Convert Study to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StudyObject <- list()
      if (!is.null(self$`_id`)) {
        StudyObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`name`)) {
        StudyObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`ancestry_initial`)) {
        StudyObject[["ancestry_initial"]] <-
          self$`ancestry_initial`
      }
      if (!is.null(self$`ancestry_replication`)) {
        StudyObject[["ancestry_replication"]] <-
          self$`ancestry_replication`
      }
      if (!is.null(self$`n_cases`)) {
        StudyObject[["n_cases"]] <-
          self$`n_cases`
      }
      if (!is.null(self$`n_initial`)) {
        StudyObject[["n_initial"]] <-
          self$`n_initial`
      }
      if (!is.null(self$`n_replication`)) {
        StudyObject[["n_replication"]] <-
          self$`n_replication`
      }
      if (!is.null(self$`pmid`)) {
        StudyObject[["pmid"]] <-
          self$`pmid`
      }
      if (!is.null(self$`pub_author`)) {
        StudyObject[["pub_author"]] <-
          self$`pub_author`
      }
      if (!is.null(self$`pub_date`)) {
        StudyObject[["pub_date"]] <-
          self$`pub_date`
      }
      if (!is.null(self$`pub_journal`)) {
        StudyObject[["pub_journal"]] <-
          self$`pub_journal`
      }
      if (!is.null(self$`pub_title`)) {
        StudyObject[["pub_title"]] <-
          self$`pub_title`
      }
      if (!is.null(self$`has_sumstats`)) {
        StudyObject[["has_sumstats"]] <-
          self$`has_sumstats`
      }
      if (!is.null(self$`num_assoc_loci`)) {
        StudyObject[["num_assoc_loci"]] <-
          self$`num_assoc_loci`
      }
      if (!is.null(self$`study_source`)) {
        StudyObject[["study_source"]] <-
          self$`study_source`
      }
      if (!is.null(self$`trait_reported`)) {
        StudyObject[["trait_reported"]] <-
          self$`trait_reported`
      }
      if (!is.null(self$`trait_efos`)) {
        StudyObject[["trait_efos"]] <-
          self$`trait_efos`
      }
      if (!is.null(self$`trait_category`)) {
        StudyObject[["trait_category"]] <-
          self$`trait_category`
      }
      if (!is.null(self$`source`)) {
        StudyObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`study_type`)) {
        StudyObject[["study_type"]] <-
          self$`study_type`
      }
      if (!is.null(self$`version`)) {
        StudyObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`files_filesets`)) {
        StudyObject[["files_filesets"]] <-
          self$`files_filesets`
      }
      return(StudyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Study
    #'
    #' @param input_json the JSON input
    #' @return the instance of Study
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`ancestry_initial`)) {
        self$`ancestry_initial` <- this_object$`ancestry_initial`
      }
      if (!is.null(this_object$`ancestry_replication`)) {
        self$`ancestry_replication` <- this_object$`ancestry_replication`
      }
      if (!is.null(this_object$`n_cases`)) {
        self$`n_cases` <- this_object$`n_cases`
      }
      if (!is.null(this_object$`n_initial`)) {
        self$`n_initial` <- this_object$`n_initial`
      }
      if (!is.null(this_object$`n_replication`)) {
        self$`n_replication` <- this_object$`n_replication`
      }
      if (!is.null(this_object$`pmid`)) {
        self$`pmid` <- this_object$`pmid`
      }
      if (!is.null(this_object$`pub_author`)) {
        self$`pub_author` <- this_object$`pub_author`
      }
      if (!is.null(this_object$`pub_date`)) {
        self$`pub_date` <- this_object$`pub_date`
      }
      if (!is.null(this_object$`pub_journal`)) {
        self$`pub_journal` <- this_object$`pub_journal`
      }
      if (!is.null(this_object$`pub_title`)) {
        self$`pub_title` <- this_object$`pub_title`
      }
      if (!is.null(this_object$`has_sumstats`)) {
        self$`has_sumstats` <- this_object$`has_sumstats`
      }
      if (!is.null(this_object$`num_assoc_loci`)) {
        self$`num_assoc_loci` <- this_object$`num_assoc_loci`
      }
      if (!is.null(this_object$`study_source`)) {
        self$`study_source` <- this_object$`study_source`
      }
      if (!is.null(this_object$`trait_reported`)) {
        self$`trait_reported` <- this_object$`trait_reported`
      }
      if (!is.null(this_object$`trait_efos`)) {
        self$`trait_efos` <- this_object$`trait_efos`
      }
      if (!is.null(this_object$`trait_category`)) {
        self$`trait_category` <- this_object$`trait_category`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`study_type`)) {
        self$`study_type` <- this_object$`study_type`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
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
    #' @return Study in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Study
    #'
    #' @param input_json the JSON input
    #' @return the instance of Study
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`name` <- this_object$`name`
      self$`ancestry_initial` <- this_object$`ancestry_initial`
      self$`ancestry_replication` <- this_object$`ancestry_replication`
      self$`n_cases` <- this_object$`n_cases`
      self$`n_initial` <- this_object$`n_initial`
      self$`n_replication` <- this_object$`n_replication`
      self$`pmid` <- this_object$`pmid`
      self$`pub_author` <- this_object$`pub_author`
      self$`pub_date` <- this_object$`pub_date`
      self$`pub_journal` <- this_object$`pub_journal`
      self$`pub_title` <- this_object$`pub_title`
      self$`has_sumstats` <- this_object$`has_sumstats`
      self$`num_assoc_loci` <- this_object$`num_assoc_loci`
      self$`study_source` <- this_object$`study_source`
      self$`trait_reported` <- this_object$`trait_reported`
      self$`trait_efos` <- this_object$`trait_efos`
      self$`trait_category` <- this_object$`trait_category`
      self$`source` <- this_object$`source`
      self$`study_type` <- this_object$`study_type`
      self$`version` <- this_object$`version`
      self$`files_filesets` <- this_object$`files_filesets`
      self
    },

    #' @description
    #' Validate JSON input with respect to Study and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `name` is missing."))
      }
      # check the required field `ancestry_initial`
      if (!is.null(input_json$`ancestry_initial`)) {
        if (!(is.character(input_json$`ancestry_initial`) && length(input_json$`ancestry_initial`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry_initial`. Must be a string:", input_json$`ancestry_initial`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `ancestry_initial` is missing."))
      }
      # check the required field `ancestry_replication`
      if (!is.null(input_json$`ancestry_replication`)) {
        if (!(is.character(input_json$`ancestry_replication`) && length(input_json$`ancestry_replication`) == 1)) {
          stop(paste("Error! Invalid data for `ancestry_replication`. Must be a string:", input_json$`ancestry_replication`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `ancestry_replication` is missing."))
      }
      # check the required field `n_cases`
      if (!is.null(input_json$`n_cases`)) {
        if (!(is.character(input_json$`n_cases`) && length(input_json$`n_cases`) == 1)) {
          stop(paste("Error! Invalid data for `n_cases`. Must be a string:", input_json$`n_cases`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `n_cases` is missing."))
      }
      # check the required field `n_initial`
      if (!is.null(input_json$`n_initial`)) {
        if (!(is.character(input_json$`n_initial`) && length(input_json$`n_initial`) == 1)) {
          stop(paste("Error! Invalid data for `n_initial`. Must be a string:", input_json$`n_initial`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `n_initial` is missing."))
      }
      # check the required field `n_replication`
      if (!is.null(input_json$`n_replication`)) {
        if (!(is.character(input_json$`n_replication`) && length(input_json$`n_replication`) == 1)) {
          stop(paste("Error! Invalid data for `n_replication`. Must be a string:", input_json$`n_replication`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `n_replication` is missing."))
      }
      # check the required field `pmid`
      if (!is.null(input_json$`pmid`)) {
        if (!(is.character(input_json$`pmid`) && length(input_json$`pmid`) == 1)) {
          stop(paste("Error! Invalid data for `pmid`. Must be a string:", input_json$`pmid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `pmid` is missing."))
      }
      # check the required field `pub_author`
      if (!is.null(input_json$`pub_author`)) {
        if (!(is.character(input_json$`pub_author`) && length(input_json$`pub_author`) == 1)) {
          stop(paste("Error! Invalid data for `pub_author`. Must be a string:", input_json$`pub_author`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `pub_author` is missing."))
      }
      # check the required field `pub_date`
      if (!is.null(input_json$`pub_date`)) {
        if (!(is.character(input_json$`pub_date`) && length(input_json$`pub_date`) == 1)) {
          stop(paste("Error! Invalid data for `pub_date`. Must be a string:", input_json$`pub_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `pub_date` is missing."))
      }
      # check the required field `pub_journal`
      if (!is.null(input_json$`pub_journal`)) {
        if (!(is.character(input_json$`pub_journal`) && length(input_json$`pub_journal`) == 1)) {
          stop(paste("Error! Invalid data for `pub_journal`. Must be a string:", input_json$`pub_journal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `pub_journal` is missing."))
      }
      # check the required field `pub_title`
      if (!is.null(input_json$`pub_title`)) {
        if (!(is.character(input_json$`pub_title`) && length(input_json$`pub_title`) == 1)) {
          stop(paste("Error! Invalid data for `pub_title`. Must be a string:", input_json$`pub_title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `pub_title` is missing."))
      }
      # check the required field `has_sumstats`
      if (!is.null(input_json$`has_sumstats`)) {
        if (!(is.character(input_json$`has_sumstats`) && length(input_json$`has_sumstats`) == 1)) {
          stop(paste("Error! Invalid data for `has_sumstats`. Must be a string:", input_json$`has_sumstats`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `has_sumstats` is missing."))
      }
      # check the required field `num_assoc_loci`
      if (!is.null(input_json$`num_assoc_loci`)) {
        if (!(is.character(input_json$`num_assoc_loci`) && length(input_json$`num_assoc_loci`) == 1)) {
          stop(paste("Error! Invalid data for `num_assoc_loci`. Must be a string:", input_json$`num_assoc_loci`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `num_assoc_loci` is missing."))
      }
      # check the required field `study_source`
      if (!is.null(input_json$`study_source`)) {
        if (!(is.character(input_json$`study_source`) && length(input_json$`study_source`) == 1)) {
          stop(paste("Error! Invalid data for `study_source`. Must be a string:", input_json$`study_source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `study_source` is missing."))
      }
      # check the required field `trait_reported`
      if (!is.null(input_json$`trait_reported`)) {
        if (!(is.character(input_json$`trait_reported`) && length(input_json$`trait_reported`) == 1)) {
          stop(paste("Error! Invalid data for `trait_reported`. Must be a string:", input_json$`trait_reported`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `trait_reported` is missing."))
      }
      # check the required field `trait_efos`
      if (!is.null(input_json$`trait_efos`)) {
        if (!(is.character(input_json$`trait_efos`) && length(input_json$`trait_efos`) == 1)) {
          stop(paste("Error! Invalid data for `trait_efos`. Must be a string:", input_json$`trait_efos`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `trait_efos` is missing."))
      }
      # check the required field `trait_category`
      if (!is.null(input_json$`trait_category`)) {
        if (!(is.character(input_json$`trait_category`) && length(input_json$`trait_category`) == 1)) {
          stop(paste("Error! Invalid data for `trait_category`. Must be a string:", input_json$`trait_category`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `trait_category` is missing."))
      }
      # check the required field `study_type`
      if (!is.null(input_json$`study_type`)) {
        if (!(is.character(input_json$`study_type`) && length(input_json$`study_type`) == 1)) {
          stop(paste("Error! Invalid data for `study_type`. Must be a string:", input_json$`study_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `study_type` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Study: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Study
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
# Study$unlock()
#
## Below is an example to define the print function
# Study$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Study$lock()

