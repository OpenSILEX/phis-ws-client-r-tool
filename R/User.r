# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' User Class
#'
#' @field email 
#' @field familyName 
#' @field phone 
#' @field affiliation 
#' @field uri 
#' @field orcid 
#' @field groups 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
User <- R6::R6Class(
  'User',
  public = list(
    `email` = NULL,
    `familyName` = NULL,
    `phone` = NULL,
    `affiliation` = NULL,
    `uri` = NULL,
    `orcid` = NULL,
    `groups` = NULL,
    initialize = function(`email`, `familyName`, `phone`, `affiliation`, `uri`, `orcid`, `groups`){
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`familyName`)) {
        stopifnot(is.character(`familyName`), length(`familyName`) == 1)
        self$`familyName` <- `familyName`
      }
      if (!missing(`phone`)) {
        stopifnot(is.character(`phone`), length(`phone`) == 1)
        self$`phone` <- `phone`
      }
      if (!missing(`affiliation`)) {
        stopifnot(is.character(`affiliation`), length(`affiliation`) == 1)
        self$`affiliation` <- `affiliation`
      }
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`orcid`)) {
        stopifnot(is.character(`orcid`), length(`orcid`) == 1)
        self$`orcid` <- `orcid`
      }
      if (!missing(`groups`)) {
        stopifnot(is.list(`groups`), length(`groups`) != 0)
        lapply(`groups`, function(x) stopifnot(R6::is.R6(x)))
        self$`groups` <- `groups`
      }
    },
    toJSON = function() {
      UserObject <- list()
      if (!is.null(self$`email`)) {
        UserObject[['email']] <- self$`email`
      }
      if (!is.null(self$`familyName`)) {
        UserObject[['familyName']] <- self$`familyName`
      }
      if (!is.null(self$`phone`)) {
        UserObject[['phone']] <- self$`phone`
      }
      if (!is.null(self$`affiliation`)) {
        UserObject[['affiliation']] <- self$`affiliation`
      }
      if (!is.null(self$`uri`)) {
        UserObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`orcid`)) {
        UserObject[['orcid']] <- self$`orcid`
      }
      if (!is.null(self$`groups`)) {
        UserObject[['groups']] <- lapply(self$`groups`, function(x) x$toJSON())
      }

      UserObject
    },
    fromJSON = function(UserJson) {
      UserObject <- jsonlite::fromJSON(UserJson)
      if (!is.null(UserObject$`email`)) {
        self$`email` <- UserObject$`email`
      }
      if (!is.null(UserObject$`familyName`)) {
        self$`familyName` <- UserObject$`familyName`
      }
      if (!is.null(UserObject$`phone`)) {
        self$`phone` <- UserObject$`phone`
      }
      if (!is.null(UserObject$`affiliation`)) {
        self$`affiliation` <- UserObject$`affiliation`
      }
      if (!is.null(UserObject$`uri`)) {
        self$`uri` <- UserObject$`uri`
      }
      if (!is.null(UserObject$`orcid`)) {
        self$`orcid` <- UserObject$`orcid`
      }
      if (!is.null(UserObject$`groups`)) {
        self$`groups` <- lapply(UserObject$`groups`, function(x) {
          groupsObject <- Group$new()
          groupsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          groupsObject
        })
      }
    },
    fromJSONObject = function(UserObject) {
      if (!is.null(UserObject$`email`)) {
        self$`email` <- UserObject$`email`
      }
      if (!is.null(UserObject$`familyName`)) {
        self$`familyName` <- UserObject$`familyName`
      }
      if (!is.null(UserObject$`phone`)) {
        self$`phone` <- UserObject$`phone`
      }
      if (!is.null(UserObject$`affiliation`)) {
        self$`affiliation` <- UserObject$`affiliation`
      }
      if (!is.null(UserObject$`uri`)) {
        self$`uri` <- UserObject$`uri`
      }
      if (!is.null(UserObject$`orcid`)) {
        self$`orcid` <- UserObject$`orcid`
      }
      if (!is.null(UserObject$`groups`)) {
        self$`groups` <- lapply(UserObject$`groups`, function(x) {
          groupsObject <- Group$new()
          groupsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          groupsObject
        })
      }
    },
    toJSONString = function() {
      groupsList = paste(lapply(self$`groups`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "email": %s,
           "familyName": %s,
           "phone": %s,
           "affiliation": %s,
           "uri": %s,
           "orcid": %s,
           "groups": [%s]
        }',
        jsonlite::toJSON(self$`email`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`familyName`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`phone`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`affiliation`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`orcid`,auto_unbox=TRUE, null = "null"),
        groupsList
      )
    },
    fromJSONString = function(UserJson) {
      UserObject <- jsonlite::fromJSON(UserJson)
      self$`email` <- UserObject$`email`
      self$`familyName` <- UserObject$`familyName`
      self$`phone` <- UserObject$`phone`
      self$`affiliation` <- UserObject$`affiliation`
      self$`uri` <- UserObject$`uri`
      self$`orcid` <- UserObject$`orcid`
      self$`groups` <- lapply(UserObject$`groups`, function(x) Group$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
