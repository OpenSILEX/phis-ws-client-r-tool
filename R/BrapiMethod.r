# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BrapiMethod Class
#'
#' @field methodDbId 
#' @field methodName 
#' @field brapiClass 
#' @field description 
#' @field formula 
#' @field ontologyReference 
#' @field reference 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BrapiMethod <- R6::R6Class(
  'BrapiMethod',
  public = list(
    `methodDbId` = NULL,
    `methodName` = NULL,
    `brapiClass` = NULL,
    `description` = NULL,
    `formula` = NULL,
    `ontologyReference` = NULL,
    `reference` = NULL,
    initialize = function(`methodDbId`, `methodName`, `brapiClass`, `description`, `formula`, `ontologyReference`, `reference`){
      if (!missing(`methodDbId`)) {
        stopifnot(is.character(`methodDbId`), length(`methodDbId`) == 1)
        self$`methodDbId` <- `methodDbId`
      }
      if (!missing(`methodName`)) {
        stopifnot(is.character(`methodName`), length(`methodName`) == 1)
        self$`methodName` <- `methodName`
      }
      if (!missing(`brapiClass`)) {
        stopifnot(is.character(`brapiClass`), length(`brapiClass`) == 1)
        self$`brapiClass` <- `brapiClass`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`formula`)) {
        stopifnot(is.character(`formula`), length(`formula`) == 1)
        self$`formula` <- `formula`
      }
      if (!missing(`ontologyReference`)) {
        stopifnot(is.character(`ontologyReference`), length(`ontologyReference`) == 1)
        self$`ontologyReference` <- `ontologyReference`
      }
      if (!missing(`reference`)) {
        stopifnot(is.character(`reference`), length(`reference`) == 1)
        self$`reference` <- `reference`
      }
    },
    toJSON = function() {
      BrapiMethodObject <- list()
      if (!is.null(self$`methodDbId`)) {
        BrapiMethodObject[['methodDbId']] <- self$`methodDbId`
      }
      if (!is.null(self$`methodName`)) {
        BrapiMethodObject[['methodName']] <- self$`methodName`
      }
      if (!is.null(self$`brapiClass`)) {
        BrapiMethodObject[['brapiClass']] <- self$`brapiClass`
      }
      if (!is.null(self$`description`)) {
        BrapiMethodObject[['description']] <- self$`description`
      }
      if (!is.null(self$`formula`)) {
        BrapiMethodObject[['formula']] <- self$`formula`
      }
      if (!is.null(self$`ontologyReference`)) {
        BrapiMethodObject[['ontologyReference']] <- self$`ontologyReference`
      }
      if (!is.null(self$`reference`)) {
        BrapiMethodObject[['reference']] <- self$`reference`
      }

      BrapiMethodObject
    },
    fromJSON = function(BrapiMethodJson) {
      BrapiMethodObject <- jsonlite::fromJSON(BrapiMethodJson)
      if (!is.null(BrapiMethodObject$`methodDbId`)) {
        self$`methodDbId` <- BrapiMethodObject$`methodDbId`
      }
      if (!is.null(BrapiMethodObject$`methodName`)) {
        self$`methodName` <- BrapiMethodObject$`methodName`
      }
      if (!is.null(BrapiMethodObject$`brapiClass`)) {
        self$`brapiClass` <- BrapiMethodObject$`brapiClass`
      }
      if (!is.null(BrapiMethodObject$`description`)) {
        self$`description` <- BrapiMethodObject$`description`
      }
      if (!is.null(BrapiMethodObject$`formula`)) {
        self$`formula` <- BrapiMethodObject$`formula`
      }
      if (!is.null(BrapiMethodObject$`ontologyReference`)) {
        self$`ontologyReference` <- BrapiMethodObject$`ontologyReference`
      }
      if (!is.null(BrapiMethodObject$`reference`)) {
        self$`reference` <- BrapiMethodObject$`reference`
      }
    },
    fromJSONObject = function(BrapiMethodObject) {
      if (!is.null(BrapiMethodObject$`methodDbId`)) {
        self$`methodDbId` <- BrapiMethodObject$`methodDbId`
      }
      if (!is.null(BrapiMethodObject$`methodName`)) {
        self$`methodName` <- BrapiMethodObject$`methodName`
      }
      if (!is.null(BrapiMethodObject$`brapiClass`)) {
        self$`brapiClass` <- BrapiMethodObject$`brapiClass`
      }
      if (!is.null(BrapiMethodObject$`description`)) {
        self$`description` <- BrapiMethodObject$`description`
      }
      if (!is.null(BrapiMethodObject$`formula`)) {
        self$`formula` <- BrapiMethodObject$`formula`
      }
      if (!is.null(BrapiMethodObject$`ontologyReference`)) {
        self$`ontologyReference` <- BrapiMethodObject$`ontologyReference`
      }
      if (!is.null(BrapiMethodObject$`reference`)) {
        self$`reference` <- BrapiMethodObject$`reference`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "methodDbId": %s,
           "methodName": %s,
           "brapiClass": %s,
           "description": %s,
           "formula": %s,
           "ontologyReference": %s,
           "reference": %s
        }',
        jsonlite::toJSON(self$`methodDbId`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`methodName`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`brapiClass`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`formula`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`ontologyReference`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`reference`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(BrapiMethodJson) {
      BrapiMethodObject <- jsonlite::fromJSON(BrapiMethodJson)
      self$`methodDbId` <- BrapiMethodObject$`methodDbId`
      self$`methodName` <- BrapiMethodObject$`methodName`
      self$`brapiClass` <- BrapiMethodObject$`brapiClass`
      self$`description` <- BrapiMethodObject$`description`
      self$`formula` <- BrapiMethodObject$`formula`
      self$`ontologyReference` <- BrapiMethodObject$`ontologyReference`
      self$`reference` <- BrapiMethodObject$`reference`
    }
  )
)
