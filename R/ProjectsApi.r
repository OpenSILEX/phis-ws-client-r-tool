# sunagriAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Projects operations
#' @description phisWSClientRTools.Projects
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
#' get_by_id Get a project by its URI.
#'
#'
#' get_by_search Get all projects corresponding to the searched params given
#'
#'
#' post3 Post a project
#'
#'
#' put2 Put project(s)
#'
#' }
#'
#' @export
ProjectsApi <- R6::R6Class(
  'ProjectsApi',
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
    get_by_id = function(uri,page_size,page,...){
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

      urlPath <- "/projects/{uri}"
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
            returnObject <- ProjectDetailDTO$new()
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
    get_by_search = function(page_size,page,uri,name,shortname,financial_funding,financial_funding_lang,financial_reference,description,start_date,end_date,home_page,objective,...){
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

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`shortname`)) {
        queryParams['shortname'] <- shortname
      }

      if (!missing(`financial_funding`)) {
        queryParams['financialFunding'] <- financial_funding
      }

      if (!missing(`financial_funding_lang`)) {
        queryParams['financialFundingLang'] <- financial_funding_lang
      }

      if (!missing(`financial_reference`)) {
        queryParams['financialReference'] <- financial_reference
      }

      if (!missing(`description`)) {
        queryParams['description'] <- description
      }

      if (!missing(`start_date`)) {
        queryParams['startDate'] <- start_date
      }

      if (!missing(`end_date`)) {
        queryParams['endDate'] <- end_date
      }

      if (!missing(`home_page`)) {
        queryParams['homePage'] <- home_page
      }

      if (!missing(`objective`)) {
        queryParams['objective'] <- objective
      }

      urlPath <- "/projects"
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
            returnObject <- ProjectDTO$new()
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
    post3 = function(body,...){
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
     
      urlPath <- "/projects"
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

    },
    put2 = function(body,...){
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
     
      urlPath <- "/projects"
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
