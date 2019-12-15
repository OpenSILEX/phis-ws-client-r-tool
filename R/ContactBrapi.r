# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ContactBrapi Class
#'
#' @field contactDbId 
#' @field name 
#' @field instituteName 
#' @field email 
#' @field type 
#' @field orcid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactBrapi <- R6::R6Class(
  'ContactBrapi',
  public = list(
    `contactDbId` = NULL,
    `name` = NULL,
    `instituteName` = NULL,
    `email` = NULL,
    `type` = NULL,
    `orcid` = NULL,
    initialize = function(`contactDbId`, `name`, `instituteName`, `email`, `type`, `orcid`){
      if (!missing(`contactDbId`)) {
        stopifnot(is.character(`contactDbId`), length(`contactDbId`) == 1)
        self$`contactDbId` <- `contactDbId`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`instituteName`)) {
        stopifnot(is.character(`instituteName`), length(`instituteName`) == 1)
        self$`instituteName` <- `instituteName`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`orcid`)) {
        stopifnot(is.character(`orcid`), length(`orcid`) == 1)
        self$`orcid` <- `orcid`
      }
    },
    toJSON = function() {
      ContactBrapiObject <- list()
      if (!is.null(self$`contactDbId`)) {
        ContactBrapiObject[['contactDbId']] <- self$`contactDbId`
      }
      if (!is.null(self$`name`)) {
        ContactBrapiObject[['name']] <- self$`name`
      }
      if (!is.null(self$`instituteName`)) {
        ContactBrapiObject[['instituteName']] <- self$`instituteName`
      }
      if (!is.null(self$`email`)) {
        ContactBrapiObject[['email']] <- self$`email`
      }
      if (!is.null(self$`type`)) {
        ContactBrapiObject[['type']] <- self$`type`
      }
      if (!is.null(self$`orcid`)) {
        ContactBrapiObject[['orcid']] <- self$`orcid`
      }

      ContactBrapiObject
    },
    fromJSON = function(ContactBrapiJson) {
      ContactBrapiObject <- jsonlite::fromJSON(ContactBrapiJson)
      if (!is.null(ContactBrapiObject$`contactDbId`)) {
        self$`contactDbId` <- ContactBrapiObject$`contactDbId`
      }
      if (!is.null(ContactBrapiObject$`name`)) {
        self$`name` <- ContactBrapiObject$`name`
      }
      if (!is.null(ContactBrapiObject$`instituteName`)) {
        self$`instituteName` <- ContactBrapiObject$`instituteName`
      }
      if (!is.null(ContactBrapiObject$`email`)) {
        self$`email` <- ContactBrapiObject$`email`
      }
      if (!is.null(ContactBrapiObject$`type`)) {
        self$`type` <- ContactBrapiObject$`type`
      }
      if (!is.null(ContactBrapiObject$`orcid`)) {
        self$`orcid` <- ContactBrapiObject$`orcid`
      }
    },
    fromJSONObject = function(ContactBrapiObject) {
      if (!is.null(ContactBrapiObject$`contactDbId`)) {
        self$`contactDbId` <- ContactBrapiObject$`contactDbId`
      }
      if (!is.null(ContactBrapiObject$`name`)) {
        self$`name` <- ContactBrapiObject$`name`
      }
      if (!is.null(ContactBrapiObject$`instituteName`)) {
        self$`instituteName` <- ContactBrapiObject$`instituteName`
      }
      if (!is.null(ContactBrapiObject$`email`)) {
        self$`email` <- ContactBrapiObject$`email`
      }
      if (!is.null(ContactBrapiObject$`type`)) {
        self$`type` <- ContactBrapiObject$`type`
      }
      if (!is.null(ContactBrapiObject$`orcid`)) {
        self$`orcid` <- ContactBrapiObject$`orcid`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "contactDbId": %s,
           "name": %s,
           "instituteName": %s,
           "email": %s,
           "type": %s,
           "orcid": %s
        }',
        jsonlite::toJSON(self$`contactDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`name`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`instituteName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`email`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`type`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`orcid`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(ContactBrapiJson) {
      ContactBrapiObject <- jsonlite::fromJSON(ContactBrapiJson)
      self$`contactDbId` <- ContactBrapiObject$`contactDbId`
      self$`name` <- ContactBrapiObject$`name`
      self$`instituteName` <- ContactBrapiObject$`instituteName`
      self$`email` <- ContactBrapiObject$`email`
      self$`type` <- ContactBrapiObject$`type`
      self$`orcid` <- ContactBrapiObject$`orcid`
    }
  )
)
