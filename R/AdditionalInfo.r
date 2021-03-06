# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AdditionalInfo Class
#'
#' @field keywords 
#' @field projectsNames 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdditionalInfo <- R6::R6Class(
  'AdditionalInfo',
  public = list(
    `keywords` = NULL,
    `projectsNames` = NULL,
    initialize = function(`keywords`, `projectsNames`){
      if (!missing(`keywords`)) {
        stopifnot(is.character(`keywords`), length(`keywords`) == 1)
        self$`keywords` <- `keywords`
      }
      if (!missing(`projectsNames`)) {
        stopifnot(is.list(`projectsNames`), length(`projectsNames`) != 0)
        lapply(`projectsNames`, function(x) stopifnot(is.character(x)))
        self$`projectsNames` <- `projectsNames`
      }
    },
    toJSON = function() {
      AdditionalInfoObject <- list()
      if (!is.null(self$`keywords`)) {
        AdditionalInfoObject[['keywords']] <- self$`keywords`
      }
      if (!is.null(self$`projectsNames`)) {
        AdditionalInfoObject[['projectsNames']] <- self$`projectsNames`
      }

      AdditionalInfoObject
    },
    fromJSON = function(AdditionalInfoJson) {
      AdditionalInfoObject <- jsonlite::fromJSON(AdditionalInfoJson)
      if (!is.null(AdditionalInfoObject$`keywords`)) {
        self$`keywords` <- AdditionalInfoObject$`keywords`
      }
      if (!is.null(AdditionalInfoObject$`projectsNames`)) {
        self$`projectsNames` <- AdditionalInfoObject$`projectsNames`
      }
    },
    fromJSONObject = function(AdditionalInfoObject) {
      if (!is.null(AdditionalInfoObject$`keywords`)) {
        self$`keywords` <- AdditionalInfoObject$`keywords`
      }
      if (!is.null(AdditionalInfoObject$`projectsNames`)) {
        self$`projectsNames` <- AdditionalInfoObject$`projectsNames`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "keywords": %s,
           "projectsNames": [%s]
        }',
        jsonlite::toJSON(self$`keywords`,auto_unbox=TRUE, null = "null"),
        lapply(self$`projectsNames`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(AdditionalInfoJson) {
      AdditionalInfoObject <- jsonlite::fromJSON(AdditionalInfoJson)
      self$`keywords` <- AdditionalInfoObject$`keywords`
      self$`projectsNames` <- AdditionalInfoObject$`projectsNames`
    }
  )
)
