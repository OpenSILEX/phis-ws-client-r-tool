# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Method Class
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
Method <- R6::R6Class(
  'Method',
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
      MethodObject <- list()
      if (!is.null(self$`uri`)) {
        MethodObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        MethodObject[['label']] <- self$`label`
      }
      if (!is.null(self$`comment`)) {
        MethodObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`ontologiesReferences`)) {
        MethodObject[['ontologiesReferences']] <- lapply(self$`ontologiesReferences`, function(x) x$toJSON())
      }
      if (!is.null(self$`properties`)) {
        MethodObject[['properties']] <- lapply(self$`properties`, function(x) x$toJSON())
      }

      MethodObject
    },
    fromJSON = function(MethodJson) {
      MethodObject <- jsonlite::fromJSON(MethodJson)
      if (!is.null(MethodObject$`uri`)) {
        self$`uri` <- MethodObject$`uri`
      }
      if (!is.null(MethodObject$`label`)) {
        self$`label` <- MethodObject$`label`
      }
      if (!is.null(MethodObject$`comment`)) {
        self$`comment` <- MethodObject$`comment`
      }
      if (!is.null(MethodObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(MethodObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          ontologiesReferencesObject
        })
      }
      if (!is.null(MethodObject$`properties`)) {
        self$`properties` <- lapply(MethodObject$`properties`, function(x) {
          propertiesObject <- Property$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
    },
    fromJSONObject = function(MethodObject) {
      if (!is.null(MethodObject$`uri`)) {
        self$`uri` <- MethodObject$`uri`
      }
      if (!is.null(MethodObject$`label`)) {
        self$`label` <- MethodObject$`label`
      }
      if (!is.null(MethodObject$`comment`)) {
        self$`comment` <- MethodObject$`comment`
      }
      if (!is.null(MethodObject$`ontologiesReferences`)) {
        self$`ontologiesReferences` <- lapply(MethodObject$`ontologiesReferences`, function(x) {
          ontologiesReferencesObject <- OntologyReference$new()
          ontologiesReferencesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          ontologiesReferencesObject
        })
      }
      if (!is.null(MethodObject$`properties`)) {
        self$`properties` <- lapply(MethodObject$`properties`, function(x) {
          propertiesObject <- Property$new()
          propertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          propertiesObject
        })
      }
    },
    toJSONString = function() {
      ontologiesReferencesList = paste(lapply(self$`ontologiesReferences`, function(x) x$toJSONString()),collapse = ",")
      propertiesList = paste(lapply(self$`properties`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "label": %s,
           "comment": %s,
           "ontologiesReferences": [%s],
           "properties": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE, null = "null"),
        ontologiesReferencesList,
        propertiesList
      )
    },
    fromJSONString = function(MethodJson) {
      MethodObject <- jsonlite::fromJSON(MethodJson)
      self$`uri` <- MethodObject$`uri`
      self$`label` <- MethodObject$`label`
      self$`comment` <- MethodObject$`comment`
      self$`ontologiesReferences` <- lapply(MethodObject$`ontologiesReferences`, function(x) OntologyReference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`properties` <- lapply(MethodObject$`properties`, function(x) Property$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
