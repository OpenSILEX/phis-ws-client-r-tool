# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EventGetDTO Class
#'
#' @field uri 
#' @field rdfType 
#' @field concernedItems 
#' @field date 
#' @field properties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EventGetDTO <- R6::R6Class(
  'EventGetDTO',
  public = list(
    `uri` = NULL,
    `rdfType` = NULL,
    `concernedItems` = NULL,
    `date` = NULL,
    `properties` = NULL,
    initialize = function(`uri`, `rdfType`, `concernedItems`, `date`, `properties`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`concernedItems`)) {
        stopifnot(is.list(`concernedItems`), length(`concernedItems`) != 0)
        lapply(`concernedItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`concernedItems` <- `concernedItems`
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
    },
    toJSON = function() {
      EventGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        EventGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        EventGetDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`concernedItems`)) {
        EventGetDTOObject[['concernedItems']] <- lapply(self$`concernedItems`, function(x) x$toJSON())
      }
      if (!is.null(self$`date`)) {
        EventGetDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`properties`)) {
        EventGetDTOObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }

      EventGetDTOObject
    },
    fromJSON = function(EventGetDTOJson) {
      EventGetDTOObject <- jsonlite::fromJSON(EventGetDTOJson)
      if (!is.null(EventGetDTOObject$`uri`)) {
        self$`uri` <- EventGetDTOObject$`uri`
      }
      if (!is.null(EventGetDTOObject$`rdfType`)) {
        self$`rdfType` <- EventGetDTOObject$`rdfType`
      }
      if (!is.null(EventGetDTOObject$`concernedItems`)) {
        self$`concernedItems` <- lapply(EventGetDTOObject$`concernedItems`, function(x) {
          concernedItemsObject <- ConcernedItemWithLabelsDTO$new()
          concernedItemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          concernedItemsObject
        })
      }
      if (!is.null(EventGetDTOObject$`date`)) {
        self$`date` <- EventGetDTOObject$`date`
      }
      if (!is.null(EventGetDTOObject$`properties`)) {
        self$`properties` <- lapply(EventGetDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
    },
    fromJSONObject = function(EventGetDTOObject) {
      if (!is.null(EventGetDTOObject$`uri`)) {
        self$`uri` <- EventGetDTOObject$`uri`
      }
      if (!is.null(EventGetDTOObject$`rdfType`)) {
        self$`rdfType` <- EventGetDTOObject$`rdfType`
      }
      if (!is.null(EventGetDTOObject$`concernedItems`)) {
        self$`concernedItems` <- lapply(EventGetDTOObject$`concernedItems`, function(x) {
          concernedItemsObject <- ConcernedItemWithLabelsDTO$new()
          concernedItemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          concernedItemsObject
        })
      }
      if (!is.null(EventGetDTOObject$`date`)) {
        self$`date` <- EventGetDTOObject$`date`
      }
      if (!is.null(EventGetDTOObject$`properties`)) {
        self$`properties` <- lapply(EventGetDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
    },
    toJSONString = function() {
      concernedItemsList = paste(lapply(self$`concernedItems`, function(x) x$toJSONString()),collapse = ",")
      propertiesList = paste(lapply(self$`properties`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdfType": %s,
           "concernedItems": [%s],
           "date": %s,
           "properties": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE, null = "null"),
        concernedItemsList,
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null"),
        propertiesList
      )
    },
    fromJSONString = function(EventGetDTOJson) {
      EventGetDTOObject <- jsonlite::fromJSON(EventGetDTOJson)
      self$`uri` <- EventGetDTOObject$`uri`
      self$`rdfType` <- EventGetDTOObject$`rdfType`
      self$`concernedItems` <- lapply(EventGetDTOObject$`concernedItems`, function(x) ConcernedItemWithLabelsDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`date` <- EventGetDTOObject$`date`
      self$`properties` <- lapply(EventGetDTOObject$`properties`, function(x) PropertyDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
