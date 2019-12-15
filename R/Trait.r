# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Trait Class
#'
#' @field uri 
#' @field label 
#' @field comment 
#' @field ontologiesReferences 
#' @field properties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Trait <- R6::R6Class(
  'Trait',
  public = list(
    `uri` = NULL,
    `label` = NULL,
    `comment` = NULL,
    `ontologiesReferences` = NULL,
    `properties` = NULL,
    initialize = function(`uri`, `label`, `comment`, `ontologiesReferences`, `properties`){
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
      if (!missing(`properties`)) {
        stopifnot(is.list(`properties`), length(`properties`) != 0)
        lapply(`properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`properties` <- `properties`
      }
    },
    toJSON = function() {
      TraitObject <- list()
      if (!is.null(self$`uri`)) {
        TraitObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        TraitObject[['label']] <- self$`label`
      }
      if (!is.null(self$`comment`)) {
        TraitObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`ontologiesReferences`)) {
        TraitObject[['ontologiesReferences']] <- lapply(self$`ontologiesReferences`, function(x) x$toJSON())
      }
      if (!is.null(self$`properties`)) {
        TraitObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }

      TraitObject
    },
    fromJSON = function(TraitJson) {
      TraitObject <- jsonlite::fromJSON(TraitJson)
      if (!is.null(TraitObject$`uri`)) {
        self$`uri` <- TraitObject$`uri`
      }
      if (!is.null(TraitObject$`label`)) {
        self$`label` <- TraitObject$`label`
      }
      if (!is.null(TraitObject$`comment`)) {
        self$`comment` <- TraitObject$`comment`
      }
      if (!is.null(TraitObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(TraitObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ontologiesReferencesObject
        })
      }
      if (!is.null(TraitObject$`properties`)) {
        self$`properties` <- lapply(TraitObject$`properties`, function(x) {
          propertiesObject <- Property$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          propertiesObject
        })
      }
    },
    fromJSONObject = function(TraitObject) {
      if (!is.null(TraitObject$`uri`)) {
        self$`uri` <- TraitObject$`uri`
      }
      if (!is.null(TraitObject$`label`)) {
        self$`label` <- TraitObject$`label`
      }
      if (!is.null(TraitObject$`comment`)) {
        self$`comment` <- TraitObject$`comment`
      }
      if (!is.null(TraitObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(TraitObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          ontologiesReferencesObject
        })
      }
      if (!is.null(TraitObject$`properties`)) {
        self$`properties` <- lapply(TraitObject$`properties`, function(x) {
          propertiesObject <- Property$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          propertiesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "label": %s,
           "comment": %s,
           "ontologiesReferences": [%s],
           "properties": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE),
        lapply(self$`ontologiesReferences`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`properties`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(TraitJson) {
      TraitObject <- jsonlite::fromJSON(TraitJson)
      self$`uri` <- TraitObject$`uri`
      self$`label` <- TraitObject$`label`
      self$`comment` <- TraitObject$`comment`
      self$`ontologiesReferences` <- lapply(TraitObject$`ontologiesReferences`, function(x) OntologyReference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`properties` <- lapply(TraitObject$`properties`, function(x) Property$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
