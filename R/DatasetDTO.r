# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DatasetDTO Class
#'
#' @field variableUri 
#' @field provenance 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatasetDTO <- R6::R6Class(
  'DatasetDTO',
  public = list(
    `variableUri` = NULL,
    `provenance` = NULL,
    `data` = NULL,
    initialize = function(`variableUri`, `provenance`, `data`){
      if (!missing(`variableUri`)) {
        stopifnot(is.character(`variableUri`), length(`variableUri`) == 1)
        self$`variableUri` <- `variableUri`
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
      DatasetDTOObject <- list()
      if (!is.null(self$`variableUri`)) {
        DatasetDTOObject[['variableUri']] <- self$`variableUri`
      }
      if (!is.null(self$`provenance`)) {
        DatasetDTOObject[['provenance']] <- self$`provenance`$toJSON()
      }
      if (!is.null(self$`data`)) {
        DatasetDTOObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      DatasetDTOObject
    },
    fromJSON = function(DatasetDTOJson) {
      DatasetDTOObject <- jsonlite::fromJSON(DatasetDTOJson)
      if (!is.null(DatasetDTOObject$`variableUri`)) {
        self$`variableUri` <- DatasetDTOObject$`variableUri`
      }
      if (!is.null(DatasetDTOObject$`provenance`)) {
        provenanceObject <- ProvenanceDTO$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DatasetDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DatasetDTOObject$`data`)) {
        self$`data` <- lapply(DatasetDTOObject$`data`, function(x) {
          dataObject <- AgronomicalDataDTO$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          dataObject
        })
      }
    },
    fromJSONObject = function(DatasetDTOObject) {
      if (!is.null(DatasetDTOObject$`variableUri`)) {
        self$`variableUri` <- DatasetDTOObject$`variableUri`
      }
      if (!is.null(DatasetDTOObject$`provenance`)) {
        provenanceObject <- ProvenanceDTO$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DatasetDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DatasetDTOObject$`data`)) {
        self$`data` <- lapply(DatasetDTOObject$`data`, function(x) {
          dataObject <- AgronomicalDataDTO$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          dataObject
        })
      }
    },
    toJSONString = function() {
      dataList = paste(lapply(self$`data`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "variableUri": %s,
           "provenance": %s,
           "data": [%s]
        }',
        jsonlite::toJSON(self$`variableUri`,auto_unbox=TRUE, null = "null"),
        self$`provenance`$toJSON(),
        dataList
      )
    },
    fromJSONString = function(DatasetDTOJson) {
      DatasetDTOObject <- jsonlite::fromJSON(DatasetDTOJson)
      self$`variableUri` <- DatasetDTOObject$`variableUri`
      ProvenanceDTOObject <- ProvenanceDTO$new()
      self$`provenance` <- ProvenanceDTOObject$fromJSON(jsonlite::toJSON(DatasetDTOObject$provenance, auto_unbox = TRUE))
      self$`data` <- lapply(DatasetDTOObject$`data`, function(x) AgronomicalDataDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
