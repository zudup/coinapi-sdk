#' Create a new TokenV3DayDataDTO
#'
#' @description
#' TokenV3DayDataDTO Class
#'
#' @docType class
#' @title TokenV3DayDataDTO
#' @description TokenV3DayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field vid  integer [optional]
#' @field id  character [optional]
#' @field date  integer [optional]
#' @field token  character [optional]
#' @field volume  character [optional]
#' @field volume_usd  character [optional]
#' @field untracked_volume_usd  character [optional]
#' @field total_value_locked  character [optional]
#' @field total_value_locked_usd  character [optional]
#' @field price_usd  character [optional]
#' @field fees_usd  character [optional]
#' @field open  character [optional]
#' @field high  character [optional]
#' @field low  character [optional]
#' @field close  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenV3DayDataDTO <- R6::R6Class(
  "TokenV3DayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `date` = NULL,
    `token` = NULL,
    `volume` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `total_value_locked` = NULL,
    `total_value_locked_usd` = NULL,
    `price_usd` = NULL,
    `fees_usd` = NULL,
    `open` = NULL,
    `high` = NULL,
    `low` = NULL,
    `close` = NULL,
    #' Initialize a new TokenV3DayDataDTO class.
    #'
    #' @description
    #' Initialize a new TokenV3DayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number block_number
    #' @param vid vid
    #' @param id id
    #' @param date date
    #' @param token token
    #' @param volume volume
    #' @param volume_usd volume_usd
    #' @param untracked_volume_usd untracked_volume_usd
    #' @param total_value_locked total_value_locked
    #' @param total_value_locked_usd total_value_locked_usd
    #' @param price_usd price_usd
    #' @param fees_usd fees_usd
    #' @param open open
    #' @param high high
    #' @param low low
    #' @param close close
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `date` = NULL, `token` = NULL, `volume` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `total_value_locked` = NULL, `total_value_locked_usd` = NULL, `price_usd` = NULL, `fees_usd` = NULL, `open` = NULL, `high` = NULL, `low` = NULL, `close` = NULL, ...
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
      if (!is.null(`token`)) {
        stopifnot(is.character(`token`), length(`token`) == 1)
        self$`token` <- `token`
      }
      if (!is.null(`volume`)) {
        stopifnot(is.character(`volume`), length(`volume`) == 1)
        self$`volume` <- `volume`
      }
      if (!is.null(`volume_usd`)) {
        stopifnot(is.character(`volume_usd`), length(`volume_usd`) == 1)
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`untracked_volume_usd`)) {
        stopifnot(is.character(`untracked_volume_usd`), length(`untracked_volume_usd`) == 1)
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`total_value_locked`)) {
        stopifnot(is.character(`total_value_locked`), length(`total_value_locked`) == 1)
        self$`total_value_locked` <- `total_value_locked`
      }
      if (!is.null(`total_value_locked_usd`)) {
        stopifnot(is.character(`total_value_locked_usd`), length(`total_value_locked_usd`) == 1)
        self$`total_value_locked_usd` <- `total_value_locked_usd`
      }
      if (!is.null(`price_usd`)) {
        stopifnot(is.character(`price_usd`), length(`price_usd`) == 1)
        self$`price_usd` <- `price_usd`
      }
      if (!is.null(`fees_usd`)) {
        stopifnot(is.character(`fees_usd`), length(`fees_usd`) == 1)
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`open`)) {
        stopifnot(is.character(`open`), length(`open`) == 1)
        self$`open` <- `open`
      }
      if (!is.null(`high`)) {
        stopifnot(is.character(`high`), length(`high`) == 1)
        self$`high` <- `high`
      }
      if (!is.null(`low`)) {
        stopifnot(is.character(`low`), length(`low`) == 1)
        self$`low` <- `low`
      }
      if (!is.null(`close`)) {
        stopifnot(is.character(`close`), length(`close`) == 1)
        self$`close` <- `close`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TokenV3DayDataDTO in JSON format
    #' @export
    toJSON = function() {
      TokenV3DayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        TokenV3DayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        TokenV3DayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        TokenV3DayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        TokenV3DayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        TokenV3DayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        TokenV3DayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`token`)) {
        TokenV3DayDataDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`volume`)) {
        TokenV3DayDataDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_usd`)) {
        TokenV3DayDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        TokenV3DayDataDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`total_value_locked`)) {
        TokenV3DayDataDTOObject[["total_value_locked"]] <-
          self$`total_value_locked`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        TokenV3DayDataDTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`price_usd`)) {
        TokenV3DayDataDTOObject[["price_usd"]] <-
          self$`price_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        TokenV3DayDataDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`open`)) {
        TokenV3DayDataDTOObject[["open"]] <-
          self$`open`
      }
      if (!is.null(self$`high`)) {
        TokenV3DayDataDTOObject[["high"]] <-
          self$`high`
      }
      if (!is.null(self$`low`)) {
        TokenV3DayDataDTOObject[["low"]] <-
          self$`low`
      }
      if (!is.null(self$`close`)) {
        TokenV3DayDataDTOObject[["close"]] <-
          self$`close`
      }
      TokenV3DayDataDTOObject
    },
    #' Deserialize JSON string into an instance of TokenV3DayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenV3DayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenV3DayDataDTO
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
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`total_value_locked`)) {
        self$`total_value_locked` <- this_object$`total_value_locked`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`price_usd`)) {
        self$`price_usd` <- this_object$`price_usd`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`open`)) {
        self$`open` <- this_object$`open`
      }
      if (!is.null(this_object$`high`)) {
        self$`high` <- this_object$`high`
      }
      if (!is.null(this_object$`low`)) {
        self$`low` <- this_object$`low`
      }
      if (!is.null(this_object$`close`)) {
        self$`close` <- this_object$`close`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TokenV3DayDataDTO in JSON format
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
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        },
        if (!is.null(self$`volume`)) {
          sprintf(
          '"volume":
            "%s"
                    ',
          self$`volume`
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
        if (!is.null(self$`untracked_volume_usd`)) {
          sprintf(
          '"untracked_volume_usd":
            "%s"
                    ',
          self$`untracked_volume_usd`
          )
        },
        if (!is.null(self$`total_value_locked`)) {
          sprintf(
          '"total_value_locked":
            "%s"
                    ',
          self$`total_value_locked`
          )
        },
        if (!is.null(self$`total_value_locked_usd`)) {
          sprintf(
          '"total_value_locked_usd":
            "%s"
                    ',
          self$`total_value_locked_usd`
          )
        },
        if (!is.null(self$`price_usd`)) {
          sprintf(
          '"price_usd":
            "%s"
                    ',
          self$`price_usd`
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
        if (!is.null(self$`open`)) {
          sprintf(
          '"open":
            "%s"
                    ',
          self$`open`
          )
        },
        if (!is.null(self$`high`)) {
          sprintf(
          '"high":
            "%s"
                    ',
          self$`high`
          )
        },
        if (!is.null(self$`low`)) {
          sprintf(
          '"low":
            "%s"
                    ',
          self$`low`
          )
        },
        if (!is.null(self$`close`)) {
          sprintf(
          '"close":
            "%s"
                    ',
          self$`close`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TokenV3DayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenV3DayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenV3DayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`token` <- this_object$`token`
      self$`volume` <- this_object$`volume`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`total_value_locked` <- this_object$`total_value_locked`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`price_usd` <- this_object$`price_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`open` <- this_object$`open`
      self$`high` <- this_object$`high`
      self$`low` <- this_object$`low`
      self$`close` <- this_object$`close`
      self
    },
    #' Validate JSON input with respect to TokenV3DayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to TokenV3DayDataDTO and throw an exception if invalid
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
    #' @return String representation of TokenV3DayDataDTO
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
#TokenV3DayDataDTO$unlock()
#
## Below is an example to define the print fnuction
#TokenV3DayDataDTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TokenV3DayDataDTO$lock()

