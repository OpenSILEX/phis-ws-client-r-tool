# openSilexSandBoxAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GroupPostDTO Class
#'
#' @field name 
#' @field level 
#' @field description 
#' @field usersEmails 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupPostDTO <- R6::R6Class(
  'GroupPostDTO',
  public = list(
    `name` = NULL,
    `level` = NULL,
    `description` = NULL,
    `usersEmails` = NULL,
    initialize = function(`name`, `level`, `description`, `usersEmails`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`level`)) {
        stopifnot(is.character(`level`), length(`level`) == 1)
        self$`level` <- `level`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`usersEmails`)) {
        stopifnot(is.list(`usersEmails`), length(`usersEmails`) != 0)
        lapply(`usersEmails`, function(x) stopifnot(is.character(x)))
        self$`usersEmails` <- `usersEmails`
      }
    },
    toJSON = function() {
      GroupPostDTOObject <- list()
      if (!is.null(self$`name`)) {
        GroupPostDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`level`)) {
        GroupPostDTOObject[['level']] <- self$`level`
      }
      if (!is.null(self$`description`)) {
        GroupPostDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`usersEmails`)) {
        GroupPostDTOObject[['usersEmails']] <- self$`usersEmails`
      }

      GroupPostDTOObject
    },
    fromJSON = function(GroupPostDTOJson) {
      GroupPostDTOObject <- jsonlite::fromJSON(GroupPostDTOJson)
      if (!is.null(GroupPostDTOObject$`name`)) {
        self$`name` <- GroupPostDTOObject$`name`
      }
      if (!is.null(GroupPostDTOObject$`level`)) {
        self$`level` <- GroupPostDTOObject$`level`
      }
      if (!is.null(GroupPostDTOObject$`description`)) {
        self$`description` <- GroupPostDTOObject$`description`
      }
      if (!is.null(GroupPostDTOObject$`usersEmails`)) {
        self$`usersEmails` <- GroupPostDTOObject$`usersEmails`
      }
    },
    fromJSONObject = function(GroupPostDTOObject) {
      if (!is.null(GroupPostDTOObject$`name`)) {
        self$`name` <- GroupPostDTOObject$`name`
      }
      if (!is.null(GroupPostDTOObject$`level`)) {
        self$`level` <- GroupPostDTOObject$`level`
      }
      if (!is.null(GroupPostDTOObject$`description`)) {
        self$`description` <- GroupPostDTOObject$`description`
      }
      if (!is.null(GroupPostDTOObject$`usersEmails`)) {
        self$`usersEmails` <- GroupPostDTOObject$`usersEmails`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "level": %s,
           "description": %s,
           "usersEmails": [%s]
        }',
        jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`level`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null"),
        lapply(self$`usersEmails`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(GroupPostDTOJson) {
      GroupPostDTOObject <- jsonlite::fromJSON(GroupPostDTOJson)
      self$`name` <- GroupPostDTOObject$`name`
      self$`level` <- GroupPostDTOObject$`level`
      self$`description` <- GroupPostDTOObject$`description`
      self$`usersEmails` <- GroupPostDTOObject$`usersEmails`
    }
  )
)
