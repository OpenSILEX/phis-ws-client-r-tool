# openSilexSandBoxAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SensorProfileDTO Class
#'
#' @field uri 
#' @field properties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SensorProfileDTO <- R6::R6Class(
  'SensorProfileDTO',
  public = list(
    `uri` = NULL,
    `properties` = NULL,
    initialize = function(`uri`, `properties`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`properties`)) {
        stopifnot(is.list(`properties`), length(`properties`) != 0)
        lapply(`properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`properties` <- `properties`
      }
    },
    toJSON = function() {
      SensorProfileDTOObject <- list()
      if (!is.null(self$`uri`)) {
        SensorProfileDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`properties`)) {
        SensorProfileDTOObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }

      SensorProfileDTOObject
    },
    fromJSON = function(SensorProfileDTOJson) {
      SensorProfileDTOObject <- jsonlite::fromJSON(SensorProfileDTOJson)
      if (!is.null(SensorProfileDTOObject$`uri`)) {
        self$`uri` <- SensorProfileDTOObject$`uri`
      }
      if (!is.null(SensorProfileDTOObject$`properties`)) {
        self$`properties` <- lapply(SensorProfileDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyPostDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
    },
    fromJSONObject = function(SensorProfileDTOObject) {
      if (!is.null(SensorProfileDTOObject$`uri`)) {
        self$`uri` <- SensorProfileDTOObject$`uri`
      }
      if (!is.null(SensorProfileDTOObject$`properties`)) {
        self$`properties` <- lapply(SensorProfileDTOObject$`properties`, function(x) {
          propertiesObject <- PropertyPostDTO$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
    },
    toJSONString = function() {
      propertiesList = paste(lapply(self$`properties`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "properties": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        propertiesList
      )
    },
    fromJSONString = function(SensorProfileDTOJson) {
      SensorProfileDTOObject <- jsonlite::fromJSON(SensorProfileDTOJson)
      self$`uri` <- SensorProfileDTOObject$`uri`
      self$`properties` <- lapply(SensorProfileDTOObject$`properties`, function(x) PropertyPostDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
