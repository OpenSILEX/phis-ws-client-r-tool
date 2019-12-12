# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' WasGeneratedBy Class
#'
#' @field wasGeneratedBy 
#' @field wasGeneratedByDescription 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WasGeneratedBy <- R6::R6Class(
  'WasGeneratedBy',
  public = list(
    `wasGeneratedBy` = NULL,
    `wasGeneratedByDescription` = NULL,
    initialize = function(`wasGeneratedBy`, `wasGeneratedByDescription`){
      if (!missing(`wasGeneratedBy`)) {
        stopifnot(is.character(`wasGeneratedBy`), length(`wasGeneratedBy`) == 1)
        self$`wasGeneratedBy` <- `wasGeneratedBy`
      }
      if (!missing(`wasGeneratedByDescription`)) {
        stopifnot(is.character(`wasGeneratedByDescription`), length(`wasGeneratedByDescription`) == 1)
        self$`wasGeneratedByDescription` <- `wasGeneratedByDescription`
      }
    },
    toJSON = function() {
      WasGeneratedByObject <- list()
      if (!is.null(self$`wasGeneratedBy`)) {
        WasGeneratedByObject[['wasGeneratedBy']] <- self$`wasGeneratedBy`
      }
      if (!is.null(self$`wasGeneratedByDescription`)) {
        WasGeneratedByObject[['wasGeneratedByDescription']] <- self$`wasGeneratedByDescription`
      }

      WasGeneratedByObject
    },
    fromJSON = function(WasGeneratedByJson) {
      WasGeneratedByObject <- jsonlite::fromJSON(WasGeneratedByJson)
      if (!is.null(WasGeneratedByObject$`wasGeneratedBy`)) {
        self$`wasGeneratedBy` <- WasGeneratedByObject$`wasGeneratedBy`
      }
      if (!is.null(WasGeneratedByObject$`wasGeneratedByDescription`)) {
        self$`wasGeneratedByDescription` <- WasGeneratedByObject$`wasGeneratedByDescription`
      }
    },
    fromJSONObject = function(WasGeneratedByObject) {
      if (!is.null(WasGeneratedByObject$`wasGeneratedBy`)) {
        self$`wasGeneratedBy` <- WasGeneratedByObject$`wasGeneratedBy`
      }
      if (!is.null(WasGeneratedByObject$`wasGeneratedByDescription`)) {
        self$`wasGeneratedByDescription` <- WasGeneratedByObject$`wasGeneratedByDescription`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "wasGeneratedBy": %s,
           "wasGeneratedByDescription": %s
        }',
        jsonlite::toJSON(self$`wasGeneratedBy`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`wasGeneratedByDescription`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(WasGeneratedByJson) {
      WasGeneratedByObject <- jsonlite::fromJSON(WasGeneratedByJson)
      self$`wasGeneratedBy` <- WasGeneratedByObject$`wasGeneratedBy`
      self$`wasGeneratedByDescription` <- WasGeneratedByObject$`wasGeneratedByDescription`
    }
  )
)