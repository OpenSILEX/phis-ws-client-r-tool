# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AgronomicalDataDTO Class
#'
#' @field agronomicalObject 
#' @field date 
#' @field value 
#' @field sensor 
#' @field incertitude 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgronomicalDataDTO <- R6::R6Class(
  'AgronomicalDataDTO',
  public = list(
    `agronomicalObject` = NULL,
    `date` = NULL,
    `value` = NULL,
    `sensor` = NULL,
    `incertitude` = NULL,
    initialize = function(`agronomicalObject`, `date`, `value`, `sensor`, `incertitude`){
      if (!missing(`agronomicalObject`)) {
        stopifnot(is.character(`agronomicalObject`), length(`agronomicalObject`) == 1)
        self$`agronomicalObject` <- `agronomicalObject`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
      if (!missing(`sensor`)) {
        stopifnot(is.character(`sensor`), length(`sensor`) == 1)
        self$`sensor` <- `sensor`
      }
      if (!missing(`incertitude`)) {
        stopifnot(is.character(`incertitude`), length(`incertitude`) == 1)
        self$`incertitude` <- `incertitude`
      }
    },
    toJSON = function() {
      AgronomicalDataDTOObject <- list()
      if (!is.null(self$`agronomicalObject`)) {
        AgronomicalDataDTOObject[['agronomicalObject']] <- self$`agronomicalObject`
      }
      if (!is.null(self$`date`)) {
        AgronomicalDataDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`value`)) {
        AgronomicalDataDTOObject[['value']] <- self$`value`
      }
      if (!is.null(self$`sensor`)) {
        AgronomicalDataDTOObject[['sensor']] <- self$`sensor`
      }
      if (!is.null(self$`incertitude`)) {
        AgronomicalDataDTOObject[['incertitude']] <- self$`incertitude`
      }

      AgronomicalDataDTOObject
    },
    fromJSON = function(AgronomicalDataDTOJson) {
      AgronomicalDataDTOObject <- jsonlite::fromJSON(AgronomicalDataDTOJson)
      if (!is.null(AgronomicalDataDTOObject$`agronomicalObject`)) {
        self$`agronomicalObject` <- AgronomicalDataDTOObject$`agronomicalObject`
      }
      if (!is.null(AgronomicalDataDTOObject$`date`)) {
        self$`date` <- AgronomicalDataDTOObject$`date`
      }
      if (!is.null(AgronomicalDataDTOObject$`value`)) {
        self$`value` <- AgronomicalDataDTOObject$`value`
      }
      if (!is.null(AgronomicalDataDTOObject$`sensor`)) {
        self$`sensor` <- AgronomicalDataDTOObject$`sensor`
      }
      if (!is.null(AgronomicalDataDTOObject$`incertitude`)) {
        self$`incertitude` <- AgronomicalDataDTOObject$`incertitude`
      }
    },
    fromJSONObject = function(AgronomicalDataDTOObject) {
      if (!is.null(AgronomicalDataDTOObject$`agronomicalObject`)) {
        self$`agronomicalObject` <- AgronomicalDataDTOObject$`agronomicalObject`
      }
      if (!is.null(AgronomicalDataDTOObject$`date`)) {
        self$`date` <- AgronomicalDataDTOObject$`date`
      }
      if (!is.null(AgronomicalDataDTOObject$`value`)) {
        self$`value` <- AgronomicalDataDTOObject$`value`
      }
      if (!is.null(AgronomicalDataDTOObject$`sensor`)) {
        self$`sensor` <- AgronomicalDataDTOObject$`sensor`
      }
      if (!is.null(AgronomicalDataDTOObject$`incertitude`)) {
        self$`incertitude` <- AgronomicalDataDTOObject$`incertitude`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "agronomicalObject": %s,
           "date": %s,
           "value": %s,
           "sensor": %s,
           "incertitude": %s
        }',
        jsonlite::toJSON(self$`agronomicalObject`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`value`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`sensor`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`incertitude`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(AgronomicalDataDTOJson) {
      AgronomicalDataDTOObject <- jsonlite::fromJSON(AgronomicalDataDTOJson)
      self$`agronomicalObject` <- AgronomicalDataDTOObject$`agronomicalObject`
      self$`date` <- AgronomicalDataDTOObject$`date`
      self$`value` <- AgronomicalDataDTOObject$`value`
      self$`sensor` <- AgronomicalDataDTOObject$`sensor`
      self$`incertitude` <- AgronomicalDataDTOObject$`incertitude`
    }
  )
)
