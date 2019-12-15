# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
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
