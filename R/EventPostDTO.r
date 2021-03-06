# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EventPostDTO Class
#'
#' @field rdfType 
#' @field concernedItemsUris 
#' @field date 
#' @field properties 
#' @field description 
#' @field creator 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EventPostDTO <- R6::R6Class(
  'EventPostDTO',
  public = list(
    `rdfType` = NULL,
    `concernedItemsUris` = NULL,
    `date` = NULL,
    `properties` = NULL,
    `description` = NULL,
    `creator` = NULL,
    initialize = function(`rdfType`, `concernedItemsUris`, `date`, `properties`, `description`, `creator`){
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
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`creator`)) {
        stopifnot(is.character(`creator`), length(`creator`) == 1)
        self$`creator` <- `creator`
      }
    },
    toJSON = function() {
      EventPostDTOObject <- list()
      if (!is.null(self$`rdfType`)) {
        EventPostDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`concernedItemsUris`)) {
        EventPostDTOObject[['concernedItemsUris']] <- self$`concernedItemsUris`
      }
      if (!is.null(self$`date`)) {
        EventPostDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`properties`)) {
        EventPostDTOObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }
      if (!is.null(self$`description`)) {
        EventPostDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`creator`)) {
        EventPostDTOObject[['creator']] <- self$`creator`
      }

      EventPostDTOObject
    },
    fromJSON = function(EventPostDTOJson) {
      EventPostDTOObject <- jsonlite::fromJSON(EventPostDTOJson)
      if (!is.null(EventPostDTOObject$`rdfType`)) {
        self$`rdfType` <- EventPostDTOObject$`rdfType`
      }
      if (!is.null(EventPostDTOObject$`concernedItemsUris`)) {
        self$`concernedItemsUris` <- EventPostDTOObject$`concernedItemsUris`
      }
      if (!is.null(EventPostDTOObject$`date`)) {
        self$`date` <- EventPostDTOObject$`date`
      }
      if (!is.null(EventPostDTOObject$`properties`)) {
        self$`properties` <- lapply(EventPostDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
      if (!is.null(EventPostDTOObject$`description`)) {
        self$`description` <- EventPostDTOObject$`description`
      }
      if (!is.null(EventPostDTOObject$`creator`)) {
        self$`creator` <- EventPostDTOObject$`creator`
      }
    },
    fromJSONObject = function(EventPostDTOObject) {
      if (!is.null(EventPostDTOObject$`rdfType`)) {
        self$`rdfType` <- EventPostDTOObject$`rdfType`
      }
      if (!is.null(EventPostDTOObject$`concernedItemsUris`)) {
        self$`concernedItemsUris` <- EventPostDTOObject$`concernedItemsUris`
      }
      if (!is.null(EventPostDTOObject$`date`)) {
        self$`date` <- EventPostDTOObject$`date`
      }
      if (!is.null(EventPostDTOObject$`properties`)) {
        self$`properties` <- lapply(EventPostDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
      if (!is.null(EventPostDTOObject$`description`)) {
        self$`description` <- EventPostDTOObject$`description`
      }
      if (!is.null(EventPostDTOObject$`creator`)) {
        self$`creator` <- EventPostDTOObject$`creator`
      }
    },
    toJSONString = function() {
      propertiesList = paste(lapply(self$`properties`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "rdfType": %s,
           "concernedItemsUris": [%s],
           "date": %s,
           "properties": [%s],
           "description": %s,
           "creator": %s
        }',
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE, null = "null"),
        lapply(self$`concernedItemsUris`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null"),
        propertiesList,
        jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`creator`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(EventPostDTOJson) {
      EventPostDTOObject <- jsonlite::fromJSON(EventPostDTOJson)
      self$`rdfType` <- EventPostDTOObject$`rdfType`
      self$`concernedItemsUris` <- EventPostDTOObject$`concernedItemsUris`
      self$`date` <- EventPostDTOObject$`date`
      self$`properties` <- lapply(EventPostDTOObject$`properties`, function(x) PropertyDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`description` <- EventPostDTOObject$`description`
      self$`creator` <- EventPostDTOObject$`creator`
    }
  )
)
