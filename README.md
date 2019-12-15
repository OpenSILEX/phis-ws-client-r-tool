# R API client for phisWSClientRTools

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

## Overview
This API client was generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project. By using the [OpenAPI/Swagger spec](https://github.com/swagger-api/swagger-spec) from a remote server, you can easily generate an API client.

- API version: 1.0.2
- Package version: 3.3.0
- Build package: io.swagger.codegen.languages.RClientCodegen

## Installation
You'll need the `devtools` package in order to build the API.
Make sure you have a proper CRAN repository from which you can download packages.

### Prerequisites
Install the `devtools` package with the following command.
```R
if(!require(devtools)) { install.packages("devtools") }
```

### Installation of the API package
Make sure you set the working directory to where the API code is located.
Then execute
```R
library(devtools)
install(".")
```

## Author


### Usage
```R
library(phisWSClientRTools)
# Le chargement a nécessité le package : opensilexWSClientR
phisWSClientRTools::connectToPHISWS(apiID="ws_private",username="guest@opensilex.org",password="guest", url = "http://www.opensilex.org:/openSilexSandBoxAPI/rest/")
# 2019-10-04 10:05:40 INFO::Query executed and data recovered - WS2
annoService <- AnnotationsApi$new()
# create Annotations
newAnnotation <- AnnotationDTO$new()
newAnnotation$creator <- "http://www.phenome-fppn.fr/mtp/id/agent/admin_opensilex"
newAnnotation$targets <- list("http://www.phenome-fppn.fr/test/id/event/99fe49a7-37e0-4b98-978e-132288172d35")
newAnnotation$motivatedBy <- "http://www.w3.org/ns/oa#describing"
newAnnotation$bodyValues <-  list("test2")
newAnnotation2 <- newAnnotation$clone()
annoService$post1(body=list(newAnnotation2,newAnnotation))
# search Annotations

annot <- annoService$get_annotations_by_search()
# <Response>
#   Public:
#     clone: function (deep = FALSE) 
#     content: list()
#     initialize: function (content, response) 
#     response: response
#     wsResponse: list, WSResponse
annot$content
# <AnnotationDTO>
#   Public:
#     bodyValues: list
#     clone: function (deep = FALSE) 
#     creationDate: 2019-03-13T14:39:35+01:00
#     creator: http://www.phenome-fppn.fr/mtp/id/agent/alain_charcosset
#     fromJSON: function (AnnotationDTOJson) 
#     fromJSONObject: function (AnnotationDTOObject) 
#     fromJSONString: function (AnnotationDTOJson) 
#     initialize: function (creator, motivatedBy, bodyValues, targets, uri, creationDate) 
#     motivatedBy: http://www.w3.org/ns/oa#describing
#     targets: list
#     toJSON: function () 
#     toJSONString: function () 
#     uri: http://www.phenome-fppn.fr/test/id/annotation/eb37c158-5 ...
```



