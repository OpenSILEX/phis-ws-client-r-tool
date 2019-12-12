# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Brapiv1traits operations
#' @description opensilexWSClient.Brapiv1traits
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
#' get_trait_details1 Retrieve trait details by id
#'
#'
#' get_traits_list Retrieve the list of all traits available in the system
#'
#' }
#'
#' @export
Brapiv1traitsApi <- R6::R6Class(
  'Brapiv1traitsApi',
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
    get_trait_details1 = function(trait_db_id,...){
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

      urlPath <- "/brapi/v1/traits/{traitDbId}"
      if (!missing(`trait_db_id`)) {
        urlPath <- gsub(paste0("\\{", "traitDbId", "\\}"), `trait_db_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "GET"
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
       
        if(method == "GET"){
          json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
          data <- json$result$data
          returnedOjects = list()
          for(i in 1:nrow(data)){
            row <- data[i,]
            returnObject <- BrapiTraitDTO$new()
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
    get_traits_list = function(page_size,page,...){
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

      urlPath <- "/brapi/v1/traits"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "GET"
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
       
        if(method == "GET"){
          json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
          data <- json$result$data
          returnedOjects = list()
          for(i in 1:nrow(data)){
            row <- data[i,]
            returnObject <- BrapiTraitDTO$new()
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

    }
  )
)
