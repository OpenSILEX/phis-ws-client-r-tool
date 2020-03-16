# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProjectPutDTO Class
#'
#' @field uri 
#' @field name 
#' @field shortname 
#' @field relatedProjects 
#' @field financialFunding 
#' @field financialReference 
#' @field description 
#' @field startDate 
#' @field endDate 
#' @field keywords 
#' @field homePage 
#' @field administrativeContacts 
#' @field coordinators 
#' @field scientificContacts 
#' @field objective 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectPutDTO <- R6::R6Class(
  'ProjectPutDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `shortname` = NULL,
    `relatedProjects` = NULL,
    `financialFunding` = NULL,
    `financialReference` = NULL,
    `description` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `keywords` = NULL,
    `homePage` = NULL,
    `administrativeContacts` = NULL,
    `coordinators` = NULL,
    `scientificContacts` = NULL,
    `objective` = NULL,
    initialize = function(`uri`, `name`, `shortname`, `relatedProjects`, `financialFunding`, `financialReference`, `description`, `startDate`, `endDate`, `keywords`, `homePage`, `administrativeContacts`, `coordinators`, `scientificContacts`, `objective`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`shortname`)) {
        stopifnot(is.character(`shortname`), length(`shortname`) == 1)
        self$`shortname` <- `shortname`
      }
      if (!missing(`relatedProjects`)) {
        stopifnot(is.list(`relatedProjects`), length(`relatedProjects`) != 0)
        lapply(`relatedProjects`, function(x) stopifnot(is.character(x)))
        self$`relatedProjects` <- `relatedProjects`
      }
      if (!missing(`financialFunding`)) {
        stopifnot(is.character(`financialFunding`), length(`financialFunding`) == 1)
        self$`financialFunding` <- `financialFunding`
      }
      if (!missing(`financialReference`)) {
        stopifnot(is.character(`financialReference`), length(`financialReference`) == 1)
        self$`financialReference` <- `financialReference`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`startDate`)) {
        stopifnot(is.character(`startDate`), length(`startDate`) == 1)
        self$`startDate` <- `startDate`
      }
      if (!missing(`endDate`)) {
        stopifnot(is.character(`endDate`), length(`endDate`) == 1)
        self$`endDate` <- `endDate`
      }
      if (!missing(`keywords`)) {
        stopifnot(is.list(`keywords`), length(`keywords`) != 0)
        lapply(`keywords`, function(x) stopifnot(is.character(x)))
        self$`keywords` <- `keywords`
      }
      if (!missing(`homePage`)) {
        stopifnot(is.character(`homePage`), length(`homePage`) == 1)
        self$`homePage` <- `homePage`
      }
      if (!missing(`administrativeContacts`)) {
        stopifnot(is.list(`administrativeContacts`), length(`administrativeContacts`) != 0)
        lapply(`administrativeContacts`, function(x) stopifnot(is.character(x)))
        self$`administrativeContacts` <- `administrativeContacts`
      }
      if (!missing(`coordinators`)) {
        stopifnot(is.list(`coordinators`), length(`coordinators`) != 0)
        lapply(`coordinators`, function(x) stopifnot(is.character(x)))
        self$`coordinators` <- `coordinators`
      }
      if (!missing(`scientificContacts`)) {
        stopifnot(is.list(`scientificContacts`), length(`scientificContacts`) != 0)
        lapply(`scientificContacts`, function(x) stopifnot(is.character(x)))
        self$`scientificContacts` <- `scientificContacts`
      }
      if (!missing(`objective`)) {
        stopifnot(is.character(`objective`), length(`objective`) == 1)
        self$`objective` <- `objective`
      }
    },
    toJSON = function() {
      ProjectPutDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProjectPutDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ProjectPutDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`shortname`)) {
        ProjectPutDTOObject[['shortname']] <- self$`shortname`
      }
      if (!is.null(self$`relatedProjects`)) {
        ProjectPutDTOObject[['relatedProjects']] <- self$`relatedProjects`
      }
      if (!is.null(self$`financialFunding`)) {
        ProjectPutDTOObject[['financialFunding']] <- self$`financialFunding`
      }
      if (!is.null(self$`financialReference`)) {
        ProjectPutDTOObject[['financialReference']] <- self$`financialReference`
      }
      if (!is.null(self$`description`)) {
        ProjectPutDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`startDate`)) {
        ProjectPutDTOObject[['startDate']] <- self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        ProjectPutDTOObject[['endDate']] <- self$`endDate`
      }
      if (!is.null(self$`keywords`)) {
        ProjectPutDTOObject[['keywords']] <- self$`keywords`
      }
      if (!is.null(self$`homePage`)) {
        ProjectPutDTOObject[['homePage']] <- self$`homePage`
      }
      if (!is.null(self$`administrativeContacts`)) {
        ProjectPutDTOObject[['administrativeContacts']] <- self$`administrativeContacts`
      }
      if (!is.null(self$`coordinators`)) {
        ProjectPutDTOObject[['coordinators']] <- self$`coordinators`
      }
      if (!is.null(self$`scientificContacts`)) {
        ProjectPutDTOObject[['scientificContacts']] <- self$`scientificContacts`
      }
      if (!is.null(self$`objective`)) {
        ProjectPutDTOObject[['objective']] <- self$`objective`
      }

      ProjectPutDTOObject
    },
    fromJSON = function(ProjectPutDTOJson) {
      ProjectPutDTOObject <- jsonlite::fromJSON(ProjectPutDTOJson)
      if (!is.null(ProjectPutDTOObject$`uri`)) {
        self$`uri` <- ProjectPutDTOObject$`uri`
      }
      if (!is.null(ProjectPutDTOObject$`name`)) {
        self$`name` <- ProjectPutDTOObject$`name`
      }
      if (!is.null(ProjectPutDTOObject$`shortname`)) {
        self$`shortname` <- ProjectPutDTOObject$`shortname`
      }
      if (!is.null(ProjectPutDTOObject$`relatedProjects`)) {
        self$`relatedProjects` <- ProjectPutDTOObject$`relatedProjects`
      }
      if (!is.null(ProjectPutDTOObject$`financialFunding`)) {
        self$`financialFunding` <- ProjectPutDTOObject$`financialFunding`
      }
      if (!is.null(ProjectPutDTOObject$`financialReference`)) {
        self$`financialReference` <- ProjectPutDTOObject$`financialReference`
      }
      if (!is.null(ProjectPutDTOObject$`description`)) {
        self$`description` <- ProjectPutDTOObject$`description`
      }
      if (!is.null(ProjectPutDTOObject$`startDate`)) {
        self$`startDate` <- ProjectPutDTOObject$`startDate`
      }
      if (!is.null(ProjectPutDTOObject$`endDate`)) {
        self$`endDate` <- ProjectPutDTOObject$`endDate`
      }
      if (!is.null(ProjectPutDTOObject$`keywords`)) {
        self$`keywords` <- ProjectPutDTOObject$`keywords`
      }
      if (!is.null(ProjectPutDTOObject$`homePage`)) {
        self$`homePage` <- ProjectPutDTOObject$`homePage`
      }
      if (!is.null(ProjectPutDTOObject$`administrativeContacts`)) {
        self$`administrativeContacts` <- ProjectPutDTOObject$`administrativeContacts`
      }
      if (!is.null(ProjectPutDTOObject$`coordinators`)) {
        self$`coordinators` <- ProjectPutDTOObject$`coordinators`
      }
      if (!is.null(ProjectPutDTOObject$`scientificContacts`)) {
        self$`scientificContacts` <- ProjectPutDTOObject$`scientificContacts`
      }
      if (!is.null(ProjectPutDTOObject$`objective`)) {
        self$`objective` <- ProjectPutDTOObject$`objective`
      }
    },
    fromJSONObject = function(ProjectPutDTOObject) {
      if (!is.null(ProjectPutDTOObject$`uri`)) {
        self$`uri` <- ProjectPutDTOObject$`uri`
      }
      if (!is.null(ProjectPutDTOObject$`name`)) {
        self$`name` <- ProjectPutDTOObject$`name`
      }
      if (!is.null(ProjectPutDTOObject$`shortname`)) {
        self$`shortname` <- ProjectPutDTOObject$`shortname`
      }
      if (!is.null(ProjectPutDTOObject$`relatedProjects`)) {
        self$`relatedProjects` <- ProjectPutDTOObject$`relatedProjects`
      }
      if (!is.null(ProjectPutDTOObject$`financialFunding`)) {
        self$`financialFunding` <- ProjectPutDTOObject$`financialFunding`
      }
      if (!is.null(ProjectPutDTOObject$`financialReference`)) {
        self$`financialReference` <- ProjectPutDTOObject$`financialReference`
      }
      if (!is.null(ProjectPutDTOObject$`description`)) {
        self$`description` <- ProjectPutDTOObject$`description`
      }
      if (!is.null(ProjectPutDTOObject$`startDate`)) {
        self$`startDate` <- ProjectPutDTOObject$`startDate`
      }
      if (!is.null(ProjectPutDTOObject$`endDate`)) {
        self$`endDate` <- ProjectPutDTOObject$`endDate`
      }
      if (!is.null(ProjectPutDTOObject$`keywords`)) {
        self$`keywords` <- ProjectPutDTOObject$`keywords`
      }
      if (!is.null(ProjectPutDTOObject$`homePage`)) {
        self$`homePage` <- ProjectPutDTOObject$`homePage`
      }
      if (!is.null(ProjectPutDTOObject$`administrativeContacts`)) {
        self$`administrativeContacts` <- ProjectPutDTOObject$`administrativeContacts`
      }
      if (!is.null(ProjectPutDTOObject$`coordinators`)) {
        self$`coordinators` <- ProjectPutDTOObject$`coordinators`
      }
      if (!is.null(ProjectPutDTOObject$`scientificContacts`)) {
        self$`scientificContacts` <- ProjectPutDTOObject$`scientificContacts`
      }
      if (!is.null(ProjectPutDTOObject$`objective`)) {
        self$`objective` <- ProjectPutDTOObject$`objective`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "shortname": %s,
           "relatedProjects": [%s],
           "financialFunding": %s,
           "financialReference": %s,
           "description": %s,
           "startDate": %s,
           "endDate": %s,
           "keywords": [%s],
           "homePage": %s,
           "administrativeContacts": [%s],
           "coordinators": [%s],
           "scientificContacts": [%s],
           "objective": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`shortname`,auto_unbox=TRUE, null = "null"),
        lapply(self$`relatedProjects`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`financialFunding`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`financialReference`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`startDate`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`endDate`,auto_unbox=TRUE, null = "null"),
        lapply(self$`keywords`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`homePage`,auto_unbox=TRUE, null = "null"),
        lapply(self$`administrativeContacts`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`coordinators`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`scientificContacts`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`objective`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ProjectPutDTOJson) {
      ProjectPutDTOObject <- jsonlite::fromJSON(ProjectPutDTOJson)
      self$`uri` <- ProjectPutDTOObject$`uri`
      self$`name` <- ProjectPutDTOObject$`name`
      self$`shortname` <- ProjectPutDTOObject$`shortname`
      self$`relatedProjects` <- ProjectPutDTOObject$`relatedProjects`
      self$`financialFunding` <- ProjectPutDTOObject$`financialFunding`
      self$`financialReference` <- ProjectPutDTOObject$`financialReference`
      self$`description` <- ProjectPutDTOObject$`description`
      self$`startDate` <- ProjectPutDTOObject$`startDate`
      self$`endDate` <- ProjectPutDTOObject$`endDate`
      self$`keywords` <- ProjectPutDTOObject$`keywords`
      self$`homePage` <- ProjectPutDTOObject$`homePage`
      self$`administrativeContacts` <- ProjectPutDTOObject$`administrativeContacts`
      self$`coordinators` <- ProjectPutDTOObject$`coordinators`
      self$`scientificContacts` <- ProjectPutDTOObject$`scientificContacts`
      self$`objective` <- ProjectPutDTOObject$`objective`
    }
  )
)
