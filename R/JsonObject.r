# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JsonObject Class
#'
#' @field asString 
#' @field asJsonArray 
#' @field asJsonPrimitive 
#' @field asJsonObject 
#' @field jsonObject 
#' @field jsonPrimitive 
#' @field jsonNull 
#' @field jsonArray 
#' @field asJsonNull 
#' @field asNumber 
#' @field asFloat 
#' @field asByte 
#' @field asCharacter 
#' @field asBigDecimal 
#' @field asBigInteger 
#' @field asShort 
#' @field asBoolean 
#' @field asInt 
#' @field asDouble 
#' @field asLong 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JsonObject <- R6::R6Class(
  'JsonObject',
  public = list(
    `asString` = NULL,
    `asJsonArray` = NULL,
    `asJsonPrimitive` = NULL,
    `asJsonObject` = NULL,
    `jsonObject` = NULL,
    `jsonPrimitive` = NULL,
    `jsonNull` = NULL,
    `jsonArray` = NULL,
    `asJsonNull` = NULL,
    `asNumber` = NULL,
    `asFloat` = NULL,
    `asByte` = NULL,
    `asCharacter` = NULL,
    `asBigDecimal` = NULL,
    `asBigInteger` = NULL,
    `asShort` = NULL,
    `asBoolean` = NULL,
    `asInt` = NULL,
    `asDouble` = NULL,
    `asLong` = NULL,
    initialize = function(`asString`, `asJsonArray`, `asJsonPrimitive`, `asJsonObject`, `jsonObject`, `jsonPrimitive`, `jsonNull`, `jsonArray`, `asJsonNull`, `asNumber`, `asFloat`, `asByte`, `asCharacter`, `asBigDecimal`, `asBigInteger`, `asShort`, `asBoolean`, `asInt`, `asDouble`, `asLong`){
      if (!missing(`asString`)) {
        stopifnot(is.character(`asString`), length(`asString`) == 1)
        self$`asString` <- `asString`
      }
      if (!missing(`asJsonArray`)) {
        stopifnot(R6::is.R6(`asJsonArray`))
        self$`asJsonArray` <- `asJsonArray`
      }
      if (!missing(`asJsonPrimitive`)) {
        stopifnot(R6::is.R6(`asJsonPrimitive`))
        self$`asJsonPrimitive` <- `asJsonPrimitive`
      }
      if (!missing(`asJsonObject`)) {
        stopifnot(R6::is.R6(`asJsonObject`))
        self$`asJsonObject` <- `asJsonObject`
      }
      if (!missing(`jsonObject`)) {
        self$`jsonObject` <- `jsonObject`
      }
      if (!missing(`jsonPrimitive`)) {
        self$`jsonPrimitive` <- `jsonPrimitive`
      }
      if (!missing(`jsonNull`)) {
        self$`jsonNull` <- `jsonNull`
      }
      if (!missing(`jsonArray`)) {
        self$`jsonArray` <- `jsonArray`
      }
      if (!missing(`asJsonNull`)) {
        stopifnot(R6::is.R6(`asJsonNull`))
        self$`asJsonNull` <- `asJsonNull`
      }
      if (!missing(`asNumber`)) {
        stopifnot(R6::is.R6(`asNumber`))
        self$`asNumber` <- `asNumber`
      }
      if (!missing(`asFloat`)) {
        stopifnot(is.numeric(`asFloat`), length(`asFloat`) == 1)
        self$`asFloat` <- `asFloat`
      }
      if (!missing(`asByte`)) {
        stopifnot(is.character(`asByte`), length(`asByte`) == 1)
        self$`asByte` <- `asByte`
      }
      if (!missing(`asCharacter`)) {
        stopifnot(is.character(`asCharacter`), length(`asCharacter`) == 1)
        self$`asCharacter` <- `asCharacter`
      }
      if (!missing(`asBigDecimal`)) {
        self$`asBigDecimal` <- `asBigDecimal`
      }
      if (!missing(`asBigInteger`)) {
        stopifnot(is.numeric(`asBigInteger`), length(`asBigInteger`) == 1)
        self$`asBigInteger` <- `asBigInteger`
      }
      if (!missing(`asShort`)) {
        stopifnot(is.numeric(`asShort`), length(`asShort`) == 1)
        self$`asShort` <- `asShort`
      }
      if (!missing(`asBoolean`)) {
        self$`asBoolean` <- `asBoolean`
      }
      if (!missing(`asInt`)) {
        stopifnot(is.numeric(`asInt`), length(`asInt`) == 1)
        self$`asInt` <- `asInt`
      }
      if (!missing(`asDouble`)) {
        stopifnot(is.numeric(`asDouble`), length(`asDouble`) == 1)
        self$`asDouble` <- `asDouble`
      }
      if (!missing(`asLong`)) {
        stopifnot(is.numeric(`asLong`), length(`asLong`) == 1)
        self$`asLong` <- `asLong`
      }
    },
    toJSON = function() {
      JsonObjectObject <- list()
      if (!is.null(self$`asString`)) {
        JsonObjectObject[['asString']] <- self$`asString`
      }
      if (!is.null(self$`asJsonArray`)) {
        JsonObjectObject[['asJsonArray']] <- self$`asJsonArray`$toJSON()
      }
      if (!is.null(self$`asJsonPrimitive`)) {
        JsonObjectObject[['asJsonPrimitive']] <- self$`asJsonPrimitive`$toJSON()
      }
      if (!is.null(self$`asJsonObject`)) {
        JsonObjectObject[['asJsonObject']] <- self$`asJsonObject`$toJSON()
      }
      if (!is.null(self$`jsonObject`)) {
        JsonObjectObject[['jsonObject']] <- self$`jsonObject`
      }
      if (!is.null(self$`jsonPrimitive`)) {
        JsonObjectObject[['jsonPrimitive']] <- self$`jsonPrimitive`
      }
      if (!is.null(self$`jsonNull`)) {
        JsonObjectObject[['jsonNull']] <- self$`jsonNull`
      }
      if (!is.null(self$`jsonArray`)) {
        JsonObjectObject[['jsonArray']] <- self$`jsonArray`
      }
      if (!is.null(self$`asJsonNull`)) {
        JsonObjectObject[['asJsonNull']] <- self$`asJsonNull`$toJSON()
      }
      if (!is.null(self$`asNumber`)) {
        JsonObjectObject[['asNumber']] <- self$`asNumber`$toJSON()
      }
      if (!is.null(self$`asFloat`)) {
        JsonObjectObject[['asFloat']] <- self$`asFloat`
      }
      if (!is.null(self$`asByte`)) {
        JsonObjectObject[['asByte']] <- self$`asByte`
      }
      if (!is.null(self$`asCharacter`)) {
        JsonObjectObject[['asCharacter']] <- self$`asCharacter`
      }
      if (!is.null(self$`asBigDecimal`)) {
        JsonObjectObject[['asBigDecimal']] <- self$`asBigDecimal`
      }
      if (!is.null(self$`asBigInteger`)) {
        JsonObjectObject[['asBigInteger']] <- self$`asBigInteger`
      }
      if (!is.null(self$`asShort`)) {
        JsonObjectObject[['asShort']] <- self$`asShort`
      }
      if (!is.null(self$`asBoolean`)) {
        JsonObjectObject[['asBoolean']] <- self$`asBoolean`
      }
      if (!is.null(self$`asInt`)) {
        JsonObjectObject[['asInt']] <- self$`asInt`
      }
      if (!is.null(self$`asDouble`)) {
        JsonObjectObject[['asDouble']] <- self$`asDouble`
      }
      if (!is.null(self$`asLong`)) {
        JsonObjectObject[['asLong']] <- self$`asLong`
      }

      JsonObjectObject
    },
    fromJSON = function(JsonObjectJson) {
      JsonObjectObject <- jsonlite::fromJSON(JsonObjectJson)
      if (!is.null(JsonObjectObject$`asString`)) {
        self$`asString` <- JsonObjectObject$`asString`
      }
      if (!is.null(JsonObjectObject$`asJsonArray`)) {
        asJsonArrayObject <- JsonArray$new()
        asJsonArrayObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonArray, auto_unbox = TRUE))
        self$`asJsonArray` <- asJsonArrayObject
      }
      if (!is.null(JsonObjectObject$`asJsonPrimitive`)) {
        asJsonPrimitiveObject <- JsonPrimitive$new()
        asJsonPrimitiveObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonPrimitive, auto_unbox = TRUE))
        self$`asJsonPrimitive` <- asJsonPrimitiveObject
      }
      if (!is.null(JsonObjectObject$`asJsonObject`)) {
        asJsonObjectObject <- JsonObject$new()
        asJsonObjectObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonObject, auto_unbox = TRUE))
        self$`asJsonObject` <- asJsonObjectObject
      }
      if (!is.null(JsonObjectObject$`jsonObject`)) {
        self$`jsonObject` <- JsonObjectObject$`jsonObject`
      }
      if (!is.null(JsonObjectObject$`jsonPrimitive`)) {
        self$`jsonPrimitive` <- JsonObjectObject$`jsonPrimitive`
      }
      if (!is.null(JsonObjectObject$`jsonNull`)) {
        self$`jsonNull` <- JsonObjectObject$`jsonNull`
      }
      if (!is.null(JsonObjectObject$`jsonArray`)) {
        self$`jsonArray` <- JsonObjectObject$`jsonArray`
      }
      if (!is.null(JsonObjectObject$`asJsonNull`)) {
        asJsonNullObject <- JsonNull$new()
        asJsonNullObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonNull, auto_unbox = TRUE))
        self$`asJsonNull` <- asJsonNullObject
      }
      if (!is.null(JsonObjectObject$`asNumber`)) {
        asNumberObject <- Number$new()
        asNumberObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asNumber, auto_unbox = TRUE))
        self$`asNumber` <- asNumberObject
      }
      if (!is.null(JsonObjectObject$`asFloat`)) {
        self$`asFloat` <- JsonObjectObject$`asFloat`
      }
      if (!is.null(JsonObjectObject$`asByte`)) {
        self$`asByte` <- JsonObjectObject$`asByte`
      }
      if (!is.null(JsonObjectObject$`asCharacter`)) {
        self$`asCharacter` <- JsonObjectObject$`asCharacter`
      }
      if (!is.null(JsonObjectObject$`asBigDecimal`)) {
        self$`asBigDecimal` <- JsonObjectObject$`asBigDecimal`
      }
      if (!is.null(JsonObjectObject$`asBigInteger`)) {
        self$`asBigInteger` <- JsonObjectObject$`asBigInteger`
      }
      if (!is.null(JsonObjectObject$`asShort`)) {
        self$`asShort` <- JsonObjectObject$`asShort`
      }
      if (!is.null(JsonObjectObject$`asBoolean`)) {
        self$`asBoolean` <- JsonObjectObject$`asBoolean`
      }
      if (!is.null(JsonObjectObject$`asInt`)) {
        self$`asInt` <- JsonObjectObject$`asInt`
      }
      if (!is.null(JsonObjectObject$`asDouble`)) {
        self$`asDouble` <- JsonObjectObject$`asDouble`
      }
      if (!is.null(JsonObjectObject$`asLong`)) {
        self$`asLong` <- JsonObjectObject$`asLong`
      }
    },
    fromJSONObject = function(JsonObjectObject) {
      if (!is.null(JsonObjectObject$`asString`)) {
        self$`asString` <- JsonObjectObject$`asString`
      }
      if (!is.null(JsonObjectObject$`asJsonArray`)) {
        asJsonArrayObject <- JsonArray$new()
        asJsonArrayObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonArray, auto_unbox = TRUE))
        self$`asJsonArray` <- asJsonArrayObject
      }
      if (!is.null(JsonObjectObject$`asJsonPrimitive`)) {
        asJsonPrimitiveObject <- JsonPrimitive$new()
        asJsonPrimitiveObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonPrimitive, auto_unbox = TRUE))
        self$`asJsonPrimitive` <- asJsonPrimitiveObject
      }
      if (!is.null(JsonObjectObject$`asJsonObject`)) {
        asJsonObjectObject <- JsonObject$new()
        asJsonObjectObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonObject, auto_unbox = TRUE))
        self$`asJsonObject` <- asJsonObjectObject
      }
      if (!is.null(JsonObjectObject$`jsonObject`)) {
        self$`jsonObject` <- JsonObjectObject$`jsonObject`
      }
      if (!is.null(JsonObjectObject$`jsonPrimitive`)) {
        self$`jsonPrimitive` <- JsonObjectObject$`jsonPrimitive`
      }
      if (!is.null(JsonObjectObject$`jsonNull`)) {
        self$`jsonNull` <- JsonObjectObject$`jsonNull`
      }
      if (!is.null(JsonObjectObject$`jsonArray`)) {
        self$`jsonArray` <- JsonObjectObject$`jsonArray`
      }
      if (!is.null(JsonObjectObject$`asJsonNull`)) {
        asJsonNullObject <- JsonNull$new()
        asJsonNullObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonNull, auto_unbox = TRUE))
        self$`asJsonNull` <- asJsonNullObject
      }
      if (!is.null(JsonObjectObject$`asNumber`)) {
        asNumberObject <- Number$new()
        asNumberObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asNumber, auto_unbox = TRUE))
        self$`asNumber` <- asNumberObject
      }
      if (!is.null(JsonObjectObject$`asFloat`)) {
        self$`asFloat` <- JsonObjectObject$`asFloat`
      }
      if (!is.null(JsonObjectObject$`asByte`)) {
        self$`asByte` <- JsonObjectObject$`asByte`
      }
      if (!is.null(JsonObjectObject$`asCharacter`)) {
        self$`asCharacter` <- JsonObjectObject$`asCharacter`
      }
      if (!is.null(JsonObjectObject$`asBigDecimal`)) {
        self$`asBigDecimal` <- JsonObjectObject$`asBigDecimal`
      }
      if (!is.null(JsonObjectObject$`asBigInteger`)) {
        self$`asBigInteger` <- JsonObjectObject$`asBigInteger`
      }
      if (!is.null(JsonObjectObject$`asShort`)) {
        self$`asShort` <- JsonObjectObject$`asShort`
      }
      if (!is.null(JsonObjectObject$`asBoolean`)) {
        self$`asBoolean` <- JsonObjectObject$`asBoolean`
      }
      if (!is.null(JsonObjectObject$`asInt`)) {
        self$`asInt` <- JsonObjectObject$`asInt`
      }
      if (!is.null(JsonObjectObject$`asDouble`)) {
        self$`asDouble` <- JsonObjectObject$`asDouble`
      }
      if (!is.null(JsonObjectObject$`asLong`)) {
        self$`asLong` <- JsonObjectObject$`asLong`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "asString": %s,
           "asJsonArray": %s,
           "asJsonPrimitive": %s,
           "asJsonObject": %s,
           "jsonObject": %s,
           "jsonPrimitive": %s,
           "jsonNull": %s,
           "jsonArray": %s,
           "asJsonNull": %s,
           "asNumber": %s,
           "asFloat": %d,
           "asByte": %s,
           "asCharacter": %s,
           "asBigDecimal": %s,
           "asBigInteger": %d,
           "asShort": %s,
           "asBoolean": %s,
           "asInt": %s,
           "asDouble": %d,
           "asLong": %d
        }',
        jsonlite::toJSON(self$`asString`,auto_unbox=TRUE),
        self$`asJsonArray`$toJSON(),
        self$`asJsonPrimitive`$toJSON(),
        self$`asJsonObject`$toJSON(),
        jsonlite::toJSON(self$`jsonObject`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`jsonPrimitive`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`jsonNull`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`jsonArray`,auto_unbox=TRUE),
        self$`asJsonNull`$toJSON(),
        self$`asNumber`$toJSON(),
        jsonlite::toJSON(self$`asFloat`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asByte`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asCharacter`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asBigDecimal`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asBigInteger`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asShort`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asBoolean`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asInt`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asDouble`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`asLong`,auto_unbox=TRUE)
      )
    },
    fromJSONString = function(JsonObjectJson) {
      JsonObjectObject <- jsonlite::fromJSON(JsonObjectJson)
      self$`asString` <- JsonObjectObject$`asString`
      JsonArrayObject <- JsonArray$new()
      self$`asJsonArray` <- JsonArrayObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonArray, auto_unbox = TRUE))
      JsonPrimitiveObject <- JsonPrimitive$new()
      self$`asJsonPrimitive` <- JsonPrimitiveObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonPrimitive, auto_unbox = TRUE))
      JsonObjectObject <- JsonObject$new()
      self$`asJsonObject` <- JsonObjectObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonObject, auto_unbox = TRUE))
      self$`jsonObject` <- JsonObjectObject$`jsonObject`
      self$`jsonPrimitive` <- JsonObjectObject$`jsonPrimitive`
      self$`jsonNull` <- JsonObjectObject$`jsonNull`
      self$`jsonArray` <- JsonObjectObject$`jsonArray`
      JsonNullObject <- JsonNull$new()
      self$`asJsonNull` <- JsonNullObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asJsonNull, auto_unbox = TRUE))
      NumberObject <- Number$new()
      self$`asNumber` <- NumberObject$fromJSON(jsonlite::toJSON(JsonObjectObject$asNumber, auto_unbox = TRUE))
      self$`asFloat` <- JsonObjectObject$`asFloat`
      self$`asByte` <- JsonObjectObject$`asByte`
      self$`asCharacter` <- JsonObjectObject$`asCharacter`
      self$`asBigDecimal` <- JsonObjectObject$`asBigDecimal`
      self$`asBigInteger` <- JsonObjectObject$`asBigInteger`
      self$`asShort` <- JsonObjectObject$`asShort`
      self$`asBoolean` <- JsonObjectObject$`asBoolean`
      self$`asInt` <- JsonObjectObject$`asInt`
      self$`asDouble` <- JsonObjectObject$`asDouble`
      self$`asLong` <- JsonObjectObject$`asLong`
    }
  )
)