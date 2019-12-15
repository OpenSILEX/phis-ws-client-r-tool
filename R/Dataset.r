# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Dataset Class
#'
#' @field variableURI 
#' @field experiment 
#' @field provenance 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Dataset <- R6::R6Class(
  'Dataset',
  public = list(
    `variableURI` = NULL,
    `experiment` = NULL,
    `provenance` = NULL,
    `data` = NULL,
    initialize = function(`variableURI`, `experiment`, `provenance`, `data`){
      if (!missing(`variableURI`)) {
        stopifnot(is.character(`variableURI`), length(`variableURI`) == 1)
        self$`variableURI` <- `variableURI`
      }
      if (!missing(`experiment`)) {
        stopifnot(is.character(`experiment`), length(`experiment`) == 1)
        self$`experiment` <- `experiment`
      }
      if (!missing(`provenance`)) {
        stopifnot(R6::is.R6(`provenance`))
        self$`provenance` <- `provenance`
      }
      if (!missing(`data`)) {
        stopifnot(is.list(`data`), length(`data`) != 0)
        lapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      DatasetObject <- list()
      if (!is.null(self$`variableURI`)) {
        DatasetObject[['variableURI']] <- self$`variableURI`
      }
      if (!is.null(self$`experiment`)) {
        DatasetObject[['experiment']] <- self$`experiment`
      }
      if (!is.null(self$`provenance`)) {
        DatasetObject[['provenance']] <- self$`provenance`$toJSON()
      }
      if (!is.null(self$`data`)) {
        DatasetObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      DatasetObject
    },
    fromJSON = function(DatasetJson) {
      DatasetObject <- jsonlite::fromJSON(DatasetJson)
      if (!is.null(DatasetObject$`variableURI`)) {
        self$`variableURI` <- DatasetObject$`variableURI`
      }
      if (!is.null(DatasetObject$`experiment`)) {
        self$`experiment` <- DatasetObject$`experiment`
      }
      if (!is.null(DatasetObject$`provenance`)) {
        provenanceObject <- Provenance$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DatasetObject$provenance, auto_unbox = TRUE))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DatasetObject$`data`)) {
        self$`data` <- lapply(DatasetObject$`data`, function(x) {
          dataObject <- AgronomicalData$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
    },
    fromJSONObject = function(DatasetObject) {
      if (!is.null(DatasetObject$`variableURI`)) {
        self$`variableURI` <- DatasetObject$`variableURI`
      }
      if (!is.null(DatasetObject$`experiment`)) {
        self$`experiment` <- DatasetObject$`experiment`
      }
      if (!is.null(DatasetObject$`provenance`)) {
        provenanceObject <- Provenance$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DatasetObject$provenance, auto_unbox = TRUE))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DatasetObject$`data`)) {
        self$`data` <- lapply(DatasetObject$`data`, function(x) {
          dataObject <- AgronomicalData$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "variableURI": %s,
           "experiment": %s,
           "provenance": %s,
           "data": [%s]
        }',
        jsonlite::toJSON(self$`variableURI`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`experiment`,auto_unbox=TRUE),
        self$`provenance`$toJSON(),
        lapply(self$`data`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(DatasetJson) {
      DatasetObject <- jsonlite::fromJSON(DatasetJson)
      self$`variableURI` <- DatasetObject$`variableURI`
      self$`experiment` <- DatasetObject$`experiment`
      ProvenanceObject <- Provenance$new()
      self$`provenance` <- ProvenanceObject$fromJSON(jsonlite::toJSON(DatasetObject$provenance, auto_unbox = TRUE))
      self$`data` <- lapply(DatasetObject$`data`, function(x) AgronomicalData$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
