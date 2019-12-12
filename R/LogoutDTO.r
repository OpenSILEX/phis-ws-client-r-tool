# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LogoutDTO Class
#'
#' @field access_token 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LogoutDTO <- R6::R6Class(
  'LogoutDTO',
  public = list(
    `access_token` = NULL,
    initialize = function(`access_token`){
      if (!missing(`access_token`)) {
        stopifnot(is.character(`access_token`), length(`access_token`) == 1)
        self$`access_token` <- `access_token`
      }
    },
    toJSON = function() {
      LogoutDTOObject <- list()
      if (!is.null(self$`access_token`)) {
        LogoutDTOObject[['access_token']] <- self$`access_token`
      }

      LogoutDTOObject
    },
    fromJSON = function(LogoutDTOJson) {
      LogoutDTOObject <- jsonlite::fromJSON(LogoutDTOJson)
      if (!is.null(LogoutDTOObject$`access_token`)) {
        self$`access_token` <- LogoutDTOObject$`access_token`
      }
    },
    fromJSONObject = function(LogoutDTOObject) {
      if (!is.null(LogoutDTOObject$`access_token`)) {
        self$`access_token` <- LogoutDTOObject$`access_token`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "access_token": %s
        }',
        jsonlite::toJSON(self$`access_token`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(LogoutDTOJson) {
      LogoutDTOObject <- jsonlite::fromJSON(LogoutDTOJson)
      self$`access_token` <- LogoutDTOObject$`access_token`
    }
  )
)
