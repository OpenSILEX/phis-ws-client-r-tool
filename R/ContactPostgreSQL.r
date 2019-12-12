# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ContactPostgreSQL Class
#'
#' @field email 
#' @field firstName 
#' @field familyName 
#' @field type 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactPostgreSQL <- R6::R6Class(
  'ContactPostgreSQL',
  public = list(
    `email` = NULL,
    `firstName` = NULL,
    `familyName` = NULL,
    `type` = NULL,
    initialize = function(`email`, `firstName`, `familyName`, `type`){
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`firstName`)) {
        stopifnot(is.character(`firstName`), length(`firstName`) == 1)
        self$`firstName` <- `firstName`
      }
      if (!missing(`familyName`)) {
        stopifnot(is.character(`familyName`), length(`familyName`) == 1)
        self$`familyName` <- `familyName`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
    },
    toJSON = function() {
      ContactPostgreSQLObject <- list()
      if (!is.null(self$`email`)) {
        ContactPostgreSQLObject[['email']] <- self$`email`
      }
      if (!is.null(self$`firstName`)) {
        ContactPostgreSQLObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`familyName`)) {
        ContactPostgreSQLObject[['familyName']] <- self$`familyName`
      }
      if (!is.null(self$`type`)) {
        ContactPostgreSQLObject[['type']] <- self$`type`
      }

      ContactPostgreSQLObject
    },
    fromJSON = function(ContactPostgreSQLJson) {
      ContactPostgreSQLObject <- jsonlite::fromJSON(ContactPostgreSQLJson)
      if (!is.null(ContactPostgreSQLObject$`email`)) {
        self$`email` <- ContactPostgreSQLObject$`email`
      }
      if (!is.null(ContactPostgreSQLObject$`firstName`)) {
        self$`firstName` <- ContactPostgreSQLObject$`firstName`
      }
      if (!is.null(ContactPostgreSQLObject$`familyName`)) {
        self$`familyName` <- ContactPostgreSQLObject$`familyName`
      }
      if (!is.null(ContactPostgreSQLObject$`type`)) {
        self$`type` <- ContactPostgreSQLObject$`type`
      }
    },
    fromJSONObject = function(ContactPostgreSQLObject) {
      if (!is.null(ContactPostgreSQLObject$`email`)) {
        self$`email` <- ContactPostgreSQLObject$`email`
      }
      if (!is.null(ContactPostgreSQLObject$`firstName`)) {
        self$`firstName` <- ContactPostgreSQLObject$`firstName`
      }
      if (!is.null(ContactPostgreSQLObject$`familyName`)) {
        self$`familyName` <- ContactPostgreSQLObject$`familyName`
      }
      if (!is.null(ContactPostgreSQLObject$`type`)) {
        self$`type` <- ContactPostgreSQLObject$`type`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "email": %s,
           "firstName": %s,
           "familyName": %s,
           "type": %s
        }',
        jsonlite::toJSON(self$`email`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`firstName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`familyName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`type`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(ContactPostgreSQLJson) {
      ContactPostgreSQLObject <- jsonlite::fromJSON(ContactPostgreSQLJson)
      self$`email` <- ContactPostgreSQLObject$`email`
      self$`firstName` <- ContactPostgreSQLObject$`firstName`
      self$`familyName` <- ContactPostgreSQLObject$`familyName`
      self$`type` <- ContactPostgreSQLObject$`type`
    }
  )
)