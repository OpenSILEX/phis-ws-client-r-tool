# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Layers operations
#' @description phisWSClientRTools.Layers
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
#' post_layer Post a layer
#'
#' }
#'
#' @export
LayersApi <- R6::R6Class(
  'LayersApi',
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
    post_layer = function(body,...){
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
     
      urlPath <- "/layers"
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
