# openSilexTestAPI
#
# An instance of OpenSILEX WebService
#
# OpenAPI spec version: 3.3.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JsonPrimitive Class
#'
#' @field asString 
#' @field boolean 
#' @field number 
#' @field string 
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
#' @field asJsonArray 
#' @field asJsonPrimitive 
#' @field asJsonObject 
#' @field jsonObject 
#' @field jsonPrimitive 
#' @field jsonNull 
#' @field jsonArray 
#' @field asJsonNull 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JsonPrimitive <- R6::R6Class(
  'JsonPrimitive',
  public = list(
    `asString` = NULL,
    `boolean` = NULL,
    `number` = NULL,
    `string` = NULL,
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
    `asJsonArray` = NULL,
    `asJsonPrimitive` = NULL,
    `asJsonObject` = NULL,
    `jsonObject` = NULL,
    `jsonPrimitive` = NULL,
    `jsonNull` = NULL,
    `jsonArray` = NULL,
    `asJsonNull` = NULL,
    initialize = function(`asString`, `boolean`, `number`, `string`, `asNumber`, `asFloat`, `asByte`, `asCharacter`, `asBigDecimal`, `asBigInteger`, `asShort`, `asBoolean`, `asInt`, `asDouble`, `asLong`, `asJsonArray`, `asJsonPrimitive`, `asJsonObject`, `jsonObject`, `jsonPrimitive`, `jsonNull`, `jsonArray`, `asJsonNull`){
      if (!missing(`asString`)) {
        stopifnot(is.character(`asString`), length(`asString`) == 1)
        self$`asString` <- `asString`
      }
      if (!missing(`boolean`)) {
        self$`boolean` <- `boolean`
      }
      if (!missing(`number`)) {
        self$`number` <- `number`
      }
      if (!missing(`string`)) {
        self$`string` <- `string`
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
    },
    toJSON = function() {
      JsonPrimitiveObject <- list()
      if (!is.null(self$`asString`)) {
        JsonPrimitiveObject[['asString']] <- self$`asString`
      }
      if (!is.null(self$`boolean`)) {
        JsonPrimitiveObject[['boolean']] <- self$`boolean`
      }
      if (!is.null(self$`number`)) {
        JsonPrimitiveObject[['number']] <- self$`number`
      }
      if (!is.null(self$`string`)) {
        JsonPrimitiveObject[['string']] <- self$`string`
      }
      if (!is.null(self$`asNumber`)) {
        JsonPrimitiveObject[['asNumber']] <- self$`asNumber`$toJSON()
      }
      if (!is.null(self$`asFloat`)) {
        JsonPrimitiveObject[['asFloat']] <- self$`asFloat`
      }
      if (!is.null(self$`asByte`)) {
        JsonPrimitiveObject[['asByte']] <- self$`asByte`
      }
      if (!is.null(self$`asCharacter`)) {
        JsonPrimitiveObject[['asCharacter']] <- self$`asCharacter`
      }
      if (!is.null(self$`asBigDecimal`)) {
        JsonPrimitiveObject[['asBigDecimal']] <- self$`asBigDecimal`
      }
      if (!is.null(self$`asBigInteger`)) {
        JsonPrimitiveObject[['asBigInteger']] <- self$`asBigInteger`
      }
      if (!is.null(self$`asShort`)) {
        JsonPrimitiveObject[['asShort']] <- self$`asShort`
      }
      if (!is.null(self$`asBoolean`)) {
        JsonPrimitiveObject[['asBoolean']] <- self$`asBoolean`
      }
      if (!is.null(self$`asInt`)) {
        JsonPrimitiveObject[['asInt']] <- self$`asInt`
      }
      if (!is.null(self$`asDouble`)) {
        JsonPrimitiveObject[['asDouble']] <- self$`asDouble`
      }
      if (!is.null(self$`asLong`)) {
        JsonPrimitiveObject[['asLong']] <- self$`asLong`
      }
      if (!is.null(self$`asJsonArray`)) {
        JsonPrimitiveObject[['asJsonArray']] <- self$`asJsonArray`$toJSON()
      }
      if (!is.null(self$`asJsonPrimitive`)) {
        JsonPrimitiveObject[['asJsonPrimitive']] <- self$`asJsonPrimitive`$toJSON()
      }
      if (!is.null(self$`asJsonObject`)) {
        JsonPrimitiveObject[['asJsonObject']] <- self$`asJsonObject`$toJSON()
      }
      if (!is.null(self$`jsonObject`)) {
        JsonPrimitiveObject[['jsonObject']] <- self$`jsonObject`
      }
      if (!is.null(self$`jsonPrimitive`)) {
        JsonPrimitiveObject[['jsonPrimitive']] <- self$`jsonPrimitive`
      }
      if (!is.null(self$`jsonNull`)) {
        JsonPrimitiveObject[['jsonNull']] <- self$`jsonNull`
      }
      if (!is.null(self$`jsonArray`)) {
        JsonPrimitiveObject[['jsonArray']] <- self$`jsonArray`
      }
      if (!is.null(self$`asJsonNull`)) {
        JsonPrimitiveObject[['asJsonNull']] <- self$`asJsonNull`$toJSON()
      }

      JsonPrimitiveObject
    },
    fromJSON = function(JsonPrimitiveJson) {
      JsonPrimitiveObject <- jsonlite::fromJSON(JsonPrimitiveJson)
      if (!is.null(JsonPrimitiveObject$`asString`)) {
        self$`asString` <- JsonPrimitiveObject$`asString`
      }
      if (!is.null(JsonPrimitiveObject$`boolean`)) {
        self$`boolean` <- JsonPrimitiveObject$`boolean`
      }
      if (!is.null(JsonPrimitiveObject$`number`)) {
        self$`number` <- JsonPrimitiveObject$`number`
      }
      if (!is.null(JsonPrimitiveObject$`string`)) {
        self$`string` <- JsonPrimitiveObject$`string`
      }
      if (!is.null(JsonPrimitiveObject$`asNumber`)) {
        asNumberObject <- Number$new()
        asNumberObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asNumber, auto_unbox = TRUE))
        self$`asNumber` <- asNumberObject
      }
      if (!is.null(JsonPrimitiveObject$`asFloat`)) {
        self$`asFloat` <- JsonPrimitiveObject$`asFloat`
      }
      if (!is.null(JsonPrimitiveObject$`asByte`)) {
        self$`asByte` <- JsonPrimitiveObject$`asByte`
      }
      if (!is.null(JsonPrimitiveObject$`asCharacter`)) {
        self$`asCharacter` <- JsonPrimitiveObject$`asCharacter`
      }
      if (!is.null(JsonPrimitiveObject$`asBigDecimal`)) {
        self$`asBigDecimal` <- JsonPrimitiveObject$`asBigDecimal`
      }
      if (!is.null(JsonPrimitiveObject$`asBigInteger`)) {
        self$`asBigInteger` <- JsonPrimitiveObject$`asBigInteger`
      }
      if (!is.null(JsonPrimitiveObject$`asShort`)) {
        self$`asShort` <- JsonPrimitiveObject$`asShort`
      }
      if (!is.null(JsonPrimitiveObject$`asBoolean`)) {
        self$`asBoolean` <- JsonPrimitiveObject$`asBoolean`
      }
      if (!is.null(JsonPrimitiveObject$`asInt`)) {
        self$`asInt` <- JsonPrimitiveObject$`asInt`
      }
      if (!is.null(JsonPrimitiveObject$`asDouble`)) {
        self$`asDouble` <- JsonPrimitiveObject$`asDouble`
      }
      if (!is.null(JsonPrimitiveObject$`asLong`)) {
        self$`asLong` <- JsonPrimitiveObject$`asLong`
      }
      if (!is.null(JsonPrimitiveObject$`asJsonArray`)) {
        asJsonArrayObject <- JsonArray$new()
        asJsonArrayObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonArray, auto_unbox = TRUE))
        self$`asJsonArray` <- asJsonArrayObject
      }
      if (!is.null(JsonPrimitiveObject$`asJsonPrimitive`)) {
        asJsonPrimitiveObject <- JsonPrimitive$new()
        asJsonPrimitiveObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonPrimitive, auto_unbox = TRUE))
        self$`asJsonPrimitive` <- asJsonPrimitiveObject
      }
      if (!is.null(JsonPrimitiveObject$`asJsonObject`)) {
        asJsonObjectObject <- JsonObject$new()
        asJsonObjectObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonObject, auto_unbox = TRUE))
        self$`asJsonObject` <- asJsonObjectObject
      }
      if (!is.null(JsonPrimitiveObject$`jsonObject`)) {
        self$`jsonObject` <- JsonPrimitiveObject$`jsonObject`
      }
      if (!is.null(JsonPrimitiveObject$`jsonPrimitive`)) {
        self$`jsonPrimitive` <- JsonPrimitiveObject$`jsonPrimitive`
      }
      if (!is.null(JsonPrimitiveObject$`jsonNull`)) {
        self$`jsonNull` <- JsonPrimitiveObject$`jsonNull`
      }
      if (!is.null(JsonPrimitiveObject$`jsonArray`)) {
        self$`jsonArray` <- JsonPrimitiveObject$`jsonArray`
      }
      if (!is.null(JsonPrimitiveObject$`asJsonNull`)) {
        asJsonNullObject <- JsonNull$new()
        asJsonNullObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonNull, auto_unbox = TRUE))
        self$`asJsonNull` <- asJsonNullObject
      }
    },
    fromJSONObject = function(JsonPrimitiveObject) {
      if (!is.null(JsonPrimitiveObject$`asString`)) {
        self$`asString` <- JsonPrimitiveObject$`asString`
      }
      if (!is.null(JsonPrimitiveObject$`boolean`)) {
        self$`boolean` <- JsonPrimitiveObject$`boolean`
      }
      if (!is.null(JsonPrimitiveObject$`number`)) {
        self$`number` <- JsonPrimitiveObject$`number`
      }
      if (!is.null(JsonPrimitiveObject$`string`)) {
        self$`string` <- JsonPrimitiveObject$`string`
      }
      if (!is.null(JsonPrimitiveObject$`asNumber`)) {
        asNumberObject <- Number$new()
        asNumberObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asNumber, auto_unbox = TRUE))
        self$`asNumber` <- asNumberObject
      }
      if (!is.null(JsonPrimitiveObject$`asFloat`)) {
        self$`asFloat` <- JsonPrimitiveObject$`asFloat`
      }
      if (!is.null(JsonPrimitiveObject$`asByte`)) {
        self$`asByte` <- JsonPrimitiveObject$`asByte`
      }
      if (!is.null(JsonPrimitiveObject$`asCharacter`)) {
        self$`asCharacter` <- JsonPrimitiveObject$`asCharacter`
      }
      if (!is.null(JsonPrimitiveObject$`asBigDecimal`)) {
        self$`asBigDecimal` <- JsonPrimitiveObject$`asBigDecimal`
      }
      if (!is.null(JsonPrimitiveObject$`asBigInteger`)) {
        self$`asBigInteger` <- JsonPrimitiveObject$`asBigInteger`
      }
      if (!is.null(JsonPrimitiveObject$`asShort`)) {
        self$`asShort` <- JsonPrimitiveObject$`asShort`
      }
      if (!is.null(JsonPrimitiveObject$`asBoolean`)) {
        self$`asBoolean` <- JsonPrimitiveObject$`asBoolean`
      }
      if (!is.null(JsonPrimitiveObject$`asInt`)) {
        self$`asInt` <- JsonPrimitiveObject$`asInt`
      }
      if (!is.null(JsonPrimitiveObject$`asDouble`)) {
        self$`asDouble` <- JsonPrimitiveObject$`asDouble`
      }
      if (!is.null(JsonPrimitiveObject$`asLong`)) {
        self$`asLong` <- JsonPrimitiveObject$`asLong`
      }
      if (!is.null(JsonPrimitiveObject$`asJsonArray`)) {
        asJsonArrayObject <- JsonArray$new()
        asJsonArrayObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonArray, auto_unbox = TRUE))
        self$`asJsonArray` <- asJsonArrayObject
      }
      if (!is.null(JsonPrimitiveObject$`asJsonPrimitive`)) {
        asJsonPrimitiveObject <- JsonPrimitive$new()
        asJsonPrimitiveObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonPrimitive, auto_unbox = TRUE))
        self$`asJsonPrimitive` <- asJsonPrimitiveObject
      }
      if (!is.null(JsonPrimitiveObject$`asJsonObject`)) {
        asJsonObjectObject <- JsonObject$new()
        asJsonObjectObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonObject, auto_unbox = TRUE))
        self$`asJsonObject` <- asJsonObjectObject
      }
      if (!is.null(JsonPrimitiveObject$`jsonObject`)) {
        self$`jsonObject` <- JsonPrimitiveObject$`jsonObject`
      }
      if (!is.null(JsonPrimitiveObject$`jsonPrimitive`)) {
        self$`jsonPrimitive` <- JsonPrimitiveObject$`jsonPrimitive`
      }
      if (!is.null(JsonPrimitiveObject$`jsonNull`)) {
        self$`jsonNull` <- JsonPrimitiveObject$`jsonNull`
      }
      if (!is.null(JsonPrimitiveObject$`jsonArray`)) {
        self$`jsonArray` <- JsonPrimitiveObject$`jsonArray`
      }
      if (!is.null(JsonPrimitiveObject$`asJsonNull`)) {
        asJsonNullObject <- JsonNull$new()
        asJsonNullObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonNull, auto_unbox = TRUE))
        self$`asJsonNull` <- asJsonNullObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "asString": %s,
           "boolean": %s,
           "number": %s,
           "string": %s,
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
           "asLong": %d,
           "asJsonArray": %s,
           "asJsonPrimitive": %s,
           "asJsonObject": %s,
           "jsonObject": %s,
           "jsonPrimitive": %s,
           "jsonNull": %s,
           "jsonArray": %s,
           "asJsonNull": %s
        }',
        jsonlite::toJSON(self$`asString`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`boolean`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`number`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`string`,auto_unbox=TRUE),
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
        jsonlite::toJSON(self$`asLong`,auto_unbox=TRUE),
        self$`asJsonArray`$toJSON(),
        self$`asJsonPrimitive`$toJSON(),
        self$`asJsonObject`$toJSON(),
        jsonlite::toJSON(self$`jsonObject`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`jsonPrimitive`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`jsonNull`,auto_unbox=TRUE),
        jsonlite::toJSON(self$`jsonArray`,auto_unbox=TRUE),
        self$`asJsonNull`$toJSON()
      )
    },
    fromJSONString = function(JsonPrimitiveJson) {
      JsonPrimitiveObject <- jsonlite::fromJSON(JsonPrimitiveJson)
      self$`asString` <- JsonPrimitiveObject$`asString`
      self$`boolean` <- JsonPrimitiveObject$`boolean`
      self$`number` <- JsonPrimitiveObject$`number`
      self$`string` <- JsonPrimitiveObject$`string`
      NumberObject <- Number$new()
      self$`asNumber` <- NumberObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asNumber, auto_unbox = TRUE))
      self$`asFloat` <- JsonPrimitiveObject$`asFloat`
      self$`asByte` <- JsonPrimitiveObject$`asByte`
      self$`asCharacter` <- JsonPrimitiveObject$`asCharacter`
      self$`asBigDecimal` <- JsonPrimitiveObject$`asBigDecimal`
      self$`asBigInteger` <- JsonPrimitiveObject$`asBigInteger`
      self$`asShort` <- JsonPrimitiveObject$`asShort`
      self$`asBoolean` <- JsonPrimitiveObject$`asBoolean`
      self$`asInt` <- JsonPrimitiveObject$`asInt`
      self$`asDouble` <- JsonPrimitiveObject$`asDouble`
      self$`asLong` <- JsonPrimitiveObject$`asLong`
      JsonArrayObject <- JsonArray$new()
      self$`asJsonArray` <- JsonArrayObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonArray, auto_unbox = TRUE))
      JsonPrimitiveObject <- JsonPrimitive$new()
      self$`asJsonPrimitive` <- JsonPrimitiveObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonPrimitive, auto_unbox = TRUE))
      JsonObjectObject <- JsonObject$new()
      self$`asJsonObject` <- JsonObjectObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonObject, auto_unbox = TRUE))
      self$`jsonObject` <- JsonPrimitiveObject$`jsonObject`
      self$`jsonPrimitive` <- JsonPrimitiveObject$`jsonPrimitive`
      self$`jsonNull` <- JsonPrimitiveObject$`jsonNull`
      self$`jsonArray` <- JsonPrimitiveObject$`jsonArray`
      JsonNullObject <- JsonNull$new()
      self$`asJsonNull` <- JsonNullObject$fromJSON(jsonlite::toJSON(JsonPrimitiveObject$asJsonNull, auto_unbox = TRUE))
    }
  )
)
