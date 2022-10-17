#' @docType class
#' @title ETradeAggressiveSide
#' @description ETradeAggressiveSide Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ETradeAggressiveSide <- R6::R6Class(
  "ETradeAggressiveSide",
  public = list(
    #' Initialize a new ETradeAggressiveSide class.
    #'
    #' @description
    #' Initialize a new ETradeAggressiveSide class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ETradeAggressiveSide()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec)
          stop("Use one of the valid values: ",
              paste0(enumvec, collapse = ", "))
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ETradeAggressiveSide in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ETradeAggressiveSide
    #'
    #' @description
    #' Deserialize JSON string into an instance of ETradeAggressiveSide
    #'
    #' @param input_json the JSON input
    #' @return the instance of ETradeAggressiveSide
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ETradeAggressiveSide in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of ETradeAggressiveSide
    #'
    #' @description
    #' Deserialize JSON string into an instance of ETradeAggressiveSide
    #'
    #' @param input_json the JSON input
    #' @return the instance of ETradeAggressiveSide
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_ETradeAggressiveSide <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Buy, Sell, EstimatedBuy, EstimatedSell, Unknown]")
  unlist(strsplit(res, ", "))
}

