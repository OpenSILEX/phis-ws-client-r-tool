# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BrapiObservationDTO Class
#'
#' @field germplasmDbId 
#' @field germplasmName 
#' @field observationDbId 
#' @field observationLevel 
#' @field observationTimeStamp 
#' @field observationUnitDbId 
#' @field observationUnitName 
#' @field observationVariableDbId 
#' @field observationVariableName 
#' @field operator 
#' @field season 
#' @field studyDbId 
#' @field uploadedBy 
#' @field value 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BrapiObservationDTO <- R6::R6Class(
  'BrapiObservationDTO',
  public = list(
    `germplasmDbId` = NULL,
    `germplasmName` = NULL,
    `observationDbId` = NULL,
    `observationLevel` = NULL,
    `observationTimeStamp` = NULL,
    `observationUnitDbId` = NULL,
    `observationUnitName` = NULL,
    `observationVariableDbId` = NULL,
    `observationVariableName` = NULL,
    `operator` = NULL,
    `season` = NULL,
    `studyDbId` = NULL,
    `uploadedBy` = NULL,
    `value` = NULL,
    initialize = function(`germplasmDbId`, `germplasmName`, `observationDbId`, `observationLevel`, `observationTimeStamp`, `observationUnitDbId`, `observationUnitName`, `observationVariableDbId`, `observationVariableName`, `operator`, `season`, `studyDbId`, `uploadedBy`, `value`){
      if (!missing(`germplasmDbId`)) {
        stopifnot(is.character(`germplasmDbId`), length(`germplasmDbId`) == 1)
        self$`germplasmDbId` <- `germplasmDbId`
      }
      if (!missing(`germplasmName`)) {
        stopifnot(is.character(`germplasmName`), length(`germplasmName`) == 1)
        self$`germplasmName` <- `germplasmName`
      }
      if (!missing(`observationDbId`)) {
        stopifnot(is.character(`observationDbId`), length(`observationDbId`) == 1)
        self$`observationDbId` <- `observationDbId`
      }
      if (!missing(`observationLevel`)) {
        stopifnot(is.character(`observationLevel`), length(`observationLevel`) == 1)
        self$`observationLevel` <- `observationLevel`
      }
      if (!missing(`observationTimeStamp`)) {
        stopifnot(is.character(`observationTimeStamp`), length(`observationTimeStamp`) == 1)
        self$`observationTimeStamp` <- `observationTimeStamp`
      }
      if (!missing(`observationUnitDbId`)) {
        stopifnot(is.character(`observationUnitDbId`), length(`observationUnitDbId`) == 1)
        self$`observationUnitDbId` <- `observationUnitDbId`
      }
      if (!missing(`observationUnitName`)) {
        stopifnot(is.character(`observationUnitName`), length(`observationUnitName`) == 1)
        self$`observationUnitName` <- `observationUnitName`
      }
      if (!missing(`observationVariableDbId`)) {
        stopifnot(is.character(`observationVariableDbId`), length(`observationVariableDbId`) == 1)
        self$`observationVariableDbId` <- `observationVariableDbId`
      }
      if (!missing(`observationVariableName`)) {
        stopifnot(is.character(`observationVariableName`), length(`observationVariableName`) == 1)
        self$`observationVariableName` <- `observationVariableName`
      }
      if (!missing(`operator`)) {
        stopifnot(is.character(`operator`), length(`operator`) == 1)
        self$`operator` <- `operator`
      }
      if (!missing(`season`)) {
        stopifnot(is.character(`season`), length(`season`) == 1)
        self$`season` <- `season`
      }
      if (!missing(`studyDbId`)) {
        stopifnot(is.character(`studyDbId`), length(`studyDbId`) == 1)
        self$`studyDbId` <- `studyDbId`
      }
      if (!missing(`uploadedBy`)) {
        stopifnot(is.character(`uploadedBy`), length(`uploadedBy`) == 1)
        self$`uploadedBy` <- `uploadedBy`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
    },
    toJSON = function() {
      BrapiObservationDTOObject <- list()
      if (!is.null(self$`germplasmDbId`)) {
        BrapiObservationDTOObject[['germplasmDbId']] <- self$`germplasmDbId`
      }
      if (!is.null(self$`germplasmName`)) {
        BrapiObservationDTOObject[['germplasmName']] <- self$`germplasmName`
      }
      if (!is.null(self$`observationDbId`)) {
        BrapiObservationDTOObject[['observationDbId']] <- self$`observationDbId`
      }
      if (!is.null(self$`observationLevel`)) {
        BrapiObservationDTOObject[['observationLevel']] <- self$`observationLevel`
      }
      if (!is.null(self$`observationTimeStamp`)) {
        BrapiObservationDTOObject[['observationTimeStamp']] <- self$`observationTimeStamp`
      }
      if (!is.null(self$`observationUnitDbId`)) {
        BrapiObservationDTOObject[['observationUnitDbId']] <- self$`observationUnitDbId`
      }
      if (!is.null(self$`observationUnitName`)) {
        BrapiObservationDTOObject[['observationUnitName']] <- self$`observationUnitName`
      }
      if (!is.null(self$`observationVariableDbId`)) {
        BrapiObservationDTOObject[['observationVariableDbId']] <- self$`observationVariableDbId`
      }
      if (!is.null(self$`observationVariableName`)) {
        BrapiObservationDTOObject[['observationVariableName']] <- self$`observationVariableName`
      }
      if (!is.null(self$`operator`)) {
        BrapiObservationDTOObject[['operator']] <- self$`operator`
      }
      if (!is.null(self$`season`)) {
        BrapiObservationDTOObject[['season']] <- self$`season`
      }
      if (!is.null(self$`studyDbId`)) {
        BrapiObservationDTOObject[['studyDbId']] <- self$`studyDbId`
      }
      if (!is.null(self$`uploadedBy`)) {
        BrapiObservationDTOObject[['uploadedBy']] <- self$`uploadedBy`
      }
      if (!is.null(self$`value`)) {
        BrapiObservationDTOObject[['value']] <- self$`value`
      }

      BrapiObservationDTOObject
    },
    fromJSON = function(BrapiObservationDTOJson) {
      BrapiObservationDTOObject <- jsonlite::fromJSON(BrapiObservationDTOJson)
      if (!is.null(BrapiObservationDTOObject$`germplasmDbId`)) {
        self$`germplasmDbId` <- BrapiObservationDTOObject$`germplasmDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`germplasmName`)) {
        self$`germplasmName` <- BrapiObservationDTOObject$`germplasmName`
      }
      if (!is.null(BrapiObservationDTOObject$`observationDbId`)) {
        self$`observationDbId` <- BrapiObservationDTOObject$`observationDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`observationLevel`)) {
        self$`observationLevel` <- BrapiObservationDTOObject$`observationLevel`
      }
      if (!is.null(BrapiObservationDTOObject$`observationTimeStamp`)) {
        self$`observationTimeStamp` <- BrapiObservationDTOObject$`observationTimeStamp`
      }
      if (!is.null(BrapiObservationDTOObject$`observationUnitDbId`)) {
        self$`observationUnitDbId` <- BrapiObservationDTOObject$`observationUnitDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`observationUnitName`)) {
        self$`observationUnitName` <- BrapiObservationDTOObject$`observationUnitName`
      }
      if (!is.null(BrapiObservationDTOObject$`observationVariableDbId`)) {
        self$`observationVariableDbId` <- BrapiObservationDTOObject$`observationVariableDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`observationVariableName`)) {
        self$`observationVariableName` <- BrapiObservationDTOObject$`observationVariableName`
      }
      if (!is.null(BrapiObservationDTOObject$`operator`)) {
        self$`operator` <- BrapiObservationDTOObject$`operator`
      }
      if (!is.null(BrapiObservationDTOObject$`season`)) {
        self$`season` <- BrapiObservationDTOObject$`season`
      }
      if (!is.null(BrapiObservationDTOObject$`studyDbId`)) {
        self$`studyDbId` <- BrapiObservationDTOObject$`studyDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`uploadedBy`)) {
        self$`uploadedBy` <- BrapiObservationDTOObject$`uploadedBy`
      }
      if (!is.null(BrapiObservationDTOObject$`value`)) {
        self$`value` <- BrapiObservationDTOObject$`value`
      }
    },
    fromJSONObject = function(BrapiObservationDTOObject) {
      if (!is.null(BrapiObservationDTOObject$`germplasmDbId`)) {
        self$`germplasmDbId` <- BrapiObservationDTOObject$`germplasmDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`germplasmName`)) {
        self$`germplasmName` <- BrapiObservationDTOObject$`germplasmName`
      }
      if (!is.null(BrapiObservationDTOObject$`observationDbId`)) {
        self$`observationDbId` <- BrapiObservationDTOObject$`observationDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`observationLevel`)) {
        self$`observationLevel` <- BrapiObservationDTOObject$`observationLevel`
      }
      if (!is.null(BrapiObservationDTOObject$`observationTimeStamp`)) {
        self$`observationTimeStamp` <- BrapiObservationDTOObject$`observationTimeStamp`
      }
      if (!is.null(BrapiObservationDTOObject$`observationUnitDbId`)) {
        self$`observationUnitDbId` <- BrapiObservationDTOObject$`observationUnitDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`observationUnitName`)) {
        self$`observationUnitName` <- BrapiObservationDTOObject$`observationUnitName`
      }
      if (!is.null(BrapiObservationDTOObject$`observationVariableDbId`)) {
        self$`observationVariableDbId` <- BrapiObservationDTOObject$`observationVariableDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`observationVariableName`)) {
        self$`observationVariableName` <- BrapiObservationDTOObject$`observationVariableName`
      }
      if (!is.null(BrapiObservationDTOObject$`operator`)) {
        self$`operator` <- BrapiObservationDTOObject$`operator`
      }
      if (!is.null(BrapiObservationDTOObject$`season`)) {
        self$`season` <- BrapiObservationDTOObject$`season`
      }
      if (!is.null(BrapiObservationDTOObject$`studyDbId`)) {
        self$`studyDbId` <- BrapiObservationDTOObject$`studyDbId`
      }
      if (!is.null(BrapiObservationDTOObject$`uploadedBy`)) {
        self$`uploadedBy` <- BrapiObservationDTOObject$`uploadedBy`
      }
      if (!is.null(BrapiObservationDTOObject$`value`)) {
        self$`value` <- BrapiObservationDTOObject$`value`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "germplasmDbId": %s,
           "germplasmName": %s,
           "observationDbId": %s,
           "observationLevel": %s,
           "observationTimeStamp": %s,
           "observationUnitDbId": %s,
           "observationUnitName": %s,
           "observationVariableDbId": %s,
           "observationVariableName": %s,
           "operator": %s,
           "season": %s,
           "studyDbId": %s,
           "uploadedBy": %s,
           "value": %s
        }',
        jsonlite::toJSON(self$`germplasmDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`germplasmName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationLevel`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationTimeStamp`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationUnitDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationUnitName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationVariableDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationVariableName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`operator`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`season`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`studyDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`uploadedBy`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`value`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(BrapiObservationDTOJson) {
      BrapiObservationDTOObject <- jsonlite::fromJSON(BrapiObservationDTOJson)
      self$`germplasmDbId` <- BrapiObservationDTOObject$`germplasmDbId`
      self$`germplasmName` <- BrapiObservationDTOObject$`germplasmName`
      self$`observationDbId` <- BrapiObservationDTOObject$`observationDbId`
      self$`observationLevel` <- BrapiObservationDTOObject$`observationLevel`
      self$`observationTimeStamp` <- BrapiObservationDTOObject$`observationTimeStamp`
      self$`observationUnitDbId` <- BrapiObservationDTOObject$`observationUnitDbId`
      self$`observationUnitName` <- BrapiObservationDTOObject$`observationUnitName`
      self$`observationVariableDbId` <- BrapiObservationDTOObject$`observationVariableDbId`
      self$`observationVariableName` <- BrapiObservationDTOObject$`observationVariableName`
      self$`operator` <- BrapiObservationDTOObject$`operator`
      self$`season` <- BrapiObservationDTOObject$`season`
      self$`studyDbId` <- BrapiObservationDTOObject$`studyDbId`
      self$`uploadedBy` <- BrapiObservationDTOObject$`uploadedBy`
      self$`value` <- BrapiObservationDTOObject$`value`
    }
  )
)
