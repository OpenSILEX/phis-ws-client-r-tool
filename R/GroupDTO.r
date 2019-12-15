# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GroupDTO Class
#'
#' @field uri 
#' @field name 
#' @field level 
#' @field description 
#' @field usersEmails 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupDTO <- R6::R6Class(
  'GroupDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `level` = NULL,
    `description` = NULL,
    `usersEmails` = NULL,
    initialize = function(`uri`, `name`, `level`, `description`, `usersEmails`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
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
      GroupDTOObject <- list()
      if (!is.null(self$`uri`)) {
        GroupDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        GroupDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`level`)) {
        GroupDTOObject[['level']] <- self$`level`
      }
      if (!is.null(self$`description`)) {
        GroupDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`usersEmails`)) {
        GroupDTOObject[['usersEmails']] <- self$`usersEmails`
      }

      GroupDTOObject
    },
    fromJSON = function(GroupDTOJson) {
      GroupDTOObject <- jsonlite::fromJSON(GroupDTOJson)
      if (!is.null(GroupDTOObject$`uri`)) {
        self$`uri` <- GroupDTOObject$`uri`
      }
      if (!is.null(GroupDTOObject$`name`)) {
        self$`name` <- GroupDTOObject$`name`
      }
      if (!is.null(GroupDTOObject$`level`)) {
        self$`level` <- GroupDTOObject$`level`
      }
      if (!is.null(GroupDTOObject$`description`)) {
        self$`description` <- GroupDTOObject$`description`
      }
      if (!is.null(GroupDTOObject$`usersEmails`)) {
        self$`usersEmails` <- GroupDTOObject$`usersEmails`
      }
    },
    fromJSONObject = function(GroupDTOObject) {
      if (!is.null(GroupDTOObject$`uri`)) {
        self$`uri` <- GroupDTOObject$`uri`
      }
      if (!is.null(GroupDTOObject$`name`)) {
        self$`name` <- GroupDTOObject$`name`
      }
      if (!is.null(GroupDTOObject$`level`)) {
        self$`level` <- GroupDTOObject$`level`
      }
      if (!is.null(GroupDTOObject$`description`)) {
        self$`description` <- GroupDTOObject$`description`
      }
      if (!is.null(GroupDTOObject$`usersEmails`)) {
        self$`usersEmails` <- GroupDTOObject$`usersEmails`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "level": %s,
           "description": %s,
           "usersEmails": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`name`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`level`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`description`,auto_unbox=TRUE),
        lapply(self$`usersEmails`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(GroupDTOJson) {
      GroupDTOObject <- jsonlite::fromJSON(GroupDTOJson)
      self$`uri` <- GroupDTOObject$`uri`
      self$`name` <- GroupDTOObject$`name`
      self$`level` <- GroupDTOObject$`level`
      self$`description` <- GroupDTOObject$`description`
      self$`usersEmails` <- GroupDTOObject$`usersEmails`
    }
  )
)
