# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ActuatorPostDTO Class
#'
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
ActuatorPostDTO <- R6::R6Class(
  'ActuatorPostDTO',
  public = list(
    `rdfType` = NULL,
    `label` = NULL,
    `brand` = NULL,
    `model` = NULL,
    `serialNumber` = NULL,
    `inServiceDate` = NULL,
    `dateOfPurchase` = NULL,
    `dateOfLastCalibration` = NULL,
    `personInCharge` = NULL,
    initialize = function(`rdfType`, `label`, `brand`, `model`, `serialNumber`, `inServiceDate`, `dateOfPurchase`, `dateOfLastCalibration`, `personInCharge`){
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
      ActuatorPostDTOObject <- list()
      if (!is.null(self$`rdfType`)) {
        ActuatorPostDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`label`)) {
        ActuatorPostDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`brand`)) {
        ActuatorPostDTOObject[['brand']] <- self$`brand`
      }
      if (!is.null(self$`model`)) {
        ActuatorPostDTOObject[['model']] <- self$`model`
      }
      if (!is.null(self$`serialNumber`)) {
        ActuatorPostDTOObject[['serialNumber']] <- self$`serialNumber`
      }
      if (!is.null(self$`inServiceDate`)) {
        ActuatorPostDTOObject[['inServiceDate']] <- self$`inServiceDate`
      }
      if (!is.null(self$`dateOfPurchase`)) {
        ActuatorPostDTOObject[['dateOfPurchase']] <- self$`dateOfPurchase`
      }
      if (!is.null(self$`dateOfLastCalibration`)) {
        ActuatorPostDTOObject[['dateOfLastCalibration']] <- self$`dateOfLastCalibration`
      }
      if (!is.null(self$`personInCharge`)) {
        ActuatorPostDTOObject[['personInCharge']] <- self$`personInCharge`
      }

      ActuatorPostDTOObject
    },
    fromJSON = function(ActuatorPostDTOJson) {
      ActuatorPostDTOObject <- jsonlite::fromJSON(ActuatorPostDTOJson)
      if (!is.null(ActuatorPostDTOObject$`rdfType`)) {
        self$`rdfType` <- ActuatorPostDTOObject$`rdfType`
      }
      if (!is.null(ActuatorPostDTOObject$`label`)) {
        self$`label` <- ActuatorPostDTOObject$`label`
      }
      if (!is.null(ActuatorPostDTOObject$`brand`)) {
        self$`brand` <- ActuatorPostDTOObject$`brand`
      }
      if (!is.null(ActuatorPostDTOObject$`model`)) {
        self$`model` <- ActuatorPostDTOObject$`model`
      }
      if (!is.null(ActuatorPostDTOObject$`serialNumber`)) {
        self$`serialNumber` <- ActuatorPostDTOObject$`serialNumber`
      }
      if (!is.null(ActuatorPostDTOObject$`inServiceDate`)) {
        self$`inServiceDate` <- ActuatorPostDTOObject$`inServiceDate`
      }
      if (!is.null(ActuatorPostDTOObject$`dateOfPurchase`)) {
        self$`dateOfPurchase` <- ActuatorPostDTOObject$`dateOfPurchase`
      }
      if (!is.null(ActuatorPostDTOObject$`dateOfLastCalibration`)) {
        self$`dateOfLastCalibration` <- ActuatorPostDTOObject$`dateOfLastCalibration`
      }
      if (!is.null(ActuatorPostDTOObject$`personInCharge`)) {
        self$`personInCharge` <- ActuatorPostDTOObject$`personInCharge`
      }
    },
    fromJSONObject = function(ActuatorPostDTOObject) {
      if (!is.null(ActuatorPostDTOObject$`rdfType`)) {
        self$`rdfType` <- ActuatorPostDTOObject$`rdfType`
      }
      if (!is.null(ActuatorPostDTOObject$`label`)) {
        self$`label` <- ActuatorPostDTOObject$`label`
      }
      if (!is.null(ActuatorPostDTOObject$`brand`)) {
        self$`brand` <- ActuatorPostDTOObject$`brand`
      }
      if (!is.null(ActuatorPostDTOObject$`model`)) {
        self$`model` <- ActuatorPostDTOObject$`model`
      }
      if (!is.null(ActuatorPostDTOObject$`serialNumber`)) {
        self$`serialNumber` <- ActuatorPostDTOObject$`serialNumber`
      }
      if (!is.null(ActuatorPostDTOObject$`inServiceDate`)) {
        self$`inServiceDate` <- ActuatorPostDTOObject$`inServiceDate`
      }
      if (!is.null(ActuatorPostDTOObject$`dateOfPurchase`)) {
        self$`dateOfPurchase` <- ActuatorPostDTOObject$`dateOfPurchase`
      }
      if (!is.null(ActuatorPostDTOObject$`dateOfLastCalibration`)) {
        self$`dateOfLastCalibration` <- ActuatorPostDTOObject$`dateOfLastCalibration`
      }
      if (!is.null(ActuatorPostDTOObject$`personInCharge`)) {
        self$`personInCharge` <- ActuatorPostDTOObject$`personInCharge`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
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
    fromJSONString = function(ActuatorPostDTOJson) {
      ActuatorPostDTOObject <- jsonlite::fromJSON(ActuatorPostDTOJson)
      self$`rdfType` <- ActuatorPostDTOObject$`rdfType`
      self$`label` <- ActuatorPostDTOObject$`label`
      self$`brand` <- ActuatorPostDTOObject$`brand`
      self$`model` <- ActuatorPostDTOObject$`model`
      self$`serialNumber` <- ActuatorPostDTOObject$`serialNumber`
      self$`inServiceDate` <- ActuatorPostDTOObject$`inServiceDate`
      self$`dateOfPurchase` <- ActuatorPostDTOObject$`dateOfPurchase`
      self$`dateOfLastCalibration` <- ActuatorPostDTOObject$`dateOfLastCalibration`
      self$`personInCharge` <- ActuatorPostDTOObject$`personInCharge`
    }
  )
)
