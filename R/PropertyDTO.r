# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PropertyDTO Class
#'
#' @field rdfType 
#' @field relation 
#' @field value 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PropertyDTO <- R6::R6Class(
  'PropertyDTO',
  public = list(
    `rdfType` = NULL,
    `relation` = NULL,
    `value` = NULL,
    initialize = function(`rdfType`, `relation`, `value`){
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`relation`)) {
        stopifnot(is.character(`relation`), length(`relation`) == 1)
        self$`relation` <- `relation`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
    },
    toJSON = function() {
      PropertyDTOObject <- list()
      if (!is.null(self$`rdfType`)) {
        PropertyDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`relation`)) {
        PropertyDTOObject[['relation']] <- self$`relation`
      }
      if (!is.null(self$`value`)) {
        PropertyDTOObject[['value']] <- self$`value`
      }

      PropertyDTOObject
    },
    fromJSON = function(PropertyDTOJson) {
      PropertyDTOObject <- jsonlite::fromJSON(PropertyDTOJson)
      if (!is.null(PropertyDTOObject$`rdfType`)) {
        self$`rdfType` <- PropertyDTOObject$`rdfType`
      }
      if (!is.null(PropertyDTOObject$`relation`)) {
        self$`relation` <- PropertyDTOObject$`relation`
      }
      if (!is.null(PropertyDTOObject$`value`)) {
        self$`value` <- PropertyDTOObject$`value`
      }
    },
    fromJSONObject = function(PropertyDTOObject) {
      if (!is.null(PropertyDTOObject$`rdfType`)) {
        self$`rdfType` <- PropertyDTOObject$`rdfType`
      }
      if (!is.null(PropertyDTOObject$`relation`)) {
        self$`relation` <- PropertyDTOObject$`relation`
      }
      if (!is.null(PropertyDTOObject$`value`)) {
        self$`value` <- PropertyDTOObject$`value`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "rdfType": %s,
           "relation": %s,
           "value": %s
        }',
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`relation`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`value`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(PropertyDTOJson) {
      PropertyDTOObject <- jsonlite::fromJSON(PropertyDTOJson)
      self$`rdfType` <- PropertyDTOObject$`rdfType`
      self$`relation` <- PropertyDTOObject$`relation`
      self$`value` <- PropertyDTOObject$`value`
    }
  )
)