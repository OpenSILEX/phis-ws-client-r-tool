# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FileInformations Class
#'
#' @field checksum 
#' @field extension 
#' @field serverFilePath 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileInformations <- R6::R6Class(
  'FileInformations',
  public = list(
    `checksum` = NULL,
    `extension` = NULL,
    `serverFilePath` = NULL,
    initialize = function(`checksum`, `extension`, `serverFilePath`){
      if (!missing(`checksum`)) {
        stopifnot(is.character(`checksum`), length(`checksum`) == 1)
        self$`checksum` <- `checksum`
      }
      if (!missing(`extension`)) {
        stopifnot(is.character(`extension`), length(`extension`) == 1)
        self$`extension` <- `extension`
      }
      if (!missing(`serverFilePath`)) {
        stopifnot(is.character(`serverFilePath`), length(`serverFilePath`) == 1)
        self$`serverFilePath` <- `serverFilePath`
      }
    },
    toJSON = function() {
      FileInformationsObject <- list()
      if (!is.null(self$`checksum`)) {
        FileInformationsObject[['checksum']] <- self$`checksum`
      }
      if (!is.null(self$`extension`)) {
        FileInformationsObject[['extension']] <- self$`extension`
      }
      if (!is.null(self$`serverFilePath`)) {
        FileInformationsObject[['serverFilePath']] <- self$`serverFilePath`
      }

      FileInformationsObject
    },
    fromJSON = function(FileInformationsJson) {
      FileInformationsObject <- jsonlite::fromJSON(FileInformationsJson)
      if (!is.null(FileInformationsObject$`checksum`)) {
        self$`checksum` <- FileInformationsObject$`checksum`
      }
      if (!is.null(FileInformationsObject$`extension`)) {
        self$`extension` <- FileInformationsObject$`extension`
      }
      if (!is.null(FileInformationsObject$`serverFilePath`)) {
        self$`serverFilePath` <- FileInformationsObject$`serverFilePath`
      }
    },
    fromJSONObject = function(FileInformationsObject) {
      if (!is.null(FileInformationsObject$`checksum`)) {
        self$`checksum` <- FileInformationsObject$`checksum`
      }
      if (!is.null(FileInformationsObject$`extension`)) {
        self$`extension` <- FileInformationsObject$`extension`
      }
      if (!is.null(FileInformationsObject$`serverFilePath`)) {
        self$`serverFilePath` <- FileInformationsObject$`serverFilePath`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "checksum": %s,
           "extension": %s,
           "serverFilePath": %s
        }',
        jsonlite::toJSON(self$`checksum`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`extension`,auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`serverFilePath`,auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(FileInformationsJson) {
      FileInformationsObject <- jsonlite::fromJSON(FileInformationsJson)
      self$`checksum` <- FileInformationsObject$`checksum`
      self$`extension` <- FileInformationsObject$`extension`
      self$`serverFilePath` <- FileInformationsObject$`serverFilePath`
    }
  )
)
