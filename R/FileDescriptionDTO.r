# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FileDescriptionDTO Class
#'
#' @field uri 
#' @field rdfType 
#' @field date 
#' @field concernedItems 
#' @field provenanceUri 
#' @field metadata 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileDescriptionDTO <- R6::R6Class(
  'FileDescriptionDTO',
  public = list(
    `uri` = NULL,
    `rdfType` = NULL,
    `date` = NULL,
    `concernedItems` = NULL,
    `provenanceUri` = NULL,
    `metadata` = NULL,
    initialize = function(`uri`, `rdfType`, `date`, `concernedItems`, `provenanceUri`, `metadata`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`concernedItems`)) {
        stopifnot(is.list(`concernedItems`), length(`concernedItems`) != 0)
        lapply(`concernedItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`concernedItems` <- `concernedItems`
      }
      if (!missing(`provenanceUri`)) {
        stopifnot(is.character(`provenanceUri`), length(`provenanceUri`) == 1)
        self$`provenanceUri` <- `provenanceUri`
      }
      if (!missing(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
    },
    toJSON = function() {
      FileDescriptionDTOObject <- list()
      if (!is.null(self$`uri`)) {
        FileDescriptionDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        FileDescriptionDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`date`)) {
        FileDescriptionDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`concernedItems`)) {
        FileDescriptionDTOObject[['concernedItems']] <- lapply(self$`concernedItems`, function(x) x$toJSON())
      }
      if (!is.null(self$`provenanceUri`)) {
        FileDescriptionDTOObject[['provenanceUri']] <- self$`provenanceUri`
      }
      if (!is.null(self$`metadata`)) {
        FileDescriptionDTOObject[['metadata']] <- self$`metadata`$toJSON()
      }

      FileDescriptionDTOObject
    },
    fromJSON = function(FileDescriptionDTOJson) {
      FileDescriptionDTOObject <- jsonlite::fromJSON(FileDescriptionDTOJson)
      if (!is.null(FileDescriptionDTOObject$`uri`)) {
        self$`uri` <- FileDescriptionDTOObject$`uri`
      }
      if (!is.null(FileDescriptionDTOObject$`rdfType`)) {
        self$`rdfType` <- FileDescriptionDTOObject$`rdfType`
      }
      if (!is.null(FileDescriptionDTOObject$`date`)) {
        self$`date` <- FileDescriptionDTOObject$`date`
      }
      if (!is.null(FileDescriptionDTOObject$`concernedItems`)) {
        self$`concernedItems` <- lapply(FileDescriptionDTOObject$`concernedItems`, function(x) {
          concernedItemsObject <- ConcernedItemDTO$new()
          concernedItemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          concernedItemsObject
        })
      }
      if (!is.null(FileDescriptionDTOObject$`provenanceUri`)) {
        self$`provenanceUri` <- FileDescriptionDTOObject$`provenanceUri`
      }
      if (!is.null(FileDescriptionDTOObject$`metadata`)) {
        metadataObject <- TODO_OBJECT_MAPPING$new()
        metadataObject$fromJSON(jsonlite::toJSON(FileDescriptionDTOObject$metadata, auto_unbox = TRUE))
        self$`metadata` <- metadataObject
      }
    },
    fromJSONObject = function(FileDescriptionDTOObject) {
      if (!is.null(FileDescriptionDTOObject$`uri`)) {
        self$`uri` <- FileDescriptionDTOObject$`uri`
      }
      if (!is.null(FileDescriptionDTOObject$`rdfType`)) {
        self$`rdfType` <- FileDescriptionDTOObject$`rdfType`
      }
      if (!is.null(FileDescriptionDTOObject$`date`)) {
        self$`date` <- FileDescriptionDTOObject$`date`
      }
      if (!is.null(FileDescriptionDTOObject$`concernedItems`)) {
        self$`concernedItems` <- lapply(FileDescriptionDTOObject$`concernedItems`, function(x) {
          concernedItemsObject <- ConcernedItemDTO$new()
          concernedItemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          concernedItemsObject
        })
      }
      if (!is.null(FileDescriptionDTOObject$`provenanceUri`)) {
        self$`provenanceUri` <- FileDescriptionDTOObject$`provenanceUri`
      }
      if (!is.null(FileDescriptionDTOObject$`metadata`)) {
        metadataObject <- TODO_OBJECT_MAPPING$new()
        metadataObject$fromJSON(jsonlite::toJSON(FileDescriptionDTOObject$metadata, auto_unbox = TRUE))
        self$`metadata` <- metadataObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "rdfType": %s,
           "date": %s,
           "concernedItems": [%s],
           "provenanceUri": %s,
           "metadata": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE),
        lapply(self$`concernedItems`, function(x) paste(x$toJSON(), sep=",")),
        jsonlite::toJSON(self$`provenanceUri`,auto_unbox=TRUE),
        self$`metadata`$toJSON()
      )
    },
    fromJSONString = function(FileDescriptionDTOJson) {
      FileDescriptionDTOObject <- jsonlite::fromJSON(FileDescriptionDTOJson)
      self$`uri` <- FileDescriptionDTOObject$`uri`
      self$`rdfType` <- FileDescriptionDTOObject$`rdfType`
      self$`date` <- FileDescriptionDTOObject$`date`
      self$`concernedItems` <- lapply(FileDescriptionDTOObject$`concernedItems`, function(x) ConcernedItemDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`provenanceUri` <- FileDescriptionDTOObject$`provenanceUri`
      TODO_OBJECT_MAPPINGObject <- TODO_OBJECT_MAPPING$new()
      self$`metadata` <- TODO_OBJECT_MAPPINGObject$fromJSON(jsonlite::toJSON(FileDescriptionDTOObject$metadata, auto_unbox = TRUE))
    }
  )
)