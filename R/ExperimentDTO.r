# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ExperimentDTO Class
#'
#' @field uri 
#' @field startDate 
#' @field endDate 
#' @field field 
#' @field campaign 
#' @field place 
#' @field alias 
#' @field comment 
#' @field keywords 
#' @field objective 
#' @field cropSpecies 
#' @field projectsUris 
#' @field groupsUris 
#' @field contacts 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExperimentDTO <- R6::R6Class(
  'ExperimentDTO',
  public = list(
    `uri` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `field` = NULL,
    `campaign` = NULL,
    `place` = NULL,
    `alias` = NULL,
    `comment` = NULL,
    `keywords` = NULL,
    `objective` = NULL,
    `cropSpecies` = NULL,
    `projectsUris` = NULL,
    `groupsUris` = NULL,
    `contacts` = NULL,
    initialize = function(`uri`, `startDate`, `endDate`, `field`, `campaign`, `place`, `alias`, `comment`, `keywords`, `objective`, `cropSpecies`, `projectsUris`, `groupsUris`, `contacts`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`startDate`)) {
        stopifnot(is.character(`startDate`), length(`startDate`) == 1)
        self$`startDate` <- `startDate`
      }
      if (!missing(`endDate`)) {
        stopifnot(is.character(`endDate`), length(`endDate`) == 1)
        self$`endDate` <- `endDate`
      }
      if (!missing(`field`)) {
        stopifnot(is.character(`field`), length(`field`) == 1)
        self$`field` <- `field`
      }
      if (!missing(`campaign`)) {
        stopifnot(is.character(`campaign`), length(`campaign`) == 1)
        self$`campaign` <- `campaign`
      }
      if (!missing(`place`)) {
        stopifnot(is.character(`place`), length(`place`) == 1)
        self$`place` <- `place`
      }
      if (!missing(`alias`)) {
        stopifnot(is.character(`alias`), length(`alias`) == 1)
        self$`alias` <- `alias`
      }
      if (!missing(`comment`)) {
        stopifnot(is.character(`comment`), length(`comment`) == 1)
        self$`comment` <- `comment`
      }
      if (!missing(`keywords`)) {
        stopifnot(is.character(`keywords`), length(`keywords`) == 1)
        self$`keywords` <- `keywords`
      }
      if (!missing(`objective`)) {
        stopifnot(is.character(`objective`), length(`objective`) == 1)
        self$`objective` <- `objective`
      }
      if (!missing(`cropSpecies`)) {
        stopifnot(is.character(`cropSpecies`), length(`cropSpecies`) == 1)
        self$`cropSpecies` <- `cropSpecies`
      }
      if (!missing(`projectsUris`)) {
        stopifnot(is.list(`projectsUris`), length(`projectsUris`) != 0)
        lapply(`projectsUris`, function(x) stopifnot(is.character(x)))
        self$`projectsUris` <- `projectsUris`
      }
      if (!missing(`groupsUris`)) {
        stopifnot(is.list(`groupsUris`), length(`groupsUris`) != 0)
        lapply(`groupsUris`, function(x) stopifnot(is.character(x)))
        self$`groupsUris` <- `groupsUris`
      }
      if (!missing(`contacts`)) {
        stopifnot(is.list(`contacts`), length(`contacts`) != 0)
        lapply(`contacts`, function(x) stopifnot(R6::is.R6(x)))
        self$`contacts` <- `contacts`
      }
    },
    toJSON = function() {
      ExperimentDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ExperimentDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`startDate`)) {
        ExperimentDTOObject[['startDate']] <- self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        ExperimentDTOObject[['endDate']] <- self$`endDate`
      }
      if (!is.null(self$`field`)) {
        ExperimentDTOObject[['field']] <- self$`field`
      }
      if (!is.null(self$`campaign`)) {
        ExperimentDTOObject[['campaign']] <- self$`campaign`
      }
      if (!is.null(self$`place`)) {
        ExperimentDTOObject[['place']] <- self$`place`
      }
      if (!is.null(self$`alias`)) {
        ExperimentDTOObject[['alias']] <- self$`alias`
      }
      if (!is.null(self$`comment`)) {
        ExperimentDTOObject[['comment']] <- self$`comment`
      }
      if (!is.null(self$`keywords`)) {
        ExperimentDTOObject[['keywords']] <- self$`keywords`
      }
      if (!is.null(self$`objective`)) {
        ExperimentDTOObject[['objective']] <- self$`objective`
      }
      if (!is.null(self$`cropSpecies`)) {
        ExperimentDTOObject[['cropSpecies']] <- self$`cropSpecies`
      }
      if (!is.null(self$`projectsUris`)) {
        ExperimentDTOObject[['projectsUris']] <- self$`projectsUris`
      }
      if (!is.null(self$`groupsUris`)) {
        ExperimentDTOObject[['groupsUris']] <- self$`groupsUris`
      }
      if (!is.null(self$`contacts`)) {
        ExperimentDTOObject[['contacts']] <- lapply(self$`contacts`, function(x) x$toJSON())
      }

      ExperimentDTOObject
    },
    fromJSON = function(ExperimentDTOJson) {
      ExperimentDTOObject <- jsonlite::fromJSON(ExperimentDTOJson)
      if (!is.null(ExperimentDTOObject$`uri`)) {
        self$`uri` <- ExperimentDTOObject$`uri`
      }
      if (!is.null(ExperimentDTOObject$`startDate`)) {
        self$`startDate` <- ExperimentDTOObject$`startDate`
      }
      if (!is.null(ExperimentDTOObject$`endDate`)) {
        self$`endDate` <- ExperimentDTOObject$`endDate`
      }
      if (!is.null(ExperimentDTOObject$`field`)) {
        self$`field` <- ExperimentDTOObject$`field`
      }
      if (!is.null(ExperimentDTOObject$`campaign`)) {
        self$`campaign` <- ExperimentDTOObject$`campaign`
      }
      if (!is.null(ExperimentDTOObject$`place`)) {
        self$`place` <- ExperimentDTOObject$`place`
      }
      if (!is.null(ExperimentDTOObject$`alias`)) {
        self$`alias` <- ExperimentDTOObject$`alias`
      }
      if (!is.null(ExperimentDTOObject$`comment`)) {
        self$`comment` <- ExperimentDTOObject$`comment`
      }
      if (!is.null(ExperimentDTOObject$`keywords`)) {
        self$`keywords` <- ExperimentDTOObject$`keywords`
      }
      if (!is.null(ExperimentDTOObject$`objective`)) {
        self$`objective` <- ExperimentDTOObject$`objective`
      }
      if (!is.null(ExperimentDTOObject$`cropSpecies`)) {
        self$`cropSpecies` <- ExperimentDTOObject$`cropSpecies`
      }
      if (!is.null(ExperimentDTOObject$`projectsUris`)) {
        self$`projectsUris` <- ExperimentDTOObject$`projectsUris`
      }
      if (!is.null(ExperimentDTOObject$`groupsUris`)) {
        self$`groupsUris` <- ExperimentDTOObject$`groupsUris`
      }
      if (!is.null(ExperimentDTOObject$`contacts`)) {
        self$`contacts` <- lapply(ExperimentDTOObject$`contacts`, function(x) {
          contactsObject <- ContactPostgreSQL$new()
          contactsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          contactsObject
        })
      }
    },
    fromJSONObject = function(ExperimentDTOObject) {
      if (!is.null(ExperimentDTOObject$`uri`)) {
        self$`uri` <- ExperimentDTOObject$`uri`
      }
      if (!is.null(ExperimentDTOObject$`startDate`)) {
        self$`startDate` <- ExperimentDTOObject$`startDate`
      }
      if (!is.null(ExperimentDTOObject$`endDate`)) {
        self$`endDate` <- ExperimentDTOObject$`endDate`
      }
      if (!is.null(ExperimentDTOObject$`field`)) {
        self$`field` <- ExperimentDTOObject$`field`
      }
      if (!is.null(ExperimentDTOObject$`campaign`)) {
        self$`campaign` <- ExperimentDTOObject$`campaign`
      }
      if (!is.null(ExperimentDTOObject$`place`)) {
        self$`place` <- ExperimentDTOObject$`place`
      }
      if (!is.null(ExperimentDTOObject$`alias`)) {
        self$`alias` <- ExperimentDTOObject$`alias`
      }
      if (!is.null(ExperimentDTOObject$`comment`)) {
        self$`comment` <- ExperimentDTOObject$`comment`
      }
      if (!is.null(ExperimentDTOObject$`keywords`)) {
        self$`keywords` <- ExperimentDTOObject$`keywords`
      }
      if (!is.null(ExperimentDTOObject$`objective`)) {
        self$`objective` <- ExperimentDTOObject$`objective`
      }
      if (!is.null(ExperimentDTOObject$`cropSpecies`)) {
        self$`cropSpecies` <- ExperimentDTOObject$`cropSpecies`
      }
      if (!is.null(ExperimentDTOObject$`projectsUris`)) {
        self$`projectsUris` <- ExperimentDTOObject$`projectsUris`
      }
      if (!is.null(ExperimentDTOObject$`groupsUris`)) {
        self$`groupsUris` <- ExperimentDTOObject$`groupsUris`
      }
      if (!is.null(ExperimentDTOObject$`contacts`)) {
        self$`contacts` <- lapply(ExperimentDTOObject$`contacts`, function(x) {
          contactsObject <- ContactPostgreSQL$new()
          contactsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          contactsObject
        })
      }
    },
    toJSONString = function() {
      contactsList = paste(lapply(self$`contacts`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "startDate": %s,
           "endDate": %s,
           "field": %s,
           "campaign": %s,
           "place": %s,
           "alias": %s,
           "comment": %s,
           "keywords": %s,
           "objective": %s,
           "cropSpecies": %s,
           "projectsUris": [%s],
           "groupsUris": [%s],
           "contacts": [%s]
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`startDate`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`endDate`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`field`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`campaign`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`place`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`alias`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`comment`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`keywords`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`objective`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`cropSpecies`,auto_unbox=TRUE, null = "null"),
        lapply(self$`projectsUris`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`groupsUris`, function(x) paste(paste0('"', x, '"'), sep=",")),
        contactsList
      )
    },
    fromJSONString = function(ExperimentDTOJson) {
      ExperimentDTOObject <- jsonlite::fromJSON(ExperimentDTOJson)
      self$`uri` <- ExperimentDTOObject$`uri`
      self$`startDate` <- ExperimentDTOObject$`startDate`
      self$`endDate` <- ExperimentDTOObject$`endDate`
      self$`field` <- ExperimentDTOObject$`field`
      self$`campaign` <- ExperimentDTOObject$`campaign`
      self$`place` <- ExperimentDTOObject$`place`
      self$`alias` <- ExperimentDTOObject$`alias`
      self$`comment` <- ExperimentDTOObject$`comment`
      self$`keywords` <- ExperimentDTOObject$`keywords`
      self$`objective` <- ExperimentDTOObject$`objective`
      self$`cropSpecies` <- ExperimentDTOObject$`cropSpecies`
      self$`projectsUris` <- ExperimentDTOObject$`projectsUris`
      self$`groupsUris` <- ExperimentDTOObject$`groupsUris`
      self$`contacts` <- lapply(ExperimentDTOObject$`contacts`, function(x) ContactPostgreSQL$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
