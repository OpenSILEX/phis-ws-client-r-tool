# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataQueryLog Class
#'
#' @field userUri 
#' @field query 
#' @field date 
#' @field remoteAdress 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataQueryLog <- R6::R6Class(
  'DataQueryLog',
  public = list(
    `userUri` = NULL,
    `query` = NULL,
    `date` = NULL,
    `remoteAdress` = NULL,
    initialize = function(`userUri`, `query`, `date`, `remoteAdress`){
      if (!missing(`userUri`)) {
        stopifnot(is.character(`userUri`), length(`userUri`) == 1)
        self$`userUri` <- `userUri`
      }
      if (!missing(`query`)) {
        stopifnot(R6::is.R6(`query`))
        self$`query` <- `query`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`remoteAdress`)) {
        stopifnot(is.character(`remoteAdress`), length(`remoteAdress`) == 1)
        self$`remoteAdress` <- `remoteAdress`
      }
    },
    toJSON = function() {
      DataQueryLogObject <- list()
      if (!is.null(self$`userUri`)) {
        DataQueryLogObject[['userUri']] <- self$`userUri`
      }
      if (!is.null(self$`query`)) {
        DataQueryLogObject[['query']] <- self$`query`$toJSON()
      }
      if (!is.null(self$`date`)) {
        DataQueryLogObject[['date']] <- self$`date`
      }
      if (!is.null(self$`remoteAdress`)) {
        DataQueryLogObject[['remoteAdress']] <- self$`remoteAdress`
      }

      DataQueryLogObject
    },
    fromJSON = function(DataQueryLogJson) {
      DataQueryLogObject <- jsonlite::fromJSON(DataQueryLogJson)
      if (!is.null(DataQueryLogObject$`userUri`)) {
        self$`userUri` <- DataQueryLogObject$`userUri`
      }
      if (!is.null(DataQueryLogObject$`query`)) {
        queryObject <- TODO_OBJECT_MAPPING$new()
        queryObject$fromJSON(jsonlite::toJSON(DataQueryLogObject$query, auto_unbox = TRUE, null = "null"))
        self$`query` <- queryObject
      }
      if (!is.null(DataQueryLogObject$`date`)) {
        self$`date` <- DataQueryLogObject$`date`
      }
      if (!is.null(DataQueryLogObject$`remoteAdress`)) {
        self$`remoteAdress` <- DataQueryLogObject$`remoteAdress`
      }
    },
    fromJSONObject = function(DataQueryLogObject) {
      if (!is.null(DataQueryLogObject$`userUri`)) {
        self$`userUri` <- DataQueryLogObject$`userUri`
      }
      if (!is.null(DataQueryLogObject$`query`)) {
        queryObject <- TODO_OBJECT_MAPPING$new()
        queryObject$fromJSON(jsonlite::toJSON(DataQueryLogObject$query, auto_unbox = TRUE, null = "null"))
        self$`query` <- queryObject
      }
      if (!is.null(DataQueryLogObject$`date`)) {
        self$`date` <- DataQueryLogObject$`date`
      }
      if (!is.null(DataQueryLogObject$`remoteAdress`)) {
        self$`remoteAdress` <- DataQueryLogObject$`remoteAdress`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "userUri": %s,
           "query": %s,
           "date": %s,
           "remoteAdress": %s
        }',
        jsonlite::toJSON(self$`userUri`,auto_unbox=TRUE, null = "null"),
        self$`query`$toJSON(),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`remoteAdress`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(DataQueryLogJson) {
      DataQueryLogObject <- jsonlite::fromJSON(DataQueryLogJson)
      self$`userUri` <- DataQueryLogObject$`userUri`
      TODO_OBJECT_MAPPINGObject <- TODO_OBJECT_MAPPING$new()
      self$`query` <- TODO_OBJECT_MAPPINGObject$fromJSON(jsonlite::toJSON(DataQueryLogObject$query, auto_unbox = TRUE))
      self$`date` <- DataQueryLogObject$`date`
      self$`remoteAdress` <- DataQueryLogObject$`remoteAdress`
    }
  )
)