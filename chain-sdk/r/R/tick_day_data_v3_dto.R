#' Create a new TickDayDataV3DTO
#'
#' @description
#' TickDayDataV3DTO Class
#'
#' @docType class
#' @title TickDayDataV3DTO
#' @description TickDayDataV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field date  integer [optional]
#' @field pool  character [optional]
#' @field tick  character [optional]
#' @field liquidity_gross  character [optional]
#' @field liquidity_net  character [optional]
#' @field volume_token_0  character [optional]
#' @field volume_token_1  character [optional]
#' @field volume_usd  character [optional]
#' @field fees_usd  character [optional]
#' @field fee_growth_outside_0x128  character [optional]
#' @field fee_growth_outside_1x128  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TickDayDataV3DTO <- R6::R6Class(
  "TickDayDataV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `pool` = NULL,
    `tick` = NULL,
    `liquidity_gross` = NULL,
    `liquidity_net` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `fees_usd` = NULL,
    `fee_growth_outside_0x128` = NULL,
    `fee_growth_outside_1x128` = NULL,
    `vid` = NULL,
    #' Initialize a new TickDayDataV3DTO class.
    #'
    #' @description
    #' Initialize a new TickDayDataV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param id 
    #' @param date 
    #' @param pool 
    #' @param tick 
    #' @param liquidity_gross 
    #' @param liquidity_net 
    #' @param volume_token_0 
    #' @param volume_token_1 
    #' @param volume_usd 
    #' @param fees_usd 
    #' @param fee_growth_outside_0x128 
    #' @param fee_growth_outside_1x128 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `pool` = NULL, `tick` = NULL, `liquidity_gross` = NULL, `liquidity_net` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `fees_usd` = NULL, `fee_growth_outside_0x128` = NULL, `fee_growth_outside_1x128` = NULL, `vid` = NULL, ...
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
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`date`)) {
        stopifnot(is.numeric(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!is.null(`pool`)) {
        stopifnot(is.character(`pool`), length(`pool`) == 1)
        self$`pool` <- `pool`
      }
      if (!is.null(`tick`)) {
        stopifnot(is.character(`tick`), length(`tick`) == 1)
        self$`tick` <- `tick`
      }
      if (!is.null(`liquidity_gross`)) {
        stopifnot(is.character(`liquidity_gross`), length(`liquidity_gross`) == 1)
        self$`liquidity_gross` <- `liquidity_gross`
      }
      if (!is.null(`liquidity_net`)) {
        stopifnot(is.character(`liquidity_net`), length(`liquidity_net`) == 1)
        self$`liquidity_net` <- `liquidity_net`
      }
      if (!is.null(`volume_token_0`)) {
        stopifnot(is.character(`volume_token_0`), length(`volume_token_0`) == 1)
        self$`volume_token_0` <- `volume_token_0`
      }
      if (!is.null(`volume_token_1`)) {
        stopifnot(is.character(`volume_token_1`), length(`volume_token_1`) == 1)
        self$`volume_token_1` <- `volume_token_1`
      }
      if (!is.null(`volume_usd`)) {
        stopifnot(is.character(`volume_usd`), length(`volume_usd`) == 1)
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`fees_usd`)) {
        stopifnot(is.character(`fees_usd`), length(`fees_usd`) == 1)
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`fee_growth_outside_0x128`)) {
        stopifnot(is.character(`fee_growth_outside_0x128`), length(`fee_growth_outside_0x128`) == 1)
        self$`fee_growth_outside_0x128` <- `fee_growth_outside_0x128`
      }
      if (!is.null(`fee_growth_outside_1x128`)) {
        stopifnot(is.character(`fee_growth_outside_1x128`), length(`fee_growth_outside_1x128`) == 1)
        self$`fee_growth_outside_1x128` <- `fee_growth_outside_1x128`
      }
      if (!is.null(`vid`)) {
        stopifnot(is.numeric(`vid`), length(`vid`) == 1)
        self$`vid` <- `vid`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TickDayDataV3DTO in JSON format
    #' @export
    toJSON = function() {
      TickDayDataV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        TickDayDataV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        TickDayDataV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        TickDayDataV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        TickDayDataV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        TickDayDataV3DTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`pool`)) {
        TickDayDataV3DTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`tick`)) {
        TickDayDataV3DTOObject[["tick"]] <-
          self$`tick`
      }
      if (!is.null(self$`liquidity_gross`)) {
        TickDayDataV3DTOObject[["liquidity_gross"]] <-
          self$`liquidity_gross`
      }
      if (!is.null(self$`liquidity_net`)) {
        TickDayDataV3DTOObject[["liquidity_net"]] <-
          self$`liquidity_net`
      }
      if (!is.null(self$`volume_token_0`)) {
        TickDayDataV3DTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        TickDayDataV3DTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        TickDayDataV3DTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        TickDayDataV3DTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`fee_growth_outside_0x128`)) {
        TickDayDataV3DTOObject[["fee_growth_outside_0x128"]] <-
          self$`fee_growth_outside_0x128`
      }
      if (!is.null(self$`fee_growth_outside_1x128`)) {
        TickDayDataV3DTOObject[["fee_growth_outside_1x128"]] <-
          self$`fee_growth_outside_1x128`
      }
      if (!is.null(self$`vid`)) {
        TickDayDataV3DTOObject[["vid"]] <-
          self$`vid`
      }
      TickDayDataV3DTOObject
    },
    #' Deserialize JSON string into an instance of TickDayDataV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TickDayDataV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TickDayDataV3DTO
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
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`tick`)) {
        self$`tick` <- this_object$`tick`
      }
      if (!is.null(this_object$`liquidity_gross`)) {
        self$`liquidity_gross` <- this_object$`liquidity_gross`
      }
      if (!is.null(this_object$`liquidity_net`)) {
        self$`liquidity_net` <- this_object$`liquidity_net`
      }
      if (!is.null(this_object$`volume_token_0`)) {
        self$`volume_token_0` <- this_object$`volume_token_0`
      }
      if (!is.null(this_object$`volume_token_1`)) {
        self$`volume_token_1` <- this_object$`volume_token_1`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`fee_growth_outside_0x128`)) {
        self$`fee_growth_outside_0x128` <- this_object$`fee_growth_outside_0x128`
      }
      if (!is.null(this_object$`fee_growth_outside_1x128`)) {
        self$`fee_growth_outside_1x128` <- this_object$`fee_growth_outside_1x128`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TickDayDataV3DTO in JSON format
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
        if (!is.null(self$`pool`)) {
          sprintf(
          '"pool":
            "%s"
                    ',
          self$`pool`
          )
        },
        if (!is.null(self$`tick`)) {
          sprintf(
          '"tick":
            "%s"
                    ',
          self$`tick`
          )
        },
        if (!is.null(self$`liquidity_gross`)) {
          sprintf(
          '"liquidity_gross":
            "%s"
                    ',
          self$`liquidity_gross`
          )
        },
        if (!is.null(self$`liquidity_net`)) {
          sprintf(
          '"liquidity_net":
            "%s"
                    ',
          self$`liquidity_net`
          )
        },
        if (!is.null(self$`volume_token_0`)) {
          sprintf(
          '"volume_token_0":
            "%s"
                    ',
          self$`volume_token_0`
          )
        },
        if (!is.null(self$`volume_token_1`)) {
          sprintf(
          '"volume_token_1":
            "%s"
                    ',
          self$`volume_token_1`
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
        if (!is.null(self$`fees_usd`)) {
          sprintf(
          '"fees_usd":
            "%s"
                    ',
          self$`fees_usd`
          )
        },
        if (!is.null(self$`fee_growth_outside_0x128`)) {
          sprintf(
          '"fee_growth_outside_0x128":
            "%s"
                    ',
          self$`fee_growth_outside_0x128`
          )
        },
        if (!is.null(self$`fee_growth_outside_1x128`)) {
          sprintf(
          '"fee_growth_outside_1x128":
            "%s"
                    ',
          self$`fee_growth_outside_1x128`
          )
        },
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TickDayDataV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TickDayDataV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TickDayDataV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`pool` <- this_object$`pool`
      self$`tick` <- this_object$`tick`
      self$`liquidity_gross` <- this_object$`liquidity_gross`
      self$`liquidity_net` <- this_object$`liquidity_net`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`fee_growth_outside_0x128` <- this_object$`fee_growth_outside_0x128`
      self$`fee_growth_outside_1x128` <- this_object$`fee_growth_outside_1x128`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to TickDayDataV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to TickDayDataV3DTO and throw an exception if invalid
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
    #' @return String representation of TickDayDataV3DTO
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
#TickDayDataV3DTO$unlock()
#
## Below is an example to define the print fnuction
#TickDayDataV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TickDayDataV3DTO$lock()

