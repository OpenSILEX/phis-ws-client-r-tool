# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AgronomicalData Class
#'
#' @field agronomicalObject 
#' @field date 
#' @field value 
#' @field variable 
#' @field sensor 
#' @field incertitude 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgronomicalData <- R6::R6Class(
  'AgronomicalData',
  public = list(
    `agronomicalObject` = NULL,
    `date` = NULL,
    `value` = NULL,
    `variable` = NULL,
    `sensor` = NULL,
    `incertitude` = NULL,
    initialize = function(`agronomicalObject`, `date`, `value`, `variable`, `sensor`, `incertitude`){
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
      if (!missing(`variable`)) {
        stopifnot(is.character(`variable`), length(`variable`) == 1)
        self$`variable` <- `variable`
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
      AgronomicalDataObject <- list()
      if (!is.null(self$`agronomicalObject`)) {
        AgronomicalDataObject[['agronomicalObject']] <- self$`agronomicalObject`
      }
      if (!is.null(self$`date`)) {
        AgronomicalDataObject[['date']] <- self$`date`
      }
      if (!is.null(self$`value`)) {
        AgronomicalDataObject[['value']] <- self$`value`
      }
      if (!is.null(self$`variable`)) {
        AgronomicalDataObject[['variable']] <- self$`variable`
      }
      if (!is.null(self$`sensor`)) {
        AgronomicalDataObject[['sensor']] <- self$`sensor`
      }
      if (!is.null(self$`incertitude`)) {
        AgronomicalDataObject[['incertitude']] <- self$`incertitude`
      }

      AgronomicalDataObject
    },
    fromJSON = function(AgronomicalDataJson) {
      AgronomicalDataObject <- jsonlite::fromJSON(AgronomicalDataJson)
      if (!is.null(AgronomicalDataObject$`agronomicalObject`)) {
        self$`agronomicalObject` <- AgronomicalDataObject$`agronomicalObject`
      }
      if (!is.null(AgronomicalDataObject$`date`)) {
        self$`date` <- AgronomicalDataObject$`date`
      }
      if (!is.null(AgronomicalDataObject$`value`)) {
        self$`value` <- AgronomicalDataObject$`value`
      }
      if (!is.null(AgronomicalDataObject$`variable`)) {
        self$`variable` <- AgronomicalDataObject$`variable`
      }
      if (!is.null(AgronomicalDataObject$`sensor`)) {
        self$`sensor` <- AgronomicalDataObject$`sensor`
      }
      if (!is.null(AgronomicalDataObject$`incertitude`)) {
        self$`incertitude` <- AgronomicalDataObject$`incertitude`
      }
    },
    fromJSONObject = function(AgronomicalDataObject) {
      if (!is.null(AgronomicalDataObject$`agronomicalObject`)) {
        self$`agronomicalObject` <- AgronomicalDataObject$`agronomicalObject`
      }
      if (!is.null(AgronomicalDataObject$`date`)) {
        self$`date` <- AgronomicalDataObject$`date`
      }
      if (!is.null(AgronomicalDataObject$`value`)) {
        self$`value` <- AgronomicalDataObject$`value`
      }
      if (!is.null(AgronomicalDataObject$`variable`)) {
        self$`variable` <- AgronomicalDataObject$`variable`
      }
      if (!is.null(AgronomicalDataObject$`sensor`)) {
        self$`sensor` <- AgronomicalDataObject$`sensor`
      }
      if (!is.null(AgronomicalDataObject$`incertitude`)) {
        self$`incertitude` <- AgronomicalDataObject$`incertitude`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "agronomicalObject": %s,
           "date": %s,
           "value": %s,
           "variable": %s,
           "sensor": %s,
           "incertitude": %s
        }',
        jsonlite::toJSON(self$`agronomicalObject`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`value`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`variable`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`sensor`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`incertitude`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(AgronomicalDataJson) {
      AgronomicalDataObject <- jsonlite::fromJSON(AgronomicalDataJson)
      self$`agronomicalObject` <- AgronomicalDataObject$`agronomicalObject`
      self$`date` <- AgronomicalDataObject$`date`
      self$`value` <- AgronomicalDataObject$`value`
      self$`variable` <- AgronomicalDataObject$`variable`
      self$`sensor` <- AgronomicalDataObject$`sensor`
      self$`incertitude` <- AgronomicalDataObject$`incertitude`
    }
  )
)
