# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VariableDTO Class
#'
#' @field uri 
#' @field label 
#' @field comment 
#' @field ontologiesReferences 
#' @field trait 
#' @field method 
#' @field unit 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariableDTO <- R6::R6Class(
  'VariableDTO',
  public = list(
    `uri` = NULL,
    `label` = NULL,
    `comment` = NULL,
    `ontologiesReferences` = NULL,
    `trait` = NULL,
    `method` = NULL,
    `unit` = NULL,
    initialize = function(`uri`, `label`, `comment`, `ontologiesReferences`, `trait`, `method`, `unit`){
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
      if (!missing(`trait`)) {
        stopifnot(is.character(`trait`), length(`trait`) == 1)
        self$`trait` <- `trait`
      }
      if (!missing(`method`)) {
        stopifnot(is.character(`method`), length(`method`) == 1)
        self$`method` <- `method`
      }
      if (!missing(`unit`)) {
        stopifnot(is.character(`unit`), length(`unit`) == 1)
        self$`unit` <- `unit`
      }
    },
    toJSON = function() {
      VariableDTOObject <- list()
      if (!is.null(self$`uri`)) {
        VariableDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        VariableDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`comment`)) {
        VariableDTOObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`ontologiesReferences`)) {
        VariableDTOObject[['ontologiesReferences']] <- lapply(self$`ontologiesReferences`, function(x) x$toJSON())
      }
      if (!is.null(self$`trait`)) {
        VariableDTOObject[['trait']] <- self$`trait`
      }
      if (!is.null(self$`method`)) {
        VariableDTOObject[['method']] <- self$`method`
      }
      if (!is.null(self$`unit`)) {
        VariableDTOObject[['unit']] <- self$`unit`
      }

      VariableDTOObject
    },
    fromJSON = function(VariableDTOJson) {
      VariableDTOObject <- jsonlite::fromJSON(VariableDTOJson)
      if (!is.null(VariableDTOObject$`uri`)) {
        self$`uri` <- VariableDTOObject$`uri`
      }
      if (!is.null(VariableDTOObject$`label`)) {
        self$`label` <- VariableDTOObject$`label`
      }
      if (!is.null(VariableDTOObject$`comment`)) {
        self$`comment` <- VariableDTOObject$`comment`
      }
      if (!is.null(VariableDTOObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(VariableDTOObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          ontologiesReferencesObject
        })
      }
      if (!is.null(VariableDTOObject$`trait`)) {
        self$`trait` <- VariableDTOObject$`trait`
      }
      if (!is.null(VariableDTOObject$`method`)) {
        self$`method` <- VariableDTOObject$`method`
      }
      if (!is.null(VariableDTOObject$`unit`)) {
        self$`unit` <- VariableDTOObject$`unit`
      }
    },
    fromJSONObject = function(VariableDTOObject) {
      if (!is.null(VariableDTOObject$`uri`)) {
        self$`uri` <- VariableDTOObject$`uri`
      }
      if (!is.null(VariableDTOObject$`label`)) {
        self$`label` <- VariableDTOObject$`label`
      }
      if (!is.null(VariableDTOObject$`comment`)) {
        self$`comment` <- VariableDTOObject$`comment`
      }
      if (!is.null(VariableDTOObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(VariableDTOObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          ontologiesReferencesObject
        })
      }
      if (!is.null(VariableDTOObject$`trait`)) {
        self$`trait` <- VariableDTOObject$`trait`
      }
      if (!is.null(VariableDTOObject$`method`)) {
        self$`method` <- VariableDTOObject$`method`
      }
      if (!is.null(VariableDTOObject$`unit`)) {
        self$`unit` <- VariableDTOObject$`unit`
      }
    },
    toJSONString = function() {
      ontologiesReferencesList = paste(lapply(self$`ontologiesReferences`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "label": %s,
           "comment": %s,
           "ontologiesReferences": [%s],
           "trait": %s,
           "method": %s,
           "unit": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE, null = "null"),
        ontologiesReferencesList,
        jsonlite::toJSON(self$`trait`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`method`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`unit`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(VariableDTOJson) {
      VariableDTOObject <- jsonlite::fromJSON(VariableDTOJson)
      self$`uri` <- VariableDTOObject$`uri`
      self$`label` <- VariableDTOObject$`label`
      self$`comment` <- VariableDTOObject$`comment`
      self$`ontologiesReferences` <- lapply(VariableDTOObject$`ontologiesReferences`, function(x) OntologyReference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`trait` <- VariableDTOObject$`trait`
      self$`method` <- VariableDTOObject$`method`
      self$`unit` <- VariableDTOObject$`unit`
    }
  )
)
