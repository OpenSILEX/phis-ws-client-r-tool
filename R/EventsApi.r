# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Events operations
#' @description opensilexWSClient.Events
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
#' delete_event_uri Delete a list of event
#'
#'
#' get_event_annotations Get an event&#39;s annotations
#'
#'
#' get_event_by_uri Get the event corresponding to the search uri
#'
#'
#' get_events Get all events corresponding to the search parameters given.
#'
#'
#' post2 POST event(s)
#'
#'
#' put1 Update events
#'
#' }
#'
#' @export
EventsApi <- R6::R6Class(
  'EventsApi',
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
    delete_event_uri = function(body,...){
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
          print(body)
        }
      } else {
        body <- NULL
      }
     
      urlPath <- "/events/{uri}"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "DELETE"
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
    get_event_annotations = function(uri,page_size,page,...){
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

      urlPath <- "/events/{uri}/annotations"
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
    get_event_by_uri = function(uri,...){
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

      urlPath <- "/events/{uri}"
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
            returnObject <- EventGetDTO$new()
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
    get_events = function(page_size,page,uri,type,concerned_item_uri,concerned_item_label,start_date,end_date,...){
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

      if (!missing(`type`)) {
        queryParams['type'] <- type
      }

      if (!missing(`concerned_item_uri`)) {
        queryParams['concernedItemUri'] <- concerned_item_uri
      }

      if (!missing(`concerned_item_label`)) {
        queryParams['concernedItemLabel'] <- concerned_item_label
      }

      if (!missing(`start_date`)) {
        queryParams['startDate'] <- start_date
      }

      if (!missing(`end_date`)) {
        queryParams['endDate'] <- end_date
      }

      urlPath <- "/events"
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
            returnObject <- EventGetDTO$new()
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
    post2 = function(body,...){
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
          print(body)
        }
      } else {
        body <- NULL
      }
     
      urlPath <- "/events"
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
    put1 = function(body,...){
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
          print(body)
        }
      } else {
        body <- NULL
      }
     
      urlPath <- "/events"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      method = "PUT"
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
