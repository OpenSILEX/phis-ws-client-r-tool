# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ResponseUnique Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseUnique <- R6::R6Class(
  'ResponseUnique',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      ResponseUniqueObject <- list()

      ResponseUniqueObject
    },
    fromJSON = function(ResponseUniqueJson) {
      ResponseUniqueObject <- jsonlite::fromJSON(ResponseUniqueJson)
    },
    fromJSONObject = function(ResponseUniqueObject) {
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(ResponseUniqueJson) {
      ResponseUniqueObject <- jsonlite::fromJSON(ResponseUniqueJson)
    }
  )
)
