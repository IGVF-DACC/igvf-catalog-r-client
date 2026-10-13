#' Create a new Summary
#'
#' @description
#' Summary Class
#'
#' @docType class
#' @title Summary
#' @description Summary Class
#' @format An \code{R6Class} generator object
#' @field rsid  list(character) [optional]
#' @field varinfo  character [optional]
#' @field spdi  character [optional]
#' @field hgvs  character [optional]
#' @field ca_id  character [optional]
#' @field ref  character [optional]
#' @field alt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Summary <- R6::R6Class(
  "Summary",
  public = list(
    `rsid` = NULL,
    `varinfo` = NULL,
    `spdi` = NULL,
    `hgvs` = NULL,
    `ca_id` = NULL,
    `ref` = NULL,
    `alt` = NULL,

    #' @description
    #' Initialize a new Summary class.
    #'
    #' @param rsid rsid
    #' @param varinfo varinfo
    #' @param spdi spdi
    #' @param hgvs hgvs
    #' @param ca_id ca_id
    #' @param ref ref
    #' @param alt alt
    #' @param ... Other optional arguments.
    initialize = function(`rsid` = NULL, `varinfo` = NULL, `spdi` = NULL, `hgvs` = NULL, `ca_id` = NULL, `ref` = NULL, `alt` = NULL, ...) {
      if (!is.null(`rsid`)) {
        stopifnot(is.vector(`rsid`), length(`rsid`) != 0)
        sapply(`rsid`, function(x) stopifnot(is.character(x)))
        self$`rsid` <- `rsid`
      }
      if (!is.null(`varinfo`)) {
        if (!(is.character(`varinfo`) && length(`varinfo`) == 1)) {
          stop(paste("Error! Invalid data for `varinfo`. Must be a string:", `varinfo`))
        }
        self$`varinfo` <- `varinfo`
      }
      if (!is.null(`spdi`)) {
        if (!(is.character(`spdi`) && length(`spdi`) == 1)) {
          stop(paste("Error! Invalid data for `spdi`. Must be a string:", `spdi`))
        }
        self$`spdi` <- `spdi`
      }
      if (!is.null(`hgvs`)) {
        if (!(is.character(`hgvs`) && length(`hgvs`) == 1)) {
          stop(paste("Error! Invalid data for `hgvs`. Must be a string:", `hgvs`))
        }
        self$`hgvs` <- `hgvs`
      }
      if (!is.null(`ca_id`)) {
        if (!(is.character(`ca_id`) && length(`ca_id`) == 1)) {
          stop(paste("Error! Invalid data for `ca_id`. Must be a string:", `ca_id`))
        }
        self$`ca_id` <- `ca_id`
      }
      if (!is.null(`ref`)) {
        if (!(is.character(`ref`) && length(`ref`) == 1)) {
          stop(paste("Error! Invalid data for `ref`. Must be a string:", `ref`))
        }
        self$`ref` <- `ref`
      }
      if (!is.null(`alt`)) {
        if (!(is.character(`alt`) && length(`alt`) == 1)) {
          stop(paste("Error! Invalid data for `alt`. Must be a string:", `alt`))
        }
        self$`alt` <- `alt`
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
    #' @return Summary as a base R list.
    #' @examples
    #' # convert array of Summary (x) to a data frame
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
    #' Convert Summary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SummaryObject <- list()
      if (!is.null(self$`rsid`)) {
        SummaryObject[["rsid"]] <-
          self$`rsid`
      }
      if (!is.null(self$`varinfo`)) {
        SummaryObject[["varinfo"]] <-
          self$`varinfo`
      }
      if (!is.null(self$`spdi`)) {
        SummaryObject[["spdi"]] <-
          self$`spdi`
      }
      if (!is.null(self$`hgvs`)) {
        SummaryObject[["hgvs"]] <-
          self$`hgvs`
      }
      if (!is.null(self$`ca_id`)) {
        SummaryObject[["ca_id"]] <-
          self$`ca_id`
      }
      if (!is.null(self$`ref`)) {
        SummaryObject[["ref"]] <-
          self$`ref`
      }
      if (!is.null(self$`alt`)) {
        SummaryObject[["alt"]] <-
          self$`alt`
      }
      return(SummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Summary
    #'
    #' @param input_json the JSON input
    #' @return the instance of Summary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rsid`)) {
        self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      }
      if (!is.null(this_object$`varinfo`)) {
        self$`varinfo` <- this_object$`varinfo`
      }
      if (!is.null(this_object$`spdi`)) {
        self$`spdi` <- this_object$`spdi`
      }
      if (!is.null(this_object$`hgvs`)) {
        self$`hgvs` <- this_object$`hgvs`
      }
      if (!is.null(this_object$`ca_id`)) {
        self$`ca_id` <- this_object$`ca_id`
      }
      if (!is.null(this_object$`ref`)) {
        self$`ref` <- this_object$`ref`
      }
      if (!is.null(this_object$`alt`)) {
        self$`alt` <- this_object$`alt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Summary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Summary
    #'
    #' @param input_json the JSON input
    #' @return the instance of Summary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rsid` <- ApiClient$new()$deserializeObj(this_object$`rsid`, "array[character]", loadNamespace("igvfcatalogclient"))
      self$`varinfo` <- this_object$`varinfo`
      self$`spdi` <- this_object$`spdi`
      self$`hgvs` <- this_object$`hgvs`
      self$`ca_id` <- this_object$`ca_id`
      self$`ref` <- this_object$`ref`
      self$`alt` <- this_object$`alt`
      self
    },

    #' @description
    #' Validate JSON input with respect to Summary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Summary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# Summary$unlock()
#
## Below is an example to define the print function
# Summary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Summary$lock()

