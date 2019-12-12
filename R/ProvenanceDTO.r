# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProvenanceDTO Class
#'
#' @field uri 
#' @field label 
#' @field comment 
#' @field metadata 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProvenanceDTO <- R6::R6Class(
  'ProvenanceDTO',
  public = list(
    `uri` = NULL,
    `label` = NULL,
    `comment` = NULL,
    `metadata` = NULL,
    initialize = function(`uri`, `label`, `comment`, `metadata`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
      if (!missing(`comment`)) {
        stopifnot(is.character(`comment`), length(`comment`) == 1)
        self$`comment` <- `comment`
      }
      if (!missing(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
    },
    toJSON = function() {
      ProvenanceDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProvenanceDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        ProvenanceDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`comment`)) {
        ProvenanceDTOObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`metadata`)) {
        ProvenanceDTOObject[['metadata']] <- self$`metadata`$toJSON()
      }

      ProvenanceDTOObject
    },
    fromJSON = function(ProvenanceDTOJson) {
      ProvenanceDTOObject <- jsonlite::fromJSON(ProvenanceDTOJson)
      if (!is.null(ProvenanceDTOObject$`uri`)) {
        self$`uri` <- ProvenanceDTOObject$`uri`
      }
      if (!is.null(ProvenanceDTOObject$`label`)) {
        self$`label` <- ProvenanceDTOObject$`label`
      }
      if (!is.null(ProvenanceDTOObject$`comment`)) {
        self$`comment` <- ProvenanceDTOObject$`comment`
      }
      if (!is.null(ProvenanceDTOObject$`metadata`)) {
        metadataObject <- TODO_OBJECT_MAPPING$new()
        metadataObject$fromJSON(jsonlite::toJSON(ProvenanceDTOObject$metadata, auto_unbox = TRUE))
        self$`metadata` <- metadataObject
      }
    },
    fromJSONObject = function(ProvenanceDTOObject) {
      if (!is.null(ProvenanceDTOObject$`uri`)) {
        self$`uri` <- ProvenanceDTOObject$`uri`
      }
      if (!is.null(ProvenanceDTOObject$`label`)) {
        self$`label` <- ProvenanceDTOObject$`label`
      }
      if (!is.null(ProvenanceDTOObject$`comment`)) {
        self$`comment` <- ProvenanceDTOObject$`comment`
      }
      if (!is.null(ProvenanceDTOObject$`metadata`)) {
        metadataObject <- TODO_OBJECT_MAPPING$new()
        metadataObject$fromJSON(jsonlite::toJSON(ProvenanceDTOObject$metadata, auto_unbox = TRUE))
        self$`metadata` <- metadataObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "label": %s,
           "comment": %s,
           "metadata": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE),
        self$`metadata`$toJSON()
      )
    },
    fromJSONString = function(ProvenanceDTOJson) {
      ProvenanceDTOObject <- jsonlite::fromJSON(ProvenanceDTOJson)
      self$`uri` <- ProvenanceDTOObject$`uri`
      self$`label` <- ProvenanceDTOObject$`label`
      self$`comment` <- ProvenanceDTOObject$`comment`
      TODO_OBJECT_MAPPINGObject <- TODO_OBJECT_MAPPING$new()
      self$`metadata` <- TODO_OBJECT_MAPPINGObject$fromJSON(jsonlite::toJSON(ProvenanceDTOObject$metadata, auto_unbox = TRUE))
    }
  )
)
