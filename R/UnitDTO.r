# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UnitDTO Class
#'
#' @field uri 
#' @field label 
#' @field comment 
#' @field ontologiesReferences 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UnitDTO <- R6::R6Class(
  'UnitDTO',
  public = list(
    `uri` = NULL,
    `label` = NULL,
    `comment` = NULL,
    `ontologiesReferences` = NULL,
    initialize = function(`uri`, `label`, `comment`, `ontologiesReferences`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
      if (!missing(`comment`)) {
        stopifnot(is.character(`comment`), length(`comment`) == 1)
        self$`comment` <- `comment`
      }
      if (!missing(`ontologiesReferences`)) {
        stopifnot(is.list(`ontologiesReferences`), length(`ontologiesReferences`) != 0)
        lapply(`ontologiesReferences`, function(x) stopifnot(R6::is.R6(x)))
        self$`ontologiesReferences` <- `ontologiesReferences`
      }
    },
    toJSON = function() {
      UnitDTOObject <- list()
      if (!is.null(self$`uri`)) {
        UnitDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        UnitDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`comment`)) {
        UnitDTOObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`ontologiesReferences`)) {
        UnitDTOObject[['ontologiesReferences']] <- lapply(self$`ontologiesReferences`, function(x) x$toJSON())
      }

      UnitDTOObject
    },
    fromJSON = function(UnitDTOJson) {
      UnitDTOObject <- jsonlite::fromJSON(UnitDTOJson)
      if (!is.null(UnitDTOObject$`uri`)) {
        self$`uri` <- UnitDTOObject$`uri`
      }
      if (!is.null(UnitDTOObject$`label`)) {
        self$`label` <- UnitDTOObject$`label`
      }
      if (!is.null(UnitDTOObject$`comment`)) {
        self$`comment` <- UnitDTOObject$`comment`
      }
      if (!is.null(UnitDTOObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(UnitDTOObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          ontologiesReferencesObject
        })
      }
    },
    fromJSONObject = function(UnitDTOObject) {
      if (!is.null(UnitDTOObject$`uri`)) {
        self$`uri` <- UnitDTOObject$`uri`
      }
      if (!is.null(UnitDTOObject$`label`)) {
        self$`label` <- UnitDTOObject$`label`
      }
      if (!is.null(UnitDTOObject$`comment`)) {
        self$`comment` <- UnitDTOObject$`comment`
      }
      if (!is.null(UnitDTOObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(UnitDTOObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          ontologiesReferencesObject
        })
      }
    },
    toJSONString = function() {
      ontologiesReferencesList = paste(lapply(self$`ontologiesReferences`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "label": %s,
           "comment": %s,
           "ontologiesReferences": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE, null = "null"),
        ontologiesReferencesList
      )
    },
    fromJSONString = function(UnitDTOJson) {
      UnitDTOObject <- jsonlite::fromJSON(UnitDTOJson)
      self$`uri` <- UnitDTOObject$`uri`
      self$`label` <- UnitDTOObject$`label`
      self$`comment` <- UnitDTOObject$`comment`
      self$`ontologiesReferences` <- lapply(UnitDTOObject$`ontologiesReferences`, function(x) OntologyReference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
