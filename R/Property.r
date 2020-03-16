# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Property Class
#'
#' @field rdfType 
#' @field rdfTypeLabels 
#' @field relation 
#' @field relationLabels 
#' @field value 
#' @field valueLabels 
#' @field domain 
#' @field labels 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Property <- R6::R6Class(
  'Property',
  public = list(
    `rdfType` = NULL,
    `rdfTypeLabels` = NULL,
    `relation` = NULL,
    `relationLabels` = NULL,
    `value` = NULL,
    `valueLabels` = NULL,
    `domain` = NULL,
    `labels` = NULL,
    initialize = function(`rdfType`, `rdfTypeLabels`, `relation`, `relationLabels`, `value`, `valueLabels`, `domain`, `labels`){
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`rdfTypeLabels`)) {
        stopifnot(is.list(`rdfTypeLabels`), length(`rdfTypeLabels`) != 0)
        lapply(`rdfTypeLabels`, function(x) stopifnot(is.character(x)))
        self$`rdfTypeLabels` <- `rdfTypeLabels`
      }
      if (!missing(`relation`)) {
        stopifnot(is.character(`relation`), length(`relation`) == 1)
        self$`relation` <- `relation`
      }
      if (!missing(`relationLabels`)) {
        stopifnot(is.list(`relationLabels`), length(`relationLabels`) != 0)
        lapply(`relationLabels`, function(x) stopifnot(is.character(x)))
        self$`relationLabels` <- `relationLabels`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
      if (!missing(`valueLabels`)) {
        stopifnot(is.list(`valueLabels`), length(`valueLabels`) != 0)
        lapply(`valueLabels`, function(x) stopifnot(is.character(x)))
        self$`valueLabels` <- `valueLabels`
      }
      if (!missing(`domain`)) {
        stopifnot(is.character(`domain`), length(`domain`) == 1)
        self$`domain` <- `domain`
      }
      if (!missing(`labels`)) {
        self$`labels` <- `labels`
      }
    },
    toJSON = function() {
      PropertyObject <- list()
      if (!is.null(self$`rdfType`)) {
        PropertyObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`rdfTypeLabels`)) {
        PropertyObject[['rdfTypeLabels']] <- self$`rdfTypeLabels`
      }
      if (!is.null(self$`relation`)) {
        PropertyObject[['relation']] <- self$`relation`
      }
      if (!is.null(self$`relationLabels`)) {
        PropertyObject[['relationLabels']] <- self$`relationLabels`
      }
      if (!is.null(self$`value`)) {
        PropertyObject[['value']] <- self$`value`
      }
      if (!is.null(self$`valueLabels`)) {
        PropertyObject[['valueLabels']] <- self$`valueLabels`
      }
      if (!is.null(self$`domain`)) {
        PropertyObject[['domain']] <- self$`domain`
      }
      if (!is.null(self$`labels`)) {
        PropertyObject[['labels']] <- self$`labels`
      }

      PropertyObject
    },
    fromJSON = function(PropertyJson) {
      PropertyObject <- jsonlite::fromJSON(PropertyJson)
      if (!is.null(PropertyObject$`rdfType`)) {
        self$`rdfType` <- PropertyObject$`rdfType`
      }
      if (!is.null(PropertyObject$`rdfTypeLabels`)) {
        self$`rdfTypeLabels` <- PropertyObject$`rdfTypeLabels`
      }
      if (!is.null(PropertyObject$`relation`)) {
        self$`relation` <- PropertyObject$`relation`
      }
      if (!is.null(PropertyObject$`relationLabels`)) {
        self$`relationLabels` <- PropertyObject$`relationLabels`
      }
      if (!is.null(PropertyObject$`value`)) {
        self$`value` <- PropertyObject$`value`
      }
      if (!is.null(PropertyObject$`valueLabels`)) {
        self$`valueLabels` <- PropertyObject$`valueLabels`
      }
      if (!is.null(PropertyObject$`domain`)) {
        self$`domain` <- PropertyObject$`domain`
      }
      if (!is.null(PropertyObject$`labels`)) {
        self$`labels` <- PropertyObject$`labels`
      }
    },
    fromJSONObject = function(PropertyObject) {
      if (!is.null(PropertyObject$`rdfType`)) {
        self$`rdfType` <- PropertyObject$`rdfType`
      }
      if (!is.null(PropertyObject$`rdfTypeLabels`)) {
        self$`rdfTypeLabels` <- PropertyObject$`rdfTypeLabels`
      }
      if (!is.null(PropertyObject$`relation`)) {
        self$`relation` <- PropertyObject$`relation`
      }
      if (!is.null(PropertyObject$`relationLabels`)) {
        self$`relationLabels` <- PropertyObject$`relationLabels`
      }
      if (!is.null(PropertyObject$`value`)) {
        self$`value` <- PropertyObject$`value`
      }
      if (!is.null(PropertyObject$`valueLabels`)) {
        self$`valueLabels` <- PropertyObject$`valueLabels`
      }
      if (!is.null(PropertyObject$`domain`)) {
        self$`domain` <- PropertyObject$`domain`
      }
      if (!is.null(PropertyObject$`labels`)) {
        self$`labels` <- PropertyObject$`labels`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "rdfType": %s,
           "rdfTypeLabels": [%s],
           "relation": %s,
           "relationLabels": [%s],
           "value": %s,
           "valueLabels": [%s],
           "domain": %s,
           "labels": %s
        }',
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE, null = "null"),
        lapply(self$`rdfTypeLabels`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`relation`,auto_unbox=TRUE, null = "null"),
        lapply(self$`relationLabels`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`value`,auto_unbox=TRUE, null = "null"),
        lapply(self$`valueLabels`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`domain`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`labels`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(PropertyJson) {
      PropertyObject <- jsonlite::fromJSON(PropertyJson)
      self$`rdfType` <- PropertyObject$`rdfType`
      self$`rdfTypeLabels` <- PropertyObject$`rdfTypeLabels`
      self$`relation` <- PropertyObject$`relation`
      self$`relationLabels` <- PropertyObject$`relationLabels`
      self$`value` <- PropertyObject$`value`
      self$`valueLabels` <- PropertyObject$`valueLabels`
      self$`domain` <- PropertyObject$`domain`
      self$`labels` <- PropertyObject$`labels`
    }
  )
)
