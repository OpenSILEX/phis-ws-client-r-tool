# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FileInformationDTO Class
#'
#' @field checksum 
#' @field extension 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileInformationDTO <- R6::R6Class(
  'FileInformationDTO',
  public = list(
    `checksum` = NULL,
    `extension` = NULL,
    initialize = function(`checksum`, `extension`){
      if (!missing(`checksum`)) {
        stopifnot(is.character(`checksum`), length(`checksum`) == 1)
        self$`checksum` <- `checksum`
      }
      if (!missing(`extension`)) {
        stopifnot(is.character(`extension`), length(`extension`) == 1)
        self$`extension` <- `extension`
      }
    },
    toJSON = function() {
      FileInformationDTOObject <- list()
      if (!is.null(self$`checksum`)) {
        FileInformationDTOObject[['checksum']] <- self$`checksum`
      }
      if (!is.null(self$`extension`)) {
        FileInformationDTOObject[['extension']] <- self$`extension`
      }

      FileInformationDTOObject
    },
    fromJSON = function(FileInformationDTOJson) {
      FileInformationDTOObject <- jsonlite::fromJSON(FileInformationDTOJson)
      if (!is.null(FileInformationDTOObject$`checksum`)) {
        self$`checksum` <- FileInformationDTOObject$`checksum`
      }
      if (!is.null(FileInformationDTOObject$`extension`)) {
        self$`extension` <- FileInformationDTOObject$`extension`
      }
    },
    fromJSONObject = function(FileInformationDTOObject) {
      if (!is.null(FileInformationDTOObject$`checksum`)) {
        self$`checksum` <- FileInformationDTOObject$`checksum`
      }
      if (!is.null(FileInformationDTOObject$`extension`)) {
        self$`extension` <- FileInformationDTOObject$`extension`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "checksum": %s,
           "extension": %s
        }',
        jsonlite::toJSON(self$`checksum`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`extension`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(FileInformationDTOJson) {
      FileInformationDTOObject <- jsonlite::fromJSON(FileInformationDTOJson)
      self$`checksum` <- FileInformationDTOObject$`checksum`
      self$`extension` <- FileInformationDTOObject$`extension`
    }
  )
)
