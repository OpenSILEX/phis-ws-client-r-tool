# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificObjectPostDTO Class
#'
#' @field rdfType 
#' @field geometry 
#' @field experiment 
#' @field isPartOf 
#' @field year 
#' @field properties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificObjectPostDTO <- R6::R6Class(
  'ScientificObjectPostDTO',
  public = list(
    `rdfType` = NULL,
    `geometry` = NULL,
    `experiment` = NULL,
    `isPartOf` = NULL,
    `year` = NULL,
    `properties` = NULL,
    initialize = function(`rdfType`, `geometry`, `experiment`, `isPartOf`, `year`, `properties`){
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
      if (!missing(`year`)) {
        stopifnot(is.character(`year`), length(`year`) == 1)
        self$`year` <- `year`
      }
      if (!missing(`properties`)) {
        stopifnot(is.list(`properties`), length(`properties`) != 0)
        lapply(`properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`properties` <- `properties`
      }
    },
    toJSON = function() {
      ScientificObjectPostDTOObject <- list()
      if (!is.null(self$`rdfType`)) {
        ScientificObjectPostDTOObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`geometry`)) {
        ScientificObjectPostDTOObject[['geometry']] <- self$`geometry`
      }
      if (!is.null(self$`experiment`)) {
        ScientificObjectPostDTOObject[['experiment']] <- self$`experiment`
      }
      if (!is.null(self$`isPartOf`)) {
        ScientificObjectPostDTOObject[['isPartOf']] <- self$`isPartOf`
      }
      if (!is.null(self$`year`)) {
        ScientificObjectPostDTOObject[['year']] <- self$`year`
      }
      if (!is.null(self$`properties`)) {
        ScientificObjectPostDTOObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }

      ScientificObjectPostDTOObject
    },
    fromJSON = function(ScientificObjectPostDTOJson) {
      ScientificObjectPostDTOObject <- jsonlite::fromJSON(ScientificObjectPostDTOJson)
      if (!is.null(ScientificObjectPostDTOObject$`rdfType`)) {
        self$`rdfType` <- ScientificObjectPostDTOObject$`rdfType`
      }
      if (!is.null(ScientificObjectPostDTOObject$`geometry`)) {
        self$`geometry` <- ScientificObjectPostDTOObject$`geometry`
      }
      if (!is.null(ScientificObjectPostDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectPostDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectPostDTOObject$`isPartOf`)) {
        self$`isPartOf` <- ScientificObjectPostDTOObject$`isPartOf`
      }
      if (!is.null(ScientificObjectPostDTOObject$`year`)) {
        self$`year` <- ScientificObjectPostDTOObject$`year`
      }
      if (!is.null(ScientificObjectPostDTOObject$`properties`)) {
        self$`properties` <- lapply(ScientificObjectPostDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyPostDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          propertiesObject
        })
      }
    },
    fromJSONObject = function(ScientificObjectPostDTOObject) {
      if (!is.null(ScientificObjectPostDTOObject$`rdfType`)) {
        self$`rdfType` <- ScientificObjectPostDTOObject$`rdfType`
      }
      if (!is.null(ScientificObjectPostDTOObject$`geometry`)) {
        self$`geometry` <- ScientificObjectPostDTOObject$`geometry`
      }
      if (!is.null(ScientificObjectPostDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectPostDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectPostDTOObject$`isPartOf`)) {
        self$`isPartOf` <- ScientificObjectPostDTOObject$`isPartOf`
      }
      if (!is.null(ScientificObjectPostDTOObject$`year`)) {
        self$`year` <- ScientificObjectPostDTOObject$`year`
      }
      if (!is.null(ScientificObjectPostDTOObject$`properties`)) {
        self$`properties` <- lapply(ScientificObjectPostDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyPostDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          propertiesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "rdfType": %s,
           "geometry": %s,
           "experiment": %s,
           "isPartOf": %s,
           "year": %s,
           "properties": [%s]
        }',
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`geometry`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`experiment`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`isPartOf`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`year`,auto_unbox=TRUE),
        lapply(self$`properties`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(ScientificObjectPostDTOJson) {
      ScientificObjectPostDTOObject <- jsonlite::fromJSON(ScientificObjectPostDTOJson)
      self$`rdfType` <- ScientificObjectPostDTOObject$`rdfType`
      self$`geometry` <- ScientificObjectPostDTOObject$`geometry`
      self$`experiment` <- ScientificObjectPostDTOObject$`experiment`
      self$`isPartOf` <- ScientificObjectPostDTOObject$`isPartOf`
      self$`year` <- ScientificObjectPostDTOObject$`year`
      self$`properties` <- lapply(ScientificObjectPostDTOObject$`properties`, function(x) PropertyPostDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
