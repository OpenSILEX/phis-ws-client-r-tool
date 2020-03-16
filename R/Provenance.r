# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Provenance Class
#'
#' @field uri 
#' @field creationDate 
#' @field wasGeneratedBy 
#' @field documentsUris 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Provenance <- R6::R6Class(
  'Provenance',
  public = list(
    `uri` = NULL,
    `creationDate` = NULL,
    `wasGeneratedBy` = NULL,
    `documentsUris` = NULL,
    initialize = function(`uri`, `creationDate`, `wasGeneratedBy`, `documentsUris`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`creationDate`)) {
        stopifnot(is.character(`creationDate`), length(`creationDate`) == 1)
        self$`creationDate` <- `creationDate`
      }
      if (!missing(`wasGeneratedBy`)) {
        stopifnot(R6::is.R6(`wasGeneratedBy`))
        self$`wasGeneratedBy` <- `wasGeneratedBy`
      }
      if (!missing(`documentsUris`)) {
        stopifnot(is.list(`documentsUris`), length(`documentsUris`) != 0)
        lapply(`documentsUris`, function(x) stopifnot(is.character(x)))
        self$`documentsUris` <- `documentsUris`
      }
    },
    toJSON = function() {
      ProvenanceObject <- list()
      if (!is.null(self$`uri`)) {
        ProvenanceObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`creationDate`)) {
        ProvenanceObject[['creationDate']] <- self$`creationDate`
      }
      if (!is.null(self$`wasGeneratedBy`)) {
        ProvenanceObject[['wasGeneratedBy']] <- self$`wasGeneratedBy`$toJSON()
      }
      if (!is.null(self$`documentsUris`)) {
        ProvenanceObject[['documentsUris']] <- self$`documentsUris`
      }

      ProvenanceObject
    },
    fromJSON = function(ProvenanceJson) {
      ProvenanceObject <- jsonlite::fromJSON(ProvenanceJson)
      if (!is.null(ProvenanceObject$`uri`)) {
        self$`uri` <- ProvenanceObject$`uri`
      }
      if (!is.null(ProvenanceObject$`creationDate`)) {
        self$`creationDate` <- ProvenanceObject$`creationDate`
      }
      if (!is.null(ProvenanceObject$`wasGeneratedBy`)) {
        wasGeneratedByObject <- WasGeneratedBy$new()
        wasGeneratedByObject$fromJSON(jsonlite::toJSON(ProvenanceObject$wasGeneratedBy, auto_unbox = TRUE, null = "null"))
        self$`wasGeneratedBy` <- wasGeneratedByObject
      }
      if (!is.null(ProvenanceObject$`documentsUris`)) {
        self$`documentsUris` <- ProvenanceObject$`documentsUris`
      }
    },
    fromJSONObject = function(ProvenanceObject) {
      if (!is.null(ProvenanceObject$`uri`)) {
        self$`uri` <- ProvenanceObject$`uri`
      }
      if (!is.null(ProvenanceObject$`creationDate`)) {
        self$`creationDate` <- ProvenanceObject$`creationDate`
      }
      if (!is.null(ProvenanceObject$`wasGeneratedBy`)) {
        wasGeneratedByObject <- WasGeneratedBy$new()
        wasGeneratedByObject$fromJSON(jsonlite::toJSON(ProvenanceObject$wasGeneratedBy, auto_unbox = TRUE, null = "null"))
        self$`wasGeneratedBy` <- wasGeneratedByObject
      }
      if (!is.null(ProvenanceObject$`documentsUris`)) {
        self$`documentsUris` <- ProvenanceObject$`documentsUris`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "creationDate": %s,
           "wasGeneratedBy": %s,
           "documentsUris": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`creationDate`,auto_unbox=TRUE, null = "null"),
        self$`wasGeneratedBy`$toJSON(),
        lapply(self$`documentsUris`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(ProvenanceJson) {
      ProvenanceObject <- jsonlite::fromJSON(ProvenanceJson)
      self$`uri` <- ProvenanceObject$`uri`
      self$`creationDate` <- ProvenanceObject$`creationDate`
      WasGeneratedByObject <- WasGeneratedBy$new()
      self$`wasGeneratedBy` <- WasGeneratedByObject$fromJSON(jsonlite::toJSON(ProvenanceObject$wasGeneratedBy, auto_unbox = TRUE))
      self$`documentsUris` <- ProvenanceObject$`documentsUris`
    }
  )
)
