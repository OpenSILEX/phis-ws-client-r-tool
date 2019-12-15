# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FinancialFunding Class
#'
#' @field uri 
#' @field label 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FinancialFunding <- R6::R6Class(
  'FinancialFunding',
  public = list(
    `uri` = NULL,
    `label` = NULL,
    initialize = function(`uri`, `label`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
    },
    toJSON = function() {
      FinancialFundingObject <- list()
      if (!is.null(self$`uri`)) {
        FinancialFundingObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`label`)) {
        FinancialFundingObject[['label']] <- self$`label`
      }

      FinancialFundingObject
    },
    fromJSON = function(FinancialFundingJson) {
      FinancialFundingObject <- jsonlite::fromJSON(FinancialFundingJson)
      if (!is.null(FinancialFundingObject$`uri`)) {
        self$`uri` <- FinancialFundingObject$`uri`
      }
      if (!is.null(FinancialFundingObject$`label`)) {
        self$`label` <- FinancialFundingObject$`label`
      }
    },
    fromJSONObject = function(FinancialFundingObject) {
      if (!is.null(FinancialFundingObject$`uri`)) {
        self$`uri` <- FinancialFundingObject$`uri`
      }
      if (!is.null(FinancialFundingObject$`label`)) {
        self$`label` <- FinancialFundingObject$`label`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "label": %s
        }',
        jsonlite::toJSON(self$`uri`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`label`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(FinancialFundingJson) {
      FinancialFundingObject <- jsonlite::fromJSON(FinancialFundingJson)
      self$`uri` <- FinancialFundingObject$`uri`
      self$`label` <- FinancialFundingObject$`label`
    }
  )
)
