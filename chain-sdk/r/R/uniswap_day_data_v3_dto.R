#' Create a new UniswapDayDataV3DTO
#'
#' @description
#' Data accumulated and condensed into day stats for all of Uniswap.
#'
#' @docType class
#' @title UniswapDayDataV3DTO
#' @description UniswapDayDataV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field vid  integer [optional]
#' @field id Timestamp rounded to current day by dividing by 86400. character [optional]
#' @field date Timestamp rounded to current day by dividing by 86400. integer [optional]
#' @field volume_eth Total volume across all pairs on this day, stored as a derived amount of ETH. character [optional]
#' @field volume_usd Total volume across all pairs on this day, stored as a derived amount of USD. character [optional]
#' @field volume_usd_untracked Total daily volume in Uniswap derived in terms of USD untracked. character [optional]
#' @field fees_usd Fees in USD character [optional]
#' @field tx_count  \link{BigInteger} [optional]
#' @field tvl_usd Tvl in terms of USD. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapDayDataV3DTO <- R6::R6Class(
  "UniswapDayDataV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `date` = NULL,
    `volume_eth` = NULL,
    `volume_usd` = NULL,
    `volume_usd_untracked` = NULL,
    `fees_usd` = NULL,
    `tx_count` = NULL,
    `tvl_usd` = NULL,
    #' Initialize a new UniswapDayDataV3DTO class.
    #'
    #' @description
    #' Initialize a new UniswapDayDataV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param id Timestamp rounded to current day by dividing by 86400.
    #' @param date Timestamp rounded to current day by dividing by 86400.
    #' @param volume_eth Total volume across all pairs on this day, stored as a derived amount of ETH.
    #' @param volume_usd Total volume across all pairs on this day, stored as a derived amount of USD.
    #' @param volume_usd_untracked Total daily volume in Uniswap derived in terms of USD untracked.
    #' @param fees_usd Fees in USD
    #' @param tx_count tx_count
    #' @param tvl_usd Tvl in terms of USD.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `date` = NULL, `volume_eth` = NULL, `volume_usd` = NULL, `volume_usd_untracked` = NULL, `fees_usd` = NULL, `tx_count` = NULL, `tvl_usd` = NULL, ...
    ) {
      if (!is.null(`entry_time`)) {
        stopifnot(is.character(`entry_time`), length(`entry_time`) == 1)
        self$`entry_time` <- `entry_time`
      }
      if (!is.null(`recv_time`)) {
        stopifnot(is.character(`recv_time`), length(`recv_time`) == 1)
        self$`recv_time` <- `recv_time`
      }
      if (!is.null(`block_number`)) {
        stopifnot(is.numeric(`block_number`), length(`block_number`) == 1)
        self$`block_number` <- `block_number`
      }
      if (!is.null(`vid`)) {
        stopifnot(is.numeric(`vid`), length(`vid`) == 1)
        self$`vid` <- `vid`
      }
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`date`)) {
        stopifnot(is.numeric(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!is.null(`volume_eth`)) {
        stopifnot(is.character(`volume_eth`), length(`volume_eth`) == 1)
        self$`volume_eth` <- `volume_eth`
      }
      if (!is.null(`volume_usd`)) {
        stopifnot(is.character(`volume_usd`), length(`volume_usd`) == 1)
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`volume_usd_untracked`)) {
        stopifnot(is.character(`volume_usd_untracked`), length(`volume_usd_untracked`) == 1)
        self$`volume_usd_untracked` <- `volume_usd_untracked`
      }
      if (!is.null(`fees_usd`)) {
        stopifnot(is.character(`fees_usd`), length(`fees_usd`) == 1)
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`tvl_usd`)) {
        stopifnot(is.character(`tvl_usd`), length(`tvl_usd`) == 1)
        self$`tvl_usd` <- `tvl_usd`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapDayDataV3DTO in JSON format
    #' @export
    toJSON = function() {
      UniswapDayDataV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapDayDataV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapDayDataV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapDayDataV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapDayDataV3DTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapDayDataV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapDayDataV3DTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`volume_eth`)) {
        UniswapDayDataV3DTOObject[["volume_eth"]] <-
          self$`volume_eth`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapDayDataV3DTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`volume_usd_untracked`)) {
        UniswapDayDataV3DTOObject[["volume_usd_untracked"]] <-
          self$`volume_usd_untracked`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapDayDataV3DTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapDayDataV3DTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`tvl_usd`)) {
        UniswapDayDataV3DTOObject[["tvl_usd"]] <-
          self$`tvl_usd`
      }
      UniswapDayDataV3DTOObject
    },
    #' Deserialize JSON string into an instance of UniswapDayDataV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapDayDataV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapDayDataV3DTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entry_time`)) {
        self$`entry_time` <- this_object$`entry_time`
      }
      if (!is.null(this_object$`recv_time`)) {
        self$`recv_time` <- this_object$`recv_time`
      }
      if (!is.null(this_object$`block_number`)) {
        self$`block_number` <- this_object$`block_number`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`volume_eth`)) {
        self$`volume_eth` <- this_object$`volume_eth`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`volume_usd_untracked`)) {
        self$`volume_usd_untracked` <- this_object$`volume_usd_untracked`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        tx_count_object <- BigInteger$new()
        tx_count_object$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- tx_count_object
      }
      if (!is.null(this_object$`tvl_usd`)) {
        self$`tvl_usd` <- this_object$`tvl_usd`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapDayDataV3DTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entry_time`)) {
          sprintf(
          '"entry_time":
            "%s"
                    ',
          self$`entry_time`
          )
        },
        if (!is.null(self$`recv_time`)) {
          sprintf(
          '"recv_time":
            "%s"
                    ',
          self$`recv_time`
          )
        },
        if (!is.null(self$`block_number`)) {
          sprintf(
          '"block_number":
            %d
                    ',
          self$`block_number`
          )
        },
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            %d
                    ',
          self$`date`
          )
        },
        if (!is.null(self$`volume_eth`)) {
          sprintf(
          '"volume_eth":
            "%s"
                    ',
          self$`volume_eth`
          )
        },
        if (!is.null(self$`volume_usd`)) {
          sprintf(
          '"volume_usd":
            "%s"
                    ',
          self$`volume_usd`
          )
        },
        if (!is.null(self$`volume_usd_untracked`)) {
          sprintf(
          '"volume_usd_untracked":
            "%s"
                    ',
          self$`volume_usd_untracked`
          )
        },
        if (!is.null(self$`fees_usd`)) {
          sprintf(
          '"fees_usd":
            "%s"
                    ',
          self$`fees_usd`
          )
        },
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
          %s
          ',
          jsonlite::toJSON(self$`tx_count`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`tvl_usd`)) {
          sprintf(
          '"tvl_usd":
            "%s"
                    ',
          self$`tvl_usd`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapDayDataV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapDayDataV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapDayDataV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`volume_eth` <- this_object$`volume_eth`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`volume_usd_untracked` <- this_object$`volume_usd_untracked`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`tx_count` <- BigInteger$new()$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
      self$`tvl_usd` <- this_object$`tvl_usd`
      self
    },
    #' Validate JSON input with respect to UniswapDayDataV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapDayDataV3DTO and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UniswapDayDataV3DTO
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#UniswapDayDataV3DTO$unlock()
#
## Below is an example to define the print fnuction
#UniswapDayDataV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UniswapDayDataV3DTO$lock()

