# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TokenResponseStructure Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenResponseStructure <- R6::R6Class(
  'TokenResponseStructure',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      TokenResponseStructureObject <- list()

      TokenResponseStructureObject
    },
    fromJSON = function(TokenResponseStructureJson) {
      TokenResponseStructureObject <- jsonlite::fromJSON(TokenResponseStructureJson)
    },
    fromJSONObject = function(TokenResponseStructureObject) {
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(TokenResponseStructureJson) {
      TokenResponseStructureObject <- jsonlite::fromJSON(TokenResponseStructureJson)
    }
  )
)
