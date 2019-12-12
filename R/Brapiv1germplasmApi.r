# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Brapiv1germplasm operations
#' @description opensilexWSClient.Brapiv1germplasm
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
#' get_germplasm_by_search1 Get all germplasm corresponding to the search params given
#'
#' }
#'
#' @export
Brapiv1germplasmApi <- R6::R6Class(
  'Brapiv1germplasmApi',
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
    get_germplasm_by_search1 = function(page_size,page,germplasm_db_id,germplasm_pui,germplasm_name,common_crop_name,language,...){
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

      if (!missing(`germplasm_db_id`)) {
        queryParams['germplasmDbId'] <- germplasm_db_id
      }

      if (!missing(`germplasm_pui`)) {
        queryParams['germplasmPUI'] <- germplasm_pui
      }

      if (!missing(`germplasm_name`)) {
        queryParams['germplasmName'] <- germplasm_name
      }

      if (!missing(`common_crop_name`)) {
        queryParams['commonCropName'] <- common_crop_name
      }

      if (!missing(`language`)) {
        queryParams['language'] <- language
      }

      urlPath <- "/brapi/v1/germplasm"
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
            returnObject <- BrapiGermplasmDTO$new()
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