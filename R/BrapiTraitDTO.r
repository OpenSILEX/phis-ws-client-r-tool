# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BrapiTraitDTO Class
#'
#' @field defaultValue 
#' @field description 
#' @field traitName 
#' @field observationVariables 
#' @field traitId 
#' @field traitDbId 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BrapiTraitDTO <- R6::R6Class(
  'BrapiTraitDTO',
  public = list(
    `defaultValue` = NULL,
    `description` = NULL,
    `traitName` = NULL,
    `observationVariables` = NULL,
    `traitId` = NULL,
    `traitDbId` = NULL,
    initialize = function(`defaultValue`, `description`, `traitName`, `observationVariables`, `traitId`, `traitDbId`){
      if (!missing(`defaultValue`)) {
        stopifnot(is.character(`defaultValue`), length(`defaultValue`) == 1)
        self$`defaultValue` <- `defaultValue`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`traitName`)) {
        stopifnot(is.character(`traitName`), length(`traitName`) == 1)
        self$`traitName` <- `traitName`
      }
      if (!missing(`observationVariables`)) {
        stopifnot(is.list(`observationVariables`), length(`observationVariables`) != 0)
        lapply(`observationVariables`, function(x) stopifnot(is.character(x)))
        self$`observationVariables` <- `observationVariables`
      }
      if (!missing(`traitId`)) {
        stopifnot(is.character(`traitId`), length(`traitId`) == 1)
        self$`traitId` <- `traitId`
      }
      if (!missing(`traitDbId`)) {
        stopifnot(is.character(`traitDbId`), length(`traitDbId`) == 1)
        self$`traitDbId` <- `traitDbId`
      }
    },
    toJSON = function() {
      BrapiTraitDTOObject <- list()
      if (!is.null(self$`defaultValue`)) {
        BrapiTraitDTOObject[['defaultValue']] <- self$`defaultValue`
      }
      if (!is.null(self$`description`)) {
        BrapiTraitDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`traitName`)) {
        BrapiTraitDTOObject[['traitName']] <- self$`traitName`
      }
      if (!is.null(self$`observationVariables`)) {
        BrapiTraitDTOObject[['observationVariables']] <- self$`observationVariables`
      }
      if (!is.null(self$`traitId`)) {
        BrapiTraitDTOObject[['traitId']] <- self$`traitId`
      }
      if (!is.null(self$`traitDbId`)) {
        BrapiTraitDTOObject[['traitDbId']] <- self$`traitDbId`
      }

      BrapiTraitDTOObject
    },
    fromJSON = function(BrapiTraitDTOJson) {
      BrapiTraitDTOObject <- jsonlite::fromJSON(BrapiTraitDTOJson)
      if (!is.null(BrapiTraitDTOObject$`defaultValue`)) {
        self$`defaultValue` <- BrapiTraitDTOObject$`defaultValue`
      }
      if (!is.null(BrapiTraitDTOObject$`description`)) {
        self$`description` <- BrapiTraitDTOObject$`description`
      }
      if (!is.null(BrapiTraitDTOObject$`traitName`)) {
        self$`traitName` <- BrapiTraitDTOObject$`traitName`
      }
      if (!is.null(BrapiTraitDTOObject$`observationVariables`)) {
        self$`observationVariables` <- BrapiTraitDTOObject$`observationVariables`
      }
      if (!is.null(BrapiTraitDTOObject$`traitId`)) {
        self$`traitId` <- BrapiTraitDTOObject$`traitId`
      }
      if (!is.null(BrapiTraitDTOObject$`traitDbId`)) {
        self$`traitDbId` <- BrapiTraitDTOObject$`traitDbId`
      }
    },
    fromJSONObject = function(BrapiTraitDTOObject) {
      if (!is.null(BrapiTraitDTOObject$`defaultValue`)) {
        self$`defaultValue` <- BrapiTraitDTOObject$`defaultValue`
      }
      if (!is.null(BrapiTraitDTOObject$`description`)) {
        self$`description` <- BrapiTraitDTOObject$`description`
      }
      if (!is.null(BrapiTraitDTOObject$`traitName`)) {
        self$`traitName` <- BrapiTraitDTOObject$`traitName`
      }
      if (!is.null(BrapiTraitDTOObject$`observationVariables`)) {
        self$`observationVariables` <- BrapiTraitDTOObject$`observationVariables`
      }
      if (!is.null(BrapiTraitDTOObject$`traitId`)) {
        self$`traitId` <- BrapiTraitDTOObject$`traitId`
      }
      if (!is.null(BrapiTraitDTOObject$`traitDbId`)) {
        self$`traitDbId` <- BrapiTraitDTOObject$`traitDbId`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "defaultValue": %s,
           "description": %s,
           "traitName": %s,
           "observationVariables": [%s],
           "traitId": %s,
           "traitDbId": %s
        }',
        jsonlite::toJSON(self$`defaultValue`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`traitName`,auto_unbox=TRUE, null = "null"),
        lapply(self$`observationVariables`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`traitId`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`traitDbId`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(BrapiTraitDTOJson) {
      BrapiTraitDTOObject <- jsonlite::fromJSON(BrapiTraitDTOJson)
      self$`defaultValue` <- BrapiTraitDTOObject$`defaultValue`
      self$`description` <- BrapiTraitDTOObject$`description`
      self$`traitName` <- BrapiTraitDTOObject$`traitName`
      self$`observationVariables` <- BrapiTraitDTOObject$`observationVariables`
      self$`traitId` <- BrapiTraitDTOObject$`traitId`
      self$`traitDbId` <- BrapiTraitDTOObject$`traitDbId`
    }
  )
)
