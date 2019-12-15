# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MethodDTO Class
#'
#' @field uri 
#' @field label 
#' @field comment 
#' @field ontologiesReferences 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MethodDTO <- R6::R6Class(
  'MethodDTO',
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
      MethodDTOObject <- list()
      if (!is.null(self$`uri`)) {
        MethodDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        MethodDTOObject[['label']] <- self$`label`
      }
      if (!is.null(self$`comment`)) {
        MethodDTOObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`ontologiesReferences`)) {
        MethodDTOObject[['ontologiesReferences']] <- lapply(self$`ontologiesReferences`, function(x) x$toJSON())
      }

      MethodDTOObject
    },
    fromJSON = function(MethodDTOJson) {
      MethodDTOObject <- jsonlite::fromJSON(MethodDTOJson)
      if (!is.null(MethodDTOObject$`uri`)) {
        self$`uri` <- MethodDTOObject$`uri`
      }
      if (!is.null(MethodDTOObject$`label`)) {
        self$`label` <- MethodDTOObject$`label`
      }
      if (!is.null(MethodDTOObject$`comment`)) {
        self$`comment` <- MethodDTOObject$`comment`
      }
      if (!is.null(MethodDTOObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(MethodDTOObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ontologiesReferencesObject
        })
      }
    },
    fromJSONObject = function(MethodDTOObject) {
      if (!is.null(MethodDTOObject$`uri`)) {
        self$`uri` <- MethodDTOObject$`uri`
      }
      if (!is.null(MethodDTOObject$`label`)) {
        self$`label` <- MethodDTOObject$`label`
      }
      if (!is.null(MethodDTOObject$`comment`)) {
        self$`comment` <- MethodDTOObject$`comment`
      }
      if (!is.null(MethodDTOObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(MethodDTOObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ontologiesReferencesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "label": %s,
           "comment": %s,
           "ontologiesReferences": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE),
        lapply(self$`ontologiesReferences`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(MethodDTOJson) {
      MethodDTOObject <- jsonlite::fromJSON(MethodDTOJson)
      self$`uri` <- MethodDTOObject$`uri`
      self$`label` <- MethodDTOObject$`label`
      self$`comment` <- MethodDTOObject$`comment`
      self$`ontologiesReferences` <- lapply(MethodDTOObject$`ontologiesReferences`, function(x) OntologyReference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
