# openSilexSandBoxAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Datasets operations
#' @description phisWSClientRTools.Datasets
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
#' get_data_by_search Get all data corresponding to the search params given
#'
#'
#' post_dataset_data Post dataset
#'
#' }
#'
#' @export
DatasetsApi <- R6::R6Class(
  'DatasetsApi',
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
    get_data_by_search = function(page_size,page,experiment,variable,agronomical_objects,start_date,end_date,sensor,incertitude,...){
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

      if (!missing(`experiment`)) {
        queryParams['experiment'] <- experiment
      }

      if (!missing(`variable`)) {
        queryParams['variable'] <- variable
      }

      if (!missing(`agronomical_objects`)) {
        queryParams['agronomicalObjects'] <- agronomical_objects
      }

      if (!missing(`start_date`)) {
        queryParams['startDate'] <- start_date
      }

      if (!missing(`end_date`)) {
        queryParams['endDate'] <- end_date
      }

      if (!missing(`sensor`)) {
        queryParams['sensor'] <- sensor
      }

      if (!missing(`incertitude`)) {
        queryParams['incertitude'] <- incertitude
      }

      urlPath <- "/datasets"
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
            returnObject <- Dataset$new()
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
    post_dataset_data = function(body,...){
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

      if (!missing(`body`)) {
        if(is.list(`body`)){
          bodyList <- lapply(`body`, function(x){x$toJSONString()})
          bodyListPaste <- paste(bodyList, collapse=', ' )
          body <- paste('[',bodyListPaste,']')
        }else{
          body <- paste('[',`body`$toJSONString(),']')
        }
      } else {
        body <- NULL
      }
     
      urlPath <- "/datasets"
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
            returnObject <- ResponseFormPOST$new()
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
