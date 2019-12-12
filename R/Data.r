# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data Class
#'
#' @field uri 
#' @field provenanceUri 
#' @field objectUri 
#' @field variableUri 
#' @field date 
#' @field value 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data <- R6::R6Class(
  'Data',
  public = list(
    `uri` = NULL,
    `provenanceUri` = NULL,
    `objectUri` = NULL,
    `variableUri` = NULL,
    `date` = NULL,
    `value` = NULL,
    initialize = function(`uri`, `provenanceUri`, `objectUri`, `variableUri`, `date`, `value`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`provenanceUri`)) {
        stopifnot(is.character(`provenanceUri`), length(`provenanceUri`) == 1)
        self$`provenanceUri` <- `provenanceUri`
      }
      if (!missing(`objectUri`)) {
        stopifnot(is.character(`objectUri`), length(`objectUri`) == 1)
        self$`objectUri` <- `objectUri`
      }
      if (!missing(`variableUri`)) {
        stopifnot(is.character(`variableUri`), length(`variableUri`) == 1)
        self$`variableUri` <- `variableUri`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`value`)) {
        stopifnot(R6::is.R6(`value`))
        self$`value` <- `value`
      }
    },
    toJSON = function() {
      DataObject <- list()
      if (!is.null(self$`uri`)) {
        DataObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`provenanceUri`)) {
        DataObject[['provenanceUri']] <- self$`provenanceUri`
      }
      if (!is.null(self$`objectUri`)) {
        DataObject[['objectUri']] <- self$`objectUri`
      }
      if (!is.null(self$`variableUri`)) {
        DataObject[['variableUri']] <- self$`variableUri`
      }
      if (!is.null(self$`date`)) {
        DataObject[['date']] <- self$`date`
      }
      if (!is.null(self$`value`)) {
        DataObject[['value']] <- self$`value`$toJSON()
      }

      DataObject
    },
    fromJSON = function(DataJson) {
      DataObject <- jsonlite::fromJSON(DataJson)
      if (!is.null(DataObject$`uri`)) {
        self$`uri` <- DataObject$`uri`
      }
      if (!is.null(DataObject$`provenanceUri`)) {
        self$`provenanceUri` <- DataObject$`provenanceUri`
      }
      if (!is.null(DataObject$`objectUri`)) {
        self$`objectUri` <- DataObject$`objectUri`
      }
      if (!is.null(DataObject$`variableUri`)) {
        self$`variableUri` <- DataObject$`variableUri`
      }
      if (!is.null(DataObject$`date`)) {
        self$`date` <- DataObject$`date`
      }
      if (!is.null(DataObject$`value`)) {
        valueObject <- TODO_OBJECT_MAPPING$new()
        valueObject$fromJSON(jsonlite::toJSON(DataObject$value, auto_unbox = TRUE))
        self$`value` <- valueObject
      }
    },
    fromJSONObject = function(DataObject) {
      if (!is.null(DataObject$`uri`)) {
        self$`uri` <- DataObject$`uri`
      }
      if (!is.null(DataObject$`provenanceUri`)) {
        self$`provenanceUri` <- DataObject$`provenanceUri`
      }
      if (!is.null(DataObject$`objectUri`)) {
        self$`objectUri` <- DataObject$`objectUri`
      }
      if (!is.null(DataObject$`variableUri`)) {
        self$`variableUri` <- DataObject$`variableUri`
      }
      if (!is.null(DataObject$`date`)) {
        self$`date` <- DataObject$`date`
      }
      if (!is.null(DataObject$`value`)) {
        valueObject <- TODO_OBJECT_MAPPING$new()
        valueObject$fromJSON(jsonlite::toJSON(DataObject$value, auto_unbox = TRUE))
        self$`value` <- valueObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "provenanceUri": %s,
           "objectUri": %s,
           "variableUri": %s,
           "date": %s,
           "value": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`provenanceUri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`objectUri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`variableUri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE),
        self$`value`$toJSON()
      )
    },
    fromJSONString = function(DataJson) {
      DataObject <- jsonlite::fromJSON(DataJson)
      self$`uri` <- DataObject$`uri`
      self$`provenanceUri` <- DataObject$`provenanceUri`
      self$`objectUri` <- DataObject$`objectUri`
      self$`variableUri` <- DataObject$`variableUri`
      self$`date` <- DataObject$`date`
      TODO_OBJECT_MAPPINGObject <- TODO_OBJECT_MAPPING$new()
      self$`value` <- TODO_OBJECT_MAPPINGObject$fromJSON(jsonlite::toJSON(DataObject$value, auto_unbox = TRUE))
    }
  )
)