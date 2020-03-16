# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ContactDTO Class
#'
#' @field uri 
#' @field firstname 
#' @field lastname 
#' @field email 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactDTO <- R6::R6Class(
  'ContactDTO',
  public = list(
    `uri` = NULL,
    `firstname` = NULL,
    `lastname` = NULL,
    `email` = NULL,
    initialize = function(`uri`, `firstname`, `lastname`, `email`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`firstname`)) {
        stopifnot(is.character(`firstname`), length(`firstname`) == 1)
        self$`firstname` <- `firstname`
      }
      if (!missing(`lastname`)) {
        stopifnot(is.character(`lastname`), length(`lastname`) == 1)
        self$`lastname` <- `lastname`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
    },
    toJSON = function() {
      ContactDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ContactDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`firstname`)) {
        ContactDTOObject[['firstname']] <- self$`firstname`
      }
      if (!is.null(self$`lastname`)) {
        ContactDTOObject[['lastname']] <- self$`lastname`
      }
      if (!is.null(self$`email`)) {
        ContactDTOObject[['email']] <- self$`email`
      }

      ContactDTOObject
    },
    fromJSON = function(ContactDTOJson) {
      ContactDTOObject <- jsonlite::fromJSON(ContactDTOJson)
      if (!is.null(ContactDTOObject$`uri`)) {
        self$`uri` <- ContactDTOObject$`uri`
      }
      if (!is.null(ContactDTOObject$`firstname`)) {
        self$`firstname` <- ContactDTOObject$`firstname`
      }
      if (!is.null(ContactDTOObject$`lastname`)) {
        self$`lastname` <- ContactDTOObject$`lastname`
      }
      if (!is.null(ContactDTOObject$`email`)) {
        self$`email` <- ContactDTOObject$`email`
      }
    },
    fromJSONObject = function(ContactDTOObject) {
      if (!is.null(ContactDTOObject$`uri`)) {
        self$`uri` <- ContactDTOObject$`uri`
      }
      if (!is.null(ContactDTOObject$`firstname`)) {
        self$`firstname` <- ContactDTOObject$`firstname`
      }
      if (!is.null(ContactDTOObject$`lastname`)) {
        self$`lastname` <- ContactDTOObject$`lastname`
      }
      if (!is.null(ContactDTOObject$`email`)) {
        self$`email` <- ContactDTOObject$`email`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "firstname": %s,
           "lastname": %s,
           "email": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`firstname`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`lastname`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`email`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ContactDTOJson) {
      ContactDTOObject <- jsonlite::fromJSON(ContactDTOJson)
      self$`uri` <- ContactDTOObject$`uri`
      self$`firstname` <- ContactDTOObject$`firstname`
      self$`lastname` <- ContactDTOObject$`lastname`
      self$`email` <- ContactDTOObject$`email`
    }
  )
)
