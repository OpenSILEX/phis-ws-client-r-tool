# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EventPutDTO Class
#'
#' @field rdfType 
#' @field concernedItemsUris 
#' @field date 
#' @field properties 
#' @field uri 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EventPutDTO <- R6::R6Class(
  'EventPutDTO',
  public = list(
    `rdfType` = NULL,
    `concernedItemsUris` = NULL,
    `date` = NULL,
    `properties` = NULL,
    `uri` = NULL,
    initialize = function(`rdfType`, `concernedItemsUris`, `date`, `properties`, `uri`){
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`concernedItemsUris`)) {
        stopifnot(is.list(`concernedItemsUris`), length(`concernedItemsUris`) != 0)
        lapply(`concernedItemsUris`, function(x) stopifnot(is.character(x)))
        self$`concernedItemsUris` <- `concernedItemsUris`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`properties`)) {
        stopifnot(is.list(`properties`), length(`properties`) != 0)
        lapply(`properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`properties` <- `properties`
      }
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
    },
    toJSON = function() {
      EventPutDTOObject <- list()
      if (!is.null(self$`rdfType`)) {
        EventPutDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`concernedItemsUris`)) {
        EventPutDTOObject[['concernedItemsUris']] <- self$`concernedItemsUris`
      }
      if (!is.null(self$`date`)) {
        EventPutDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`properties`)) {
        EventPutDTOObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }
      if (!is.null(self$`uri`)) {
        EventPutDTOObject[['uri']] <- self$`uri`
      }

      EventPutDTOObject
    },
    fromJSON = function(EventPutDTOJson) {
      EventPutDTOObject <- jsonlite::fromJSON(EventPutDTOJson)
      if (!is.null(EventPutDTOObject$`rdfType`)) {
        self$`rdfType` <- EventPutDTOObject$`rdfType`
      }
      if (!is.null(EventPutDTOObject$`concernedItemsUris`)) {
        self$`concernedItemsUris` <- EventPutDTOObject$`concernedItemsUris`
      }
      if (!is.null(EventPutDTOObject$`date`)) {
        self$`date` <- EventPutDTOObject$`date`
      }
      if (!is.null(EventPutDTOObject$`properties`)) {
        self$`properties` <- lapply(EventPutDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          propertiesObject
        })
      }
      if (!is.null(EventPutDTOObject$`uri`)) {
        self$`uri` <- EventPutDTOObject$`uri`
      }
    },
    fromJSONObject = function(EventPutDTOObject) {
      if (!is.null(EventPutDTOObject$`rdfType`)) {
        self$`rdfType` <- EventPutDTOObject$`rdfType`
      }
      if (!is.null(EventPutDTOObject$`concernedItemsUris`)) {
        self$`concernedItemsUris` <- EventPutDTOObject$`concernedItemsUris`
      }
      if (!is.null(EventPutDTOObject$`date`)) {
        self$`date` <- EventPutDTOObject$`date`
      }
      if (!is.null(EventPutDTOObject$`properties`)) {
        self$`properties` <- lapply(EventPutDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          propertiesObject
        })
      }
      if (!is.null(EventPutDTOObject$`uri`)) {
        self$`uri` <- EventPutDTOObject$`uri`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "rdfType": %s,
           "concernedItemsUris": [%s],
           "date": %s,
           "properties": [%s],
           "uri": %s
        }',
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE),
        lapply(self$`concernedItemsUris`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE),
        lapply(self$`properties`, function(x) paste(x$toJSON(), sep=",")),
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(EventPutDTOJson) {
      EventPutDTOObject <- jsonlite::fromJSON(EventPutDTOJson)
      self$`rdfType` <- EventPutDTOObject$`rdfType`
      self$`concernedItemsUris` <- EventPutDTOObject$`concernedItemsUris`
      self$`date` <- EventPutDTOObject$`date`
      self$`properties` <- lapply(EventPutDTOObject$`properties`, function(x) PropertyDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`uri` <- EventPutDTOObject$`uri`
    }
  )
)