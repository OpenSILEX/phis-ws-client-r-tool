# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SensorDTO Class
#'
#' @field uri 
#' @field rdfType 
#' @field label 
#' @field brand 
#' @field model 
#' @field serialNumber 
#' @field inServiceDate 
#' @field dateOfPurchase 
#' @field dateOfLastCalibration 
#' @field personInCharge 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SensorDTO <- R6::R6Class(
  'SensorDTO',
  public = list(
    `uri` = NULL,
    `rdfType` = NULL,
    `label` = NULL,
    `brand` = NULL,
    `model` = NULL,
    `serialNumber` = NULL,
    `inServiceDate` = NULL,
    `dateOfPurchase` = NULL,
    `dateOfLastCalibration` = NULL,
    `personInCharge` = NULL,
    initialize = function(`uri`, `rdfType`, `label`, `brand`, `model`, `serialNumber`, `inServiceDate`, `dateOfPurchase`, `dateOfLastCalibration`, `personInCharge`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
      if (!missing(`brand`)) {
        stopifnot(is.character(`brand`), length(`brand`) == 1)
        self$`brand` <- `brand`
      }
      if (!missing(`model`)) {
        stopifnot(is.character(`model`), length(`model`) == 1)
        self$`model` <- `model`
      }
      if (!missing(`serialNumber`)) {
        stopifnot(is.character(`serialNumber`), length(`serialNumber`) == 1)
        self$`serialNumber` <- `serialNumber`
      }
      if (!missing(`inServiceDate`)) {
        stopifnot(is.character(`inServiceDate`), length(`inServiceDate`) == 1)
        self$`inServiceDate` <- `inServiceDate`
      }
      if (!missing(`dateOfPurchase`)) {
        stopifnot(is.character(`dateOfPurchase`), length(`dateOfPurchase`) == 1)
        self$`dateOfPurchase` <- `dateOfPurchase`
      }
      if (!missing(`dateOfLastCalibration`)) {
        stopifnot(is.character(`dateOfLastCalibration`), length(`dateOfLastCalibration`) == 1)
        self$`dateOfLastCalibration` <- `dateOfLastCalibration`
      }
      if (!missing(`personInCharge`)) {
        stopifnot(is.character(`personInCharge`), length(`personInCharge`) == 1)
        self$`personInCharge` <- `personInCharge`
      }
    },
    toJSON = function() {
      SensorDTOObject <- list()
      if (!is.null(self$`uri`)) {
        SensorDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        SensorDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`label`)) {
        SensorDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`brand`)) {
        SensorDTOObject[['brand']] <- self$`brand`
      }
      if (!is.null(self$`model`)) {
        SensorDTOObject[['model']] <- self$`model`
      }
      if (!is.null(self$`serialNumber`)) {
        SensorDTOObject[['serialNumber']] <- self$`serialNumber`
      }
      if (!is.null(self$`inServiceDate`)) {
        SensorDTOObject[['inServiceDate']] <- self$`inServiceDate`
      }
      if (!is.null(self$`dateOfPurchase`)) {
        SensorDTOObject[['dateOfPurchase']] <- self$`dateOfPurchase`
      }
      if (!is.null(self$`dateOfLastCalibration`)) {
        SensorDTOObject[['dateOfLastCalibration']] <- self$`dateOfLastCalibration`
      }
      if (!is.null(self$`personInCharge`)) {
        SensorDTOObject[['personInCharge']] <- self$`personInCharge`
      }

      SensorDTOObject
    },
    fromJSON = function(SensorDTOJson) {
      SensorDTOObject <- jsonlite::fromJSON(SensorDTOJson)
      if (!is.null(SensorDTOObject$`uri`)) {
        self$`uri` <- SensorDTOObject$`uri`
      }
      if (!is.null(SensorDTOObject$`rdfType`)) {
        self$`rdfType` <- SensorDTOObject$`rdfType`
      }
      if (!is.null(SensorDTOObject$`label`)) {
        self$`label` <- SensorDTOObject$`label`
      }
      if (!is.null(SensorDTOObject$`brand`)) {
        self$`brand` <- SensorDTOObject$`brand`
      }
      if (!is.null(SensorDTOObject$`model`)) {
        self$`model` <- SensorDTOObject$`model`
      }
      if (!is.null(SensorDTOObject$`serialNumber`)) {
        self$`serialNumber` <- SensorDTOObject$`serialNumber`
      }
      if (!is.null(SensorDTOObject$`inServiceDate`)) {
        self$`inServiceDate` <- SensorDTOObject$`inServiceDate`
      }
      if (!is.null(SensorDTOObject$`dateOfPurchase`)) {
        self$`dateOfPurchase` <- SensorDTOObject$`dateOfPurchase`
      }
      if (!is.null(SensorDTOObject$`dateOfLastCalibration`)) {
        self$`dateOfLastCalibration` <- SensorDTOObject$`dateOfLastCalibration`
      }
      if (!is.null(SensorDTOObject$`personInCharge`)) {
        self$`personInCharge` <- SensorDTOObject$`personInCharge`
      }
    },
    fromJSONObject = function(SensorDTOObject) {
      if (!is.null(SensorDTOObject$`uri`)) {
        self$`uri` <- SensorDTOObject$`uri`
      }
      if (!is.null(SensorDTOObject$`rdfType`)) {
        self$`rdfType` <- SensorDTOObject$`rdfType`
      }
      if (!is.null(SensorDTOObject$`label`)) {
        self$`label` <- SensorDTOObject$`label`
      }
      if (!is.null(SensorDTOObject$`brand`)) {
        self$`brand` <- SensorDTOObject$`brand`
      }
      if (!is.null(SensorDTOObject$`model`)) {
        self$`model` <- SensorDTOObject$`model`
      }
      if (!is.null(SensorDTOObject$`serialNumber`)) {
        self$`serialNumber` <- SensorDTOObject$`serialNumber`
      }
      if (!is.null(SensorDTOObject$`inServiceDate`)) {
        self$`inServiceDate` <- SensorDTOObject$`inServiceDate`
      }
      if (!is.null(SensorDTOObject$`dateOfPurchase`)) {
        self$`dateOfPurchase` <- SensorDTOObject$`dateOfPurchase`
      }
      if (!is.null(SensorDTOObject$`dateOfLastCalibration`)) {
        self$`dateOfLastCalibration` <- SensorDTOObject$`dateOfLastCalibration`
      }
      if (!is.null(SensorDTOObject$`personInCharge`)) {
        self$`personInCharge` <- SensorDTOObject$`personInCharge`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "rdfType": %s,
           "label": %s,
           "brand": %s,
           "model": %s,
           "serialNumber": %s,
           "inServiceDate": %s,
           "dateOfPurchase": %s,
           "dateOfLastCalibration": %s,
           "personInCharge": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`brand`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`model`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`serialNumber`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`inServiceDate`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`dateOfPurchase`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`dateOfLastCalibration`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`personInCharge`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(SensorDTOJson) {
      SensorDTOObject <- jsonlite::fromJSON(SensorDTOJson)
      self$`uri` <- SensorDTOObject$`uri`
      self$`rdfType` <- SensorDTOObject$`rdfType`
      self$`label` <- SensorDTOObject$`label`
      self$`brand` <- SensorDTOObject$`brand`
      self$`model` <- SensorDTOObject$`model`
      self$`serialNumber` <- SensorDTOObject$`serialNumber`
      self$`inServiceDate` <- SensorDTOObject$`inServiceDate`
      self$`dateOfPurchase` <- SensorDTOObject$`dateOfPurchase`
      self$`dateOfLastCalibration` <- SensorDTOObject$`dateOfLastCalibration`
      self$`personInCharge` <- SensorDTOObject$`personInCharge`
    }
  )
)
