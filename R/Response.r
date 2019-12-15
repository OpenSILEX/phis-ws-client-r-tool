#' Response Class
#'
#' Response Class
#' @export
Response  <- R6::R6Class(
  'Response',
  public = list(
    metadata = NULL,
    data = NULL,
    response = NULL,
    success = FALSE,
    initialize = function(metadata, data, response, success){
      self$metadata <- metadata
      self$data <- data
      self$response <- response
      self$success <- success
    }
  )
)