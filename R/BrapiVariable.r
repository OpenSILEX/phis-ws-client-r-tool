# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BrapiVariable Class
#'
#' @field observationVariableDbId 
#' @field observationVariableName 
#' @field ontologyReference 
#' @field synonyms 
#' @field contextOfUse 
#' @field growthStage 
#' @field status 
#' @field xref 
#' @field institution 
#' @field scientist 
#' @field submissionTimesTamp 
#' @field language 
#' @field crop 
#' @field trait 
#' @field method 
#' @field scale 
#' @field defaultValue 
#' @field documentationURL 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BrapiVariable <- R6::R6Class(
  'BrapiVariable',
  public = list(
    `observationVariableDbId` = NULL,
    `observationVariableName` = NULL,
    `ontologyReference` = NULL,
    `synonyms` = NULL,
    `contextOfUse` = NULL,
    `growthStage` = NULL,
    `status` = NULL,
    `xref` = NULL,
    `institution` = NULL,
    `scientist` = NULL,
    `submissionTimesTamp` = NULL,
    `language` = NULL,
    `crop` = NULL,
    `trait` = NULL,
    `method` = NULL,
    `scale` = NULL,
    `defaultValue` = NULL,
    `documentationURL` = NULL,
    initialize = function(`observationVariableDbId`, `observationVariableName`, `ontologyReference`, `synonyms`, `contextOfUse`, `growthStage`, `status`, `xref`, `institution`, `scientist`, `submissionTimesTamp`, `language`, `crop`, `trait`, `method`, `scale`, `defaultValue`, `documentationURL`){
      if (!missing(`observationVariableDbId`)) {
        stopifnot(is.character(`observationVariableDbId`), length(`observationVariableDbId`) == 1)
        self$`observationVariableDbId` <- `observationVariableDbId`
      }
      if (!missing(`observationVariableName`)) {
        stopifnot(is.character(`observationVariableName`), length(`observationVariableName`) == 1)
        self$`observationVariableName` <- `observationVariableName`
      }
      if (!missing(`ontologyReference`)) {
        stopifnot(is.character(`ontologyReference`), length(`ontologyReference`) == 1)
        self$`ontologyReference` <- `ontologyReference`
      }
      if (!missing(`synonyms`)) {
        stopifnot(is.list(`synonyms`), length(`synonyms`) != 0)
        lapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
      }
      if (!missing(`contextOfUse`)) {
        stopifnot(is.list(`contextOfUse`), length(`contextOfUse`) != 0)
        lapply(`contextOfUse`, function(x) stopifnot(is.character(x)))
        self$`contextOfUse` <- `contextOfUse`
      }
      if (!missing(`growthStage`)) {
        stopifnot(is.character(`growthStage`), length(`growthStage`) == 1)
        self$`growthStage` <- `growthStage`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`xref`)) {
        stopifnot(is.character(`xref`), length(`xref`) == 1)
        self$`xref` <- `xref`
      }
      if (!missing(`institution`)) {
        stopifnot(is.character(`institution`), length(`institution`) == 1)
        self$`institution` <- `institution`
      }
      if (!missing(`scientist`)) {
        stopifnot(is.character(`scientist`), length(`scientist`) == 1)
        self$`scientist` <- `scientist`
      }
      if (!missing(`submissionTimesTamp`)) {
        stopifnot(is.character(`submissionTimesTamp`), length(`submissionTimesTamp`) == 1)
        self$`submissionTimesTamp` <- `submissionTimesTamp`
      }
      if (!missing(`language`)) {
        stopifnot(is.character(`language`), length(`language`) == 1)
        self$`language` <- `language`
      }
      if (!missing(`crop`)) {
        stopifnot(is.character(`crop`), length(`crop`) == 1)
        self$`crop` <- `crop`
      }
      if (!missing(`trait`)) {
        stopifnot(R6::is.R6(`trait`))
        self$`trait` <- `trait`
      }
      if (!missing(`method`)) {
        stopifnot(R6::is.R6(`method`))
        self$`method` <- `method`
      }
      if (!missing(`scale`)) {
        stopifnot(R6::is.R6(`scale`))
        self$`scale` <- `scale`
      }
      if (!missing(`defaultValue`)) {
        stopifnot(is.character(`defaultValue`), length(`defaultValue`) == 1)
        self$`defaultValue` <- `defaultValue`
      }
      if (!missing(`documentationURL`)) {
        stopifnot(is.character(`documentationURL`), length(`documentationURL`) == 1)
        self$`documentationURL` <- `documentationURL`
      }
    },
    toJSON = function() {
      BrapiVariableObject <- list()
      if (!is.null(self$`observationVariableDbId`)) {
        BrapiVariableObject[['observationVariableDbId']] <- self$`observationVariableDbId`
      }
      if (!is.null(self$`observationVariableName`)) {
        BrapiVariableObject[['observationVariableName']] <- self$`observationVariableName`
      }
      if (!is.null(self$`ontologyReference`)) {
        BrapiVariableObject[['ontologyReference']] <- self$`ontologyReference`
      }
      if (!is.null(self$`synonyms`)) {
        BrapiVariableObject[['synonyms']] <- self$`synonyms`
      }
      if (!is.null(self$`contextOfUse`)) {
        BrapiVariableObject[['contextOfUse']] <- self$`contextOfUse`
      }
      if (!is.null(self$`growthStage`)) {
        BrapiVariableObject[['growthStage']] <- self$`growthStage`
      }
      if (!is.null(self$`status`)) {
        BrapiVariableObject[['status']] <- self$`status`
      }
      if (!is.null(self$`xref`)) {
        BrapiVariableObject[['xref']] <- self$`xref`
      }
      if (!is.null(self$`institution`)) {
        BrapiVariableObject[['institution']] <- self$`institution`
      }
      if (!is.null(self$`scientist`)) {
        BrapiVariableObject[['scientist']] <- self$`scientist`
      }
      if (!is.null(self$`submissionTimesTamp`)) {
        BrapiVariableObject[['submissionTimesTamp']] <- self$`submissionTimesTamp`
      }
      if (!is.null(self$`language`)) {
        BrapiVariableObject[['language']] <- self$`language`
      }
      if (!is.null(self$`crop`)) {
        BrapiVariableObject[['crop']] <- self$`crop`
      }
      if (!is.null(self$`trait`)) {
        BrapiVariableObject[['trait']] <- self$`trait`$toJSON()
      }
      if (!is.null(self$`method`)) {
        BrapiVariableObject[['method']] <- self$`method`$toJSON()
      }
      if (!is.null(self$`scale`)) {
        BrapiVariableObject[['scale']] <- self$`scale`$toJSON()
      }
      if (!is.null(self$`defaultValue`)) {
        BrapiVariableObject[['defaultValue']] <- self$`defaultValue`
      }
      if (!is.null(self$`documentationURL`)) {
        BrapiVariableObject[['documentationURL']] <- self$`documentationURL`
      }

      BrapiVariableObject
    },
    fromJSON = function(BrapiVariableJson) {
      BrapiVariableObject <- jsonlite::fromJSON(BrapiVariableJson)
      if (!is.null(BrapiVariableObject$`observationVariableDbId`)) {
        self$`observationVariableDbId` <- BrapiVariableObject$`observationVariableDbId`
      }
      if (!is.null(BrapiVariableObject$`observationVariableName`)) {
        self$`observationVariableName` <- BrapiVariableObject$`observationVariableName`
      }
      if (!is.null(BrapiVariableObject$`ontologyReference`)) {
        self$`ontologyReference` <- BrapiVariableObject$`ontologyReference`
      }
      if (!is.null(BrapiVariableObject$`synonyms`)) {
        self$`synonyms` <- BrapiVariableObject$`synonyms`
      }
      if (!is.null(BrapiVariableObject$`contextOfUse`)) {
        self$`contextOfUse` <- BrapiVariableObject$`contextOfUse`
      }
      if (!is.null(BrapiVariableObject$`growthStage`)) {
        self$`growthStage` <- BrapiVariableObject$`growthStage`
      }
      if (!is.null(BrapiVariableObject$`status`)) {
        self$`status` <- BrapiVariableObject$`status`
      }
      if (!is.null(BrapiVariableObject$`xref`)) {
        self$`xref` <- BrapiVariableObject$`xref`
      }
      if (!is.null(BrapiVariableObject$`institution`)) {
        self$`institution` <- BrapiVariableObject$`institution`
      }
      if (!is.null(BrapiVariableObject$`scientist`)) {
        self$`scientist` <- BrapiVariableObject$`scientist`
      }
      if (!is.null(BrapiVariableObject$`submissionTimesTamp`)) {
        self$`submissionTimesTamp` <- BrapiVariableObject$`submissionTimesTamp`
      }
      if (!is.null(BrapiVariableObject$`language`)) {
        self$`language` <- BrapiVariableObject$`language`
      }
      if (!is.null(BrapiVariableObject$`crop`)) {
        self$`crop` <- BrapiVariableObject$`crop`
      }
      if (!is.null(BrapiVariableObject$`trait`)) {
        traitObject <- BrapiVariableTrait$new()
        traitObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$trait, auto_unbox = TRUE))
        self$`trait` <- traitObject
      }
      if (!is.null(BrapiVariableObject$`method`)) {
        methodObject <- BrapiMethod$new()
        methodObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$method, auto_unbox = TRUE))
        self$`method` <- methodObject
      }
      if (!is.null(BrapiVariableObject$`scale`)) {
        scaleObject <- BrapiScale$new()
        scaleObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$scale, auto_unbox = TRUE))
        self$`scale` <- scaleObject
      }
      if (!is.null(BrapiVariableObject$`defaultValue`)) {
        self$`defaultValue` <- BrapiVariableObject$`defaultValue`
      }
      if (!is.null(BrapiVariableObject$`documentationURL`)) {
        self$`documentationURL` <- BrapiVariableObject$`documentationURL`
      }
    },
    fromJSONObject = function(BrapiVariableObject) {
      if (!is.null(BrapiVariableObject$`observationVariableDbId`)) {
        self$`observationVariableDbId` <- BrapiVariableObject$`observationVariableDbId`
      }
      if (!is.null(BrapiVariableObject$`observationVariableName`)) {
        self$`observationVariableName` <- BrapiVariableObject$`observationVariableName`
      }
      if (!is.null(BrapiVariableObject$`ontologyReference`)) {
        self$`ontologyReference` <- BrapiVariableObject$`ontologyReference`
      }
      if (!is.null(BrapiVariableObject$`synonyms`)) {
        self$`synonyms` <- BrapiVariableObject$`synonyms`
      }
      if (!is.null(BrapiVariableObject$`contextOfUse`)) {
        self$`contextOfUse` <- BrapiVariableObject$`contextOfUse`
      }
      if (!is.null(BrapiVariableObject$`growthStage`)) {
        self$`growthStage` <- BrapiVariableObject$`growthStage`
      }
      if (!is.null(BrapiVariableObject$`status`)) {
        self$`status` <- BrapiVariableObject$`status`
      }
      if (!is.null(BrapiVariableObject$`xref`)) {
        self$`xref` <- BrapiVariableObject$`xref`
      }
      if (!is.null(BrapiVariableObject$`institution`)) {
        self$`institution` <- BrapiVariableObject$`institution`
      }
      if (!is.null(BrapiVariableObject$`scientist`)) {
        self$`scientist` <- BrapiVariableObject$`scientist`
      }
      if (!is.null(BrapiVariableObject$`submissionTimesTamp`)) {
        self$`submissionTimesTamp` <- BrapiVariableObject$`submissionTimesTamp`
      }
      if (!is.null(BrapiVariableObject$`language`)) {
        self$`language` <- BrapiVariableObject$`language`
      }
      if (!is.null(BrapiVariableObject$`crop`)) {
        self$`crop` <- BrapiVariableObject$`crop`
      }
      if (!is.null(BrapiVariableObject$`trait`)) {
        traitObject <- BrapiVariableTrait$new()
        traitObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$trait, auto_unbox = TRUE))
        self$`trait` <- traitObject
      }
      if (!is.null(BrapiVariableObject$`method`)) {
        methodObject <- BrapiMethod$new()
        methodObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$method, auto_unbox = TRUE))
        self$`method` <- methodObject
      }
      if (!is.null(BrapiVariableObject$`scale`)) {
        scaleObject <- BrapiScale$new()
        scaleObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$scale, auto_unbox = TRUE))
        self$`scale` <- scaleObject
      }
      if (!is.null(BrapiVariableObject$`defaultValue`)) {
        self$`defaultValue` <- BrapiVariableObject$`defaultValue`
      }
      if (!is.null(BrapiVariableObject$`documentationURL`)) {
        self$`documentationURL` <- BrapiVariableObject$`documentationURL`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "observationVariableDbId": %s,
           "observationVariableName": %s,
           "ontologyReference": %s,
           "synonyms": [%s],
           "contextOfUse": [%s],
           "growthStage": %s,
           "status": %s,
           "xref": %s,
           "institution": %s,
           "scientist": %s,
           "submissionTimesTamp": %s,
           "language": %s,
           "crop": %s,
           "trait": %s,
           "method": %s,
           "scale": %s,
           "defaultValue": %s,
           "documentationURL": %s
        }',
        jsonlite::toJSON(self$`observationVariableDbId`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`observationVariableName`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`ontologyReference`,auto_unbox=TRUE),
        lapply(self$`synonyms`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`contextOfUse`, function(x) paste(paste0('"', x, '"'), sep=",")),
        jsonlite::toJSON(self$`growthStage`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`status`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`xref`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`institution`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`scientist`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`submissionTimesTamp`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`language`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`crop`,auto_unbox=TRUE),
        self$`trait`$toJSON(),
        self$`method`$toJSON(),
        self$`scale`$toJSON(),
        jsonlite::toJSON(self$`defaultValue`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`documentationURL`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(BrapiVariableJson) {
      BrapiVariableObject <- jsonlite::fromJSON(BrapiVariableJson)
      self$`observationVariableDbId` <- BrapiVariableObject$`observationVariableDbId`
      self$`observationVariableName` <- BrapiVariableObject$`observationVariableName`
      self$`ontologyReference` <- BrapiVariableObject$`ontologyReference`
      self$`synonyms` <- BrapiVariableObject$`synonyms`
      self$`contextOfUse` <- BrapiVariableObject$`contextOfUse`
      self$`growthStage` <- BrapiVariableObject$`growthStage`
      self$`status` <- BrapiVariableObject$`status`
      self$`xref` <- BrapiVariableObject$`xref`
      self$`institution` <- BrapiVariableObject$`institution`
      self$`scientist` <- BrapiVariableObject$`scientist`
      self$`submissionTimesTamp` <- BrapiVariableObject$`submissionTimesTamp`
      self$`language` <- BrapiVariableObject$`language`
      self$`crop` <- BrapiVariableObject$`crop`
      BrapiVariableTraitObject <- BrapiVariableTrait$new()
      self$`trait` <- BrapiVariableTraitObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$trait, auto_unbox = TRUE))
      BrapiMethodObject <- BrapiMethod$new()
      self$`method` <- BrapiMethodObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$method, auto_unbox = TRUE))
      BrapiScaleObject <- BrapiScale$new()
      self$`scale` <- BrapiScaleObject$fromJSON(jsonlite::toJSON(BrapiVariableObject$scale, auto_unbox = TRUE))
      self$`defaultValue` <- BrapiVariableObject$`defaultValue`
      self$`documentationURL` <- BrapiVariableObject$`documentationURL`
    }
  )
)
