# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title DataAnalysis operations
#' @description opensilexWSClient.DataAnalysis
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_rfunction_results Get a json value
#'
#'
#' shiny_proxy_server_app_list Get a server availables apps
#'
#'
#' shiny_proxy_server_status Get a server status message
#'
#' }
#'
#' @export
DataAnalysisApi <- R6::R6Class(
  'DataAnalysisApi',
  public = list(
    userAgent = "Swagger-Codegen/3.3.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_rfunction_results = function(package_name,function_name,json_parameters,...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      self$apiClient$basePath =  sub("/$", "",get("BASE_PATH",opensilexWSClientR:::configWS))
      if(self$apiClient$basePath == ""){
        stop("Wrong you must first connect with connectToPHISWS")
      }
      
      #if (!missing(`authorization`)) {
      #  headerParams['Authorization'] <- authorization
      #}

      if (!missing(`package_name`)) {
        queryParams['packageName'] <- package_name
      }

      if (!missing(`function_name`)) {
        queryParams['functionName'] <- function_name
      }

      if (!missing(`json_parameters`)) {
        queryParams['jsonParameters'] <- json_parameters
      }

      urlPath <- "/dataAnalysis/R"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "POST"
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
       
        if(method == "GET"){
          json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
          data <- json$result$data
          returnedOjects = list()
          for(i in 1:nrow(data)){
            row <- data[i,]
            returnObject <- JsonObject$new()
            returnObject$fromJSONObject(row)
            returnedOjects = c(returnedOjects,returnObject)
          }
          return(Response$new(returnedOjects, resp))
        }
         if(method == "POST"){
          json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
          data <- json$metadata$datafiles
         return(Response$new(data, resp))
        }
       
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        return(Response$new("API client error", resp))
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        return(Response$new("API server error", resp))
      }

    },
    shiny_proxy_server_app_list = function(page_size,page,...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      self$apiClient$basePath =  sub("/$", "",get("BASE_PATH",opensilexWSClientR:::configWS))
      if(self$apiClient$basePath == ""){
        stop("Wrong you must first connect with connectToPHISWS")
      }
      
      #if (!missing(`authorization`)) {
      #  headerParams['Authorization'] <- authorization
      #}

      if (!missing(`page_size`)) {
        queryParams['pageSize'] <- page_size
      }

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/dataAnalysis/applications"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "GET"
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        return(Response$new("API client error", resp))
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        return(Response$new("API server error", resp))
      }

    },
    shiny_proxy_server_status = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      self$apiClient$basePath =  sub("/$", "",get("BASE_PATH",opensilexWSClientR:::configWS))
      if(self$apiClient$basePath == ""){
        stop("Wrong you must first connect with connectToPHISWS")
      }
      
      #if (!missing(`authorization`)) {
      #  headerParams['Authorization'] <- authorization
      #}

      urlPath <- "/dataAnalysis/shinyServerStatus"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "GET"
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        return(Response$new("API client error", resp))
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        return(Response$new("API server error", resp))
      }

    }
  )
)