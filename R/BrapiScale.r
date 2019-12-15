# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BrapiScale Class
#'
#' @field scaleDbid 
#' @field scaleName 
#' @field dataType 
#' @field decimalPlaces 
#' @field ontologyReference 
#' @field xref 
#' @field validValues 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BrapiScale <- R6::R6Class(
  'BrapiScale',
  public = list(
    `scaleDbid` = NULL,
    `scaleName` = NULL,
    `dataType` = NULL,
    `decimalPlaces` = NULL,
    `ontologyReference` = NULL,
    `xref` = NULL,
    `validValues` = NULL,
    initialize = function(`scaleDbid`, `scaleName`, `dataType`, `decimalPlaces`, `ontologyReference`, `xref`, `validValues`){
      if (!missing(`scaleDbid`)) {
        stopifnot(is.character(`scaleDbid`), length(`scaleDbid`) == 1)
        self$`scaleDbid` <- `scaleDbid`
      }
      if (!missing(`scaleName`)) {
        stopifnot(is.character(`scaleName`), length(`scaleName`) == 1)
        self$`scaleName` <- `scaleName`
      }
      if (!missing(`dataType`)) {
        stopifnot(is.character(`dataType`), length(`dataType`) == 1)
        self$`dataType` <- `dataType`
      }
      if (!missing(`decimalPlaces`)) {
        stopifnot(is.character(`decimalPlaces`), length(`decimalPlaces`) == 1)
        self$`decimalPlaces` <- `decimalPlaces`
      }
      if (!missing(`ontologyReference`)) {
        stopifnot(is.character(`ontologyReference`), length(`ontologyReference`) == 1)
        self$`ontologyReference` <- `ontologyReference`
      }
      if (!missing(`xref`)) {
        stopifnot(is.character(`xref`), length(`xref`) == 1)
        self$`xref` <- `xref`
      }
      if (!missing(`validValues`)) {
        stopifnot(is.character(`validValues`), length(`validValues`) == 1)
        self$`validValues` <- `validValues`
      }
    },
    toJSON = function() {
      BrapiScaleObject <- list()
      if (!is.null(self$`scaleDbid`)) {
        BrapiScaleObject[['scaleDbid']] <- self$`scaleDbid`
      }
      if (!is.null(self$`scaleName`)) {
        BrapiScaleObject[['scaleName']] <- self$`scaleName`
      }
      if (!is.null(self$`dataType`)) {
        BrapiScaleObject[['dataType']] <- self$`dataType`
      }
      if (!is.null(self$`decimalPlaces`)) {
        BrapiScaleObject[['decimalPlaces']] <- self$`decimalPlaces`
      }
      if (!is.null(self$`ontologyReference`)) {
        BrapiScaleObject[['ontologyReference']] <- self$`ontologyReference`
      }
      if (!is.null(self$`xref`)) {
        BrapiScaleObject[['xref']] <- self$`xref`
      }
      if (!is.null(self$`validValues`)) {
        BrapiScaleObject[['validValues']] <- self$`validValues`
      }

      BrapiScaleObject
    },
    fromJSON = function(BrapiScaleJson) {
      BrapiScaleObject <- jsonlite::fromJSON(BrapiScaleJson)
      if (!is.null(BrapiScaleObject$`scaleDbid`)) {
        self$`scaleDbid` <- BrapiScaleObject$`scaleDbid`
      }
      if (!is.null(BrapiScaleObject$`scaleName`)) {
        self$`scaleName` <- BrapiScaleObject$`scaleName`
      }
      if (!is.null(BrapiScaleObject$`dataType`)) {
        self$`dataType` <- BrapiScaleObject$`dataType`
      }
      if (!is.null(BrapiScaleObject$`decimalPlaces`)) {
        self$`decimalPlaces` <- BrapiScaleObject$`decimalPlaces`
      }
      if (!is.null(BrapiScaleObject$`ontologyReference`)) {
        self$`ontologyReference` <- BrapiScaleObject$`ontologyReference`
      }
      if (!is.null(BrapiScaleObject$`xref`)) {
        self$`xref` <- BrapiScaleObject$`xref`
      }
      if (!is.null(BrapiScaleObject$`validValues`)) {
        self$`validValues` <- BrapiScaleObject$`validValues`
      }
    },
    fromJSONObject = function(BrapiScaleObject) {
      if (!is.null(BrapiScaleObject$`scaleDbid`)) {
        self$`scaleDbid` <- BrapiScaleObject$`scaleDbid`
      }
      if (!is.null(BrapiScaleObject$`scaleName`)) {
        self$`scaleName` <- BrapiScaleObject$`scaleName`
      }
      if (!is.null(BrapiScaleObject$`dataType`)) {
        self$`dataType` <- BrapiScaleObject$`dataType`
      }
      if (!is.null(BrapiScaleObject$`decimalPlaces`)) {
        self$`decimalPlaces` <- BrapiScaleObject$`decimalPlaces`
      }
      if (!is.null(BrapiScaleObject$`ontologyReference`)) {
        self$`ontologyReference` <- BrapiScaleObject$`ontologyReference`
      }
      if (!is.null(BrapiScaleObject$`xref`)) {
        self$`xref` <- BrapiScaleObject$`xref`
      }
      if (!is.null(BrapiScaleObject$`validValues`)) {
        self$`validValues` <- BrapiScaleObject$`validValues`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "scaleDbid": %s,
           "scaleName": %s,
           "dataType": %s,
           "decimalPlaces": %s,
           "ontologyReference": %s,
           "xref": %s,
           "validValues": %s
        }',
        jsonlite::toJSON(self$`scaleDbid`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`scaleName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`dataType`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`decimalPlaces`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`ontologyReference`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`xref`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`validValues`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(BrapiScaleJson) {
      BrapiScaleObject <- jsonlite::fromJSON(BrapiScaleJson)
      self$`scaleDbid` <- BrapiScaleObject$`scaleDbid`
      self$`scaleName` <- BrapiScaleObject$`scaleName`
      self$`dataType` <- BrapiScaleObject$`dataType`
      self$`decimalPlaces` <- BrapiScaleObject$`decimalPlaces`
      self$`ontologyReference` <- BrapiScaleObject$`ontologyReference`
      self$`xref` <- BrapiScaleObject$`xref`
      self$`validValues` <- BrapiScaleObject$`validValues`
    }
  )
)
