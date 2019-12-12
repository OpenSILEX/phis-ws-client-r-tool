# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ImageMetadata Class
#'
#' @field uri 
#' @field rdfType 
#' @field concernedItems 
#' @field configuration 
#' @field fileInformations 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImageMetadata <- R6::R6Class(
  'ImageMetadata',
  public = list(
    `uri` = NULL,
    `rdfType` = NULL,
    `concernedItems` = NULL,
    `configuration` = NULL,
    `fileInformations` = NULL,
    initialize = function(`uri`, `rdfType`, `concernedItems`, `configuration`, `fileInformations`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdfType`)) {
        stopifnot(is.character(`rdfType`), length(`rdfType`) == 1)
        self$`rdfType` <- `rdfType`
      }
      if (!missing(`concernedItems`)) {
        stopifnot(is.list(`concernedItems`), length(`concernedItems`) != 0)
        lapply(`concernedItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`concernedItems` <- `concernedItems`
      }
      if (!missing(`configuration`)) {
        stopifnot(R6::is.R6(`configuration`))
        self$`configuration` <- `configuration`
      }
      if (!missing(`fileInformations`)) {
        stopifnot(R6::is.R6(`fileInformations`))
        self$`fileInformations` <- `fileInformations`
      }
    },
    toJSON = function() {
      ImageMetadataObject <- list()
      if (!is.null(self$`uri`)) {
        ImageMetadataObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdfType`)) {
        ImageMetadataObject[['rdfType']] <- self$`rdfType`
      }
      if (!is.null(self$`concernedItems`)) {
        ImageMetadataObject[['concernedItems']] <- lapply(self$`concernedItems`, function(x) x$toJSON())
      }
      if (!is.null(self$`configuration`)) {
        ImageMetadataObject[['configuration']] <- self$`configuration`$toJSON()
      }
      if (!is.null(self$`fileInformations`)) {
        ImageMetadataObject[['fileInformations']] <- self$`fileInformations`$toJSON()
      }

      ImageMetadataObject
    },
    fromJSON = function(ImageMetadataJson) {
      ImageMetadataObject <- jsonlite::fromJSON(ImageMetadataJson)
      if (!is.null(ImageMetadataObject$`uri`)) {
        self$`uri` <- ImageMetadataObject$`uri`
      }
      if (!is.null(ImageMetadataObject$`rdfType`)) {
        self$`rdfType` <- ImageMetadataObject$`rdfType`
      }
      if (!is.null(ImageMetadataObject$`concernedItems`)) {
        self$`concernedItems` <- lapply(ImageMetadataObject$`concernedItems`, function(x) {
          concernedItemsObject <- ConcernedItem$new()
          concernedItemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          concernedItemsObject
        })
      }
      if (!is.null(ImageMetadataObject$`configuration`)) {
        configurationObject <- ShootingConfiguration$new()
        configurationObject$fromJSON(jsonlite::toJSON(ImageMetadataObject$configuration, auto_unbox = TRUE))
        self$`configuration` <- configurationObject
      }
      if (!is.null(ImageMetadataObject$`fileInformations`)) {
        fileInformationsObject <- FileInformations$new()
        fileInformationsObject$fromJSON(jsonlite::toJSON(ImageMetadataObject$fileInformations, auto_unbox = TRUE))
        self$`fileInformations` <- fileInformationsObject
      }
    },
    fromJSONObject = function(ImageMetadataObject) {
      if (!is.null(ImageMetadataObject$`uri`)) {
        self$`uri` <- ImageMetadataObject$`uri`
      }
      if (!is.null(ImageMetadataObject$`rdfType`)) {
        self$`rdfType` <- ImageMetadataObject$`rdfType`
      }
      if (!is.null(ImageMetadataObject$`concernedItems`)) {
        self$`concernedItems` <- lapply(ImageMetadataObject$`concernedItems`, function(x) {
          concernedItemsObject <- ConcernedItem$new()
          concernedItemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          concernedItemsObject
        })
      }
      if (!is.null(ImageMetadataObject$`configuration`)) {
        configurationObject <- ShootingConfiguration$new()
        configurationObject$fromJSON(jsonlite::toJSON(ImageMetadataObject$configuration, auto_unbox = TRUE))
        self$`configuration` <- configurationObject
      }
      if (!is.null(ImageMetadataObject$`fileInformations`)) {
        fileInformationsObject <- FileInformations$new()
        fileInformationsObject$fromJSON(jsonlite::toJSON(ImageMetadataObject$fileInformations, auto_unbox = TRUE))
        self$`fileInformations` <- fileInformationsObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "rdfType": %s,
           "concernedItems": [%s],
           "configuration": %s,
           "fileInformations": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`rdfType`,auto_unbox=TRUE),
        lapply(self$`concernedItems`, function(x) paste(x$toJSON(), sep=",")),
        self$`configuration`$toJSON(),
        self$`fileInformations`$toJSON()
      )
    },
    fromJSONString = function(ImageMetadataJson) {
      ImageMetadataObject <- jsonlite::fromJSON(ImageMetadataJson)
      self$`uri` <- ImageMetadataObject$`uri`
      self$`rdfType` <- ImageMetadataObject$`rdfType`
      self$`concernedItems` <- lapply(ImageMetadataObject$`concernedItems`, function(x) ConcernedItem$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      ShootingConfigurationObject <- ShootingConfiguration$new()
      self$`configuration` <- ShootingConfigurationObject$fromJSON(jsonlite::toJSON(ImageMetadataObject$configuration, auto_unbox = TRUE))
      FileInformationsObject <- FileInformations$new()
      self$`fileInformations` <- FileInformationsObject$fromJSON(jsonlite::toJSON(ImageMetadataObject$fileInformations, auto_unbox = TRUE))
    }
  )
)