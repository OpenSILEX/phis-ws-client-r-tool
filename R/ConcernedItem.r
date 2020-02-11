# openSilexSandBoxAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ConcernedItem Class
#'
#' @field uri 
#' @field rdfType 
#' @field labels 
#' @field objectLinked 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConcernedItem <- R6::R6Class(
  'ConcernedItem',
  public = list(
    `uri` = NULL,
    `rdfType` = NULL,
    `labels` = NULL,
    `objectLinked` = NULL,
    initialize = function(`uri`, `rdfType`, `labels`, `objectLinked`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`labels`)) {
        stopifnot(is.list(`labels`), length(`labels`) != 0)
        lapply(`labels`, function(x) stopifnot(is.character(x)))
        self$`labels` <- `labels`
      }
      if (!missing(`objectLinked`)) {
        stopifnot(is.character(`objectLinked`), length(`objectLinked`) == 1)
        self$`objectLinked` <- `objectLinked`
      }
    },
    toJSON = function() {
      ConcernedItemObject <- list()
      if (!is.null(self$`uri`)) {
        ConcernedItemObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        ConcernedItemObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`labels`)) {
        ConcernedItemObject[['labels']] <- self$`labels`
      }
      if (!is.null(self$`objectLinked`)) {
        ConcernedItemObject[['objectLinked']] <- self$`objectLinked`
      }

      ConcernedItemObject
    },
    fromJSON = function(ConcernedItemJson) {
      ConcernedItemObject <- jsonlite::fromJSON(ConcernedItemJson)
      if (!is.null(ConcernedItemObject$`uri`)) {
        self$`uri` <- ConcernedItemObject$`uri`
      }
      if (!is.null(ConcernedItemObject$`rdfType`)) {
        self$`rdfType` <- ConcernedItemObject$`rdfType`
      }
      if (!is.null(ConcernedItemObject$`labels`)) {
        self$`labels` <- ConcernedItemObject$`labels`
      }
      if (!is.null(ConcernedItemObject$`objectLinked`)) {
        self$`objectLinked` <- ConcernedItemObject$`objectLinked`
      }
    },
    fromJSONObject = function(ConcernedItemObject) {
      if (!is.null(ConcernedItemObject$`uri`)) {
        self$`uri` <- ConcernedItemObject$`uri`
      }
      if (!is.null(ConcernedItemObject$`rdfType`)) {
        self$`rdfType` <- ConcernedItemObject$`rdfType`
      }
      if (!is.null(ConcernedItemObject$`labels`)) {
        self$`labels` <- ConcernedItemObject$`labels`
      }
      if (!is.null(ConcernedItemObject$`objectLinked`)) {
        self$`objectLinked` <- ConcernedItemObject$`objectLinked`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "rdfType": %s,
           "labels": [%s],
           "objectLinked": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE, null = "null"),
        lapply(self$`labels`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`objectLinked`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ConcernedItemJson) {
      ConcernedItemObject <- jsonlite::fromJSON(ConcernedItemJson)
      self$`uri` <- ConcernedItemObject$`uri`
      self$`rdfType` <- ConcernedItemObject$`rdfType`
      self$`labels` <- ConcernedItemObject$`labels`
      self$`objectLinked` <- ConcernedItemObject$`objectLinked`
    }
  )
)
