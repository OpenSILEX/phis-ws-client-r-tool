# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ShootingConfigurationDTO Class
#'
#' @field date 
#' @field position 
#' @field sensor 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShootingConfigurationDTO <- R6::R6Class(
  'ShootingConfigurationDTO',
  public = list(
    `date` = NULL,
    `position` = NULL,
    `sensor` = NULL,
    initialize = function(`date`, `position`, `sensor`){
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`position`)) {
        stopifnot(is.character(`position`), length(`position`) == 1)
        self$`position` <- `position`
      }
      if (!missing(`sensor`)) {
        stopifnot(is.character(`sensor`), length(`sensor`) == 1)
        self$`sensor` <- `sensor`
      }
    },
    toJSON = function() {
      ShootingConfigurationDTOObject <- list()
      if (!is.null(self$`date`)) {
        ShootingConfigurationDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`position`)) {
        ShootingConfigurationDTOObject[['position']] <- self$`position`
      }
      if (!is.null(self$`sensor`)) {
        ShootingConfigurationDTOObject[['sensor']] <- self$`sensor`
      }

      ShootingConfigurationDTOObject
    },
    fromJSON = function(ShootingConfigurationDTOJson) {
      ShootingConfigurationDTOObject <- jsonlite::fromJSON(ShootingConfigurationDTOJson)
      if (!is.null(ShootingConfigurationDTOObject$`date`)) {
        self$`date` <- ShootingConfigurationDTOObject$`date`
      }
      if (!is.null(ShootingConfigurationDTOObject$`position`)) {
        self$`position` <- ShootingConfigurationDTOObject$`position`
      }
      if (!is.null(ShootingConfigurationDTOObject$`sensor`)) {
        self$`sensor` <- ShootingConfigurationDTOObject$`sensor`
      }
    },
    fromJSONObject = function(ShootingConfigurationDTOObject) {
      if (!is.null(ShootingConfigurationDTOObject$`date`)) {
        self$`date` <- ShootingConfigurationDTOObject$`date`
      }
      if (!is.null(ShootingConfigurationDTOObject$`position`)) {
        self$`position` <- ShootingConfigurationDTOObject$`position`
      }
      if (!is.null(ShootingConfigurationDTOObject$`sensor`)) {
        self$`sensor` <- ShootingConfigurationDTOObject$`sensor`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "date": %s,
           "position": %s,
           "sensor": %s
        }',
        jsonlite::toJSON(self$`date`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`position`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`sensor`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(ShootingConfigurationDTOJson) {
      ShootingConfigurationDTOObject <- jsonlite::fromJSON(ShootingConfigurationDTOJson)
      self$`date` <- ShootingConfigurationDTOObject$`date`
      self$`position` <- ShootingConfigurationDTOObject$`position`
      self$`sensor` <- ShootingConfigurationDTOObject$`sensor`
    }
  )
)
