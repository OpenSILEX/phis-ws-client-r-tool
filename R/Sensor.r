# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Sensor Class
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
#' @field variables 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Sensor <- R6::R6Class(
  'Sensor',
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
    `variables` = NULL,
    initialize = function(`uri`, `rdfType`, `label`, `brand`, `model`, `serialNumber`, `inServiceDate`, `dateOfPurchase`, `dateOfLastCalibration`, `personInCharge`, `variables`){
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
      if (!missing(`variables`)) {
        self$`variables` <- `variables`
      }
    },
    toJSON = function() {
      SensorObject <- list()
      if (!is.null(self$`uri`)) {
        SensorObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        SensorObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`label`)) {
        SensorObject[['label']] <- self$`label`
      }
      if (!is.null(self$`brand`)) {
        SensorObject[['brand']] <- self$`brand`
      }
      if (!is.null(self$`model`)) {
        SensorObject[['model']] <- self$`model`
      }
      if (!is.null(self$`serialNumber`)) {
        SensorObject[['serialNumber']] <- self$`serialNumber`
      }
      if (!is.null(self$`inServiceDate`)) {
        SensorObject[['inServiceDate']] <- self$`inServiceDate`
      }
      if (!is.null(self$`dateOfPurchase`)) {
        SensorObject[['dateOfPurchase']] <- self$`dateOfPurchase`
      }
      if (!is.null(self$`dateOfLastCalibration`)) {
        SensorObject[['dateOfLastCalibration']] <- self$`dateOfLastCalibration`
      }
      if (!is.null(self$`personInCharge`)) {
        SensorObject[['personInCharge']] <- self$`personInCharge`
      }
      if (!is.null(self$`variables`)) {
        SensorObject[['variables']] <- self$`variables`
      }

      SensorObject
    },
    fromJSON = function(SensorJson) {
      SensorObject <- jsonlite::fromJSON(SensorJson)
      if (!is.null(SensorObject$`uri`)) {
        self$`uri` <- SensorObject$`uri`
      }
      if (!is.null(SensorObject$`rdfType`)) {
        self$`rdfType` <- SensorObject$`rdfType`
      }
      if (!is.null(SensorObject$`label`)) {
        self$`label` <- SensorObject$`label`
      }
      if (!is.null(SensorObject$`brand`)) {
        self$`brand` <- SensorObject$`brand`
      }
      if (!is.null(SensorObject$`model`)) {
        self$`model` <- SensorObject$`model`
      }
      if (!is.null(SensorObject$`serialNumber`)) {
        self$`serialNumber` <- SensorObject$`serialNumber`
      }
      if (!is.null(SensorObject$`inServiceDate`)) {
        self$`inServiceDate` <- SensorObject$`inServiceDate`
      }
      if (!is.null(SensorObject$`dateOfPurchase`)) {
        self$`dateOfPurchase` <- SensorObject$`dateOfPurchase`
      }
      if (!is.null(SensorObject$`dateOfLastCalibration`)) {
        self$`dateOfLastCalibration` <- SensorObject$`dateOfLastCalibration`
      }
      if (!is.null(SensorObject$`personInCharge`)) {
        self$`personInCharge` <- SensorObject$`personInCharge`
      }
      if (!is.null(SensorObject$`variables`)) {
        self$`variables` <- SensorObject$`variables`
      }
    },
    fromJSONObject = function(SensorObject) {
      if (!is.null(SensorObject$`uri`)) {
        self$`uri` <- SensorObject$`uri`
      }
      if (!is.null(SensorObject$`rdfType`)) {
        self$`rdfType` <- SensorObject$`rdfType`
      }
      if (!is.null(SensorObject$`label`)) {
        self$`label` <- SensorObject$`label`
      }
      if (!is.null(SensorObject$`brand`)) {
        self$`brand` <- SensorObject$`brand`
      }
      if (!is.null(SensorObject$`model`)) {
        self$`model` <- SensorObject$`model`
      }
      if (!is.null(SensorObject$`serialNumber`)) {
        self$`serialNumber` <- SensorObject$`serialNumber`
      }
      if (!is.null(SensorObject$`inServiceDate`)) {
        self$`inServiceDate` <- SensorObject$`inServiceDate`
      }
      if (!is.null(SensorObject$`dateOfPurchase`)) {
        self$`dateOfPurchase` <- SensorObject$`dateOfPurchase`
      }
      if (!is.null(SensorObject$`dateOfLastCalibration`)) {
        self$`dateOfLastCalibration` <- SensorObject$`dateOfLastCalibration`
      }
      if (!is.null(SensorObject$`personInCharge`)) {
        self$`personInCharge` <- SensorObject$`personInCharge`
      }
      if (!is.null(SensorObject$`variables`)) {
        self$`variables` <- SensorObject$`variables`
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
           "personInCharge": %s,
           "variables": %s
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
        jsonlite::toJSON(self$`personInCharge`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`variables`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(SensorJson) {
      SensorObject <- jsonlite::fromJSON(SensorJson)
      self$`uri` <- SensorObject$`uri`
      self$`rdfType` <- SensorObject$`rdfType`
      self$`label` <- SensorObject$`label`
      self$`brand` <- SensorObject$`brand`
      self$`model` <- SensorObject$`model`
      self$`serialNumber` <- SensorObject$`serialNumber`
      self$`inServiceDate` <- SensorObject$`inServiceDate`
      self$`dateOfPurchase` <- SensorObject$`dateOfPurchase`
      self$`dateOfLastCalibration` <- SensorObject$`dateOfLastCalibration`
      self$`personInCharge` <- SensorObject$`personInCharge`
      self$`variables` <- SensorObject$`variables`
    }
  )
)
