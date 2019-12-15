# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Infrastructures operations
#' @description phisWSClientRTools.Infrastructures
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
#' get_infrastructure_details Get all infrastructure&#39;s details corresponding to the search uri
#'
#'
#' get_infrastructures_by_search Get all infrastructures corresponding to the search params given
#'
#' }
#'
#' @export
InfrastructuresApi <- R6::R6Class(
  'InfrastructuresApi',
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
    get_infrastructure_details = function(uri,language,page_size,page,...){
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

      if (!missing(`language`)) {
        queryParams['language'] <- language
      }

      if (!missing(`page_size`)) {
        queryParams['pageSize'] <- page_size
      }

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/infrastructures/{uri}"
      if (!missing(`uri`)) {
        urlPath <- gsub(paste0("\\{", "uri", "\\}"), `uri`, urlPath)
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
            returnObject <- RdfResourceDefinitionDTO$new()
            returnObject$fromJSONObject(row)
            returnedOjects = c(returnedOjects,returnObject)
          }
          
          return(Response$new(json$metadata,returnedOjects, resp, TRUE))
        }
        if(method == "POST" || method == "PUT"){
          json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
          return(Response$new(json$metadata, json$result$datafiles, resp, TRUE))
        }
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        return(Response$new(json$metadata, json, resp, FALSE))
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        return(Response$new(json$metadata, json, resp, FALSE))
      }

    },
    get_infrastructures_by_search = function(page_size,page,uri,rdf_type,label,language,...){
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

      if (!missing(`uri`)) {
        queryParams['uri'] <- uri
      }

      if (!missing(`rdf_type`)) {
        queryParams['rdfType'] <- rdf_type
      }

      if (!missing(`label`)) {
        queryParams['label'] <- label
      }

      if (!missing(`language`)) {
        queryParams['language'] <- language
      }

      urlPath <- "/infrastructures"
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
            returnObject <- Infrastructure$new()
            returnObject$fromJSONObject(row)
            returnedOjects = c(returnedOjects,returnObject)
          }
          
          return(Response$new(json$metadata,returnedOjects, resp, TRUE))
        }
        if(method == "POST" || method == "PUT"){
          json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
          return(Response$new(json$metadata, json$result$datafiles, resp, TRUE))
        }
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        return(Response$new(json$metadata, json, resp, FALSE))
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        json <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        return(Response$new(json$metadata, json, resp, FALSE))
      }

    }
  )
)
