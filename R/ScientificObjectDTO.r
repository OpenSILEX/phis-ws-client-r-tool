# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificObjectDTO Class
#'
#' @field uri 
#' @field rdfType 
#' @field geometry 
#' @field experiment 
#' @field isPartOf 
#' @field label 
#' @field properties 
#' @field uriExperiment 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificObjectDTO <- R6::R6Class(
  'ScientificObjectDTO',
  public = list(
    `uri` = NULL,
    `rdfType` = NULL,
    `geometry` = NULL,
    `experiment` = NULL,
    `isPartOf` = NULL,
    `label` = NULL,
    `properties` = NULL,
    `uriExperiment` = NULL,
    initialize = function(`uri`, `rdfType`, `geometry`, `experiment`, `isPartOf`, `label`, `properties`, `uriExperiment`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`geometry`)) {
        stopifnot(is.character(`geometry`), length(`geometry`) == 1)
        self$`geometry` <- `geometry`
      }
      if (!missing(`experiment`)) {
        stopifnot(is.character(`experiment`), length(`experiment`) == 1)
        self$`experiment` <- `experiment`
      }
      if (!missing(`isPartOf`)) {
        stopifnot(is.character(`isPartOf`), length(`isPartOf`) == 1)
        self$`isPartOf` <- `isPartOf`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
      if (!missing(`properties`)) {
        stopifnot(is.list(`properties`), length(`properties`) != 0)
        lapply(`properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`properties` <- `properties`
      }
      if (!missing(`uriExperiment`)) {
        stopifnot(is.character(`uriExperiment`), length(`uriExperiment`) == 1)
        self$`uriExperiment` <- `uriExperiment`
      }
    },
    toJSON = function() {
      ScientificObjectDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ScientificObjectDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        ScientificObjectDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`geometry`)) {
        ScientificObjectDTOObject[['geometry']] <- self$`geometry`
      }
      if (!is.null(self$`experiment`)) {
        ScientificObjectDTOObject[['experiment']] <- self$`experiment`
      }
      if (!is.null(self$`isPartOf`)) {
        ScientificObjectDTOObject[['isPartOf']] <- self$`isPartOf`
      }
      if (!is.null(self$`label`)) {
        ScientificObjectDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`properties`)) {
        ScientificObjectDTOObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }
      if (!is.null(self$`uriExperiment`)) {
        ScientificObjectDTOObject[['uriExperiment']] <- self$`uriExperiment`
      }

      ScientificObjectDTOObject
    },
    fromJSON = function(ScientificObjectDTOJson) {
      ScientificObjectDTOObject <- jsonlite::fromJSON(ScientificObjectDTOJson)
      if (!is.null(ScientificObjectDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectDTOObject$`uri`
      }
      if (!is.null(ScientificObjectDTOObject$`rdfType`)) {
        self$`rdfType` <- ScientificObjectDTOObject$`rdfType`
      }
      if (!is.null(ScientificObjectDTOObject$`geometry`)) {
        self$`geometry` <- ScientificObjectDTOObject$`geometry`
      }
      if (!is.null(ScientificObjectDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectDTOObject$`isPartOf`)) {
        self$`isPartOf` <- ScientificObjectDTOObject$`isPartOf`
      }
      if (!is.null(ScientificObjectDTOObject$`label`)) {
        self$`label` <- ScientificObjectDTOObject$`label`
      }
      if (!is.null(ScientificObjectDTOObject$`properties`)) {
        self$`properties` <- lapply(ScientificObjectDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
      if (!is.null(ScientificObjectDTOObject$`uriExperiment`)) {
        self$`uriExperiment` <- ScientificObjectDTOObject$`uriExperiment`
      }
    },
    fromJSONObject = function(ScientificObjectDTOObject) {
      if (!is.null(ScientificObjectDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectDTOObject$`uri`
      }
      if (!is.null(ScientificObjectDTOObject$`rdfType`)) {
        self$`rdfType` <- ScientificObjectDTOObject$`rdfType`
      }
      if (!is.null(ScientificObjectDTOObject$`geometry`)) {
        self$`geometry` <- ScientificObjectDTOObject$`geometry`
      }
      if (!is.null(ScientificObjectDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectDTOObject$`isPartOf`)) {
        self$`isPartOf` <- ScientificObjectDTOObject$`isPartOf`
      }
      if (!is.null(ScientificObjectDTOObject$`label`)) {
        self$`label` <- ScientificObjectDTOObject$`label`
      }
      if (!is.null(ScientificObjectDTOObject$`properties`)) {
        self$`properties` <- lapply(ScientificObjectDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
      if (!is.null(ScientificObjectDTOObject$`uriExperiment`)) {
        self$`uriExperiment` <- ScientificObjectDTOObject$`uriExperiment`
      }
    },
    toJSONString = function() {
      propertiesList = paste(lapply(self$`properties`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdfType": %s,
           "geometry": %s,
           "experiment": %s,
           "isPartOf": %s,
           "label": %s,
           "properties": [%s],
           "uriExperiment": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`geometry`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`experiment`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`isPartOf`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE, null = "null"),
        propertiesList,
        jsonlite::toJSON(self$`uriExperiment`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ScientificObjectDTOJson) {
      ScientificObjectDTOObject <- jsonlite::fromJSON(ScientificObjectDTOJson)
      self$`uri` <- ScientificObjectDTOObject$`uri`
      self$`rdfType` <- ScientificObjectDTOObject$`rdfType`
      self$`geometry` <- ScientificObjectDTOObject$`geometry`
      self$`experiment` <- ScientificObjectDTOObject$`experiment`
      self$`isPartOf` <- ScientificObjectDTOObject$`isPartOf`
      self$`label` <- ScientificObjectDTOObject$`label`
      self$`properties` <- lapply(ScientificObjectDTOObject$`properties`, function(x) PropertyDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`uriExperiment` <- ScientificObjectDTOObject$`uriExperiment`
    }
  )
)
