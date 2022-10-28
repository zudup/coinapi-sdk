#' Create a new BurnV3DTO
#'
#' @description
#' BurnV3DTO Class
#'
#' @docType class
#' @title BurnV3DTO
#' @description BurnV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field transaction  character [optional]
#' @field pool  character [optional]
#' @field token_0  character [optional]
#' @field token_1  character [optional]
#' @field timestamp  character [optional]
#' @field owner  character [optional]
#' @field origin  character [optional]
#' @field amount  character [optional]
#' @field amount_0  character [optional]
#' @field amount_1  character [optional]
#' @field amount_usd  character [optional]
#' @field tick_lower  character [optional]
#' @field tick_upper  character [optional]
#' @field log_index  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BurnV3DTO <- R6::R6Class(
  "BurnV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `transaction` = NULL,
    `pool` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `timestamp` = NULL,
    `owner` = NULL,
    `origin` = NULL,
    `amount` = NULL,
    `amount_0` = NULL,
    `amount_1` = NULL,
    `amount_usd` = NULL,
    `tick_lower` = NULL,
    `tick_upper` = NULL,
    `log_index` = NULL,
    `vid` = NULL,
    #' Initialize a new BurnV3DTO class.
    #'
    #' @description
    #' Initialize a new BurnV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param id 
    #' @param transaction 
    #' @param pool 
    #' @param token_0 
    #' @param token_1 
    #' @param timestamp 
    #' @param owner 
    #' @param origin 
    #' @param amount 
    #' @param amount_0 
    #' @param amount_1 
    #' @param amount_usd 
    #' @param tick_lower 
    #' @param tick_upper 
    #' @param log_index 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `transaction` = NULL, `pool` = NULL, `token_0` = NULL, `token_1` = NULL, `timestamp` = NULL, `owner` = NULL, `origin` = NULL, `amount` = NULL, `amount_0` = NULL, `amount_1` = NULL, `amount_usd` = NULL, `tick_lower` = NULL, `tick_upper` = NULL, `log_index` = NULL, `vid` = NULL, ...
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
      if (!is.null(`transaction`)) {
        stopifnot(is.character(`transaction`), length(`transaction`) == 1)
        self$`transaction` <- `transaction`
      }
      if (!is.null(`pool`)) {
        stopifnot(is.character(`pool`), length(`pool`) == 1)
        self$`pool` <- `pool`
      }
      if (!is.null(`token_0`)) {
        stopifnot(is.character(`token_0`), length(`token_0`) == 1)
        self$`token_0` <- `token_0`
      }
      if (!is.null(`token_1`)) {
        stopifnot(is.character(`token_1`), length(`token_1`) == 1)
        self$`token_1` <- `token_1`
      }
      if (!is.null(`timestamp`)) {
        stopifnot(is.character(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
      }
      if (!is.null(`origin`)) {
        stopifnot(is.character(`origin`), length(`origin`) == 1)
        self$`origin` <- `origin`
      }
      if (!is.null(`amount`)) {
        stopifnot(is.character(`amount`), length(`amount`) == 1)
        self$`amount` <- `amount`
      }
      if (!is.null(`amount_0`)) {
        stopifnot(is.character(`amount_0`), length(`amount_0`) == 1)
        self$`amount_0` <- `amount_0`
      }
      if (!is.null(`amount_1`)) {
        stopifnot(is.character(`amount_1`), length(`amount_1`) == 1)
        self$`amount_1` <- `amount_1`
      }
      if (!is.null(`amount_usd`)) {
        stopifnot(is.character(`amount_usd`), length(`amount_usd`) == 1)
        self$`amount_usd` <- `amount_usd`
      }
      if (!is.null(`tick_lower`)) {
        stopifnot(is.character(`tick_lower`), length(`tick_lower`) == 1)
        self$`tick_lower` <- `tick_lower`
      }
      if (!is.null(`tick_upper`)) {
        stopifnot(is.character(`tick_upper`), length(`tick_upper`) == 1)
        self$`tick_upper` <- `tick_upper`
      }
      if (!is.null(`log_index`)) {
        stopifnot(is.character(`log_index`), length(`log_index`) == 1)
        self$`log_index` <- `log_index`
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
    #' @return BurnV3DTO in JSON format
    #' @export
    toJSON = function() {
      BurnV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        BurnV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        BurnV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        BurnV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        BurnV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction`)) {
        BurnV3DTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`pool`)) {
        BurnV3DTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`token_0`)) {
        BurnV3DTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        BurnV3DTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`timestamp`)) {
        BurnV3DTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`owner`)) {
        BurnV3DTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`origin`)) {
        BurnV3DTOObject[["origin"]] <-
          self$`origin`
      }
      if (!is.null(self$`amount`)) {
        BurnV3DTOObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`amount_0`)) {
        BurnV3DTOObject[["amount_0"]] <-
          self$`amount_0`
      }
      if (!is.null(self$`amount_1`)) {
        BurnV3DTOObject[["amount_1"]] <-
          self$`amount_1`
      }
      if (!is.null(self$`amount_usd`)) {
        BurnV3DTOObject[["amount_usd"]] <-
          self$`amount_usd`
      }
      if (!is.null(self$`tick_lower`)) {
        BurnV3DTOObject[["tick_lower"]] <-
          self$`tick_lower`
      }
      if (!is.null(self$`tick_upper`)) {
        BurnV3DTOObject[["tick_upper"]] <-
          self$`tick_upper`
      }
      if (!is.null(self$`log_index`)) {
        BurnV3DTOObject[["log_index"]] <-
          self$`log_index`
      }
      if (!is.null(self$`vid`)) {
        BurnV3DTOObject[["vid"]] <-
          self$`vid`
      }
      BurnV3DTOObject
    },
    #' Deserialize JSON string into an instance of BurnV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of BurnV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of BurnV3DTO
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
      if (!is.null(this_object$`transaction`)) {
        self$`transaction` <- this_object$`transaction`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`origin`)) {
        self$`origin` <- this_object$`origin`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`amount_0`)) {
        self$`amount_0` <- this_object$`amount_0`
      }
      if (!is.null(this_object$`amount_1`)) {
        self$`amount_1` <- this_object$`amount_1`
      }
      if (!is.null(this_object$`amount_usd`)) {
        self$`amount_usd` <- this_object$`amount_usd`
      }
      if (!is.null(this_object$`tick_lower`)) {
        self$`tick_lower` <- this_object$`tick_lower`
      }
      if (!is.null(this_object$`tick_upper`)) {
        self$`tick_upper` <- this_object$`tick_upper`
      }
      if (!is.null(this_object$`log_index`)) {
        self$`log_index` <- this_object$`log_index`
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
    #' @return BurnV3DTO in JSON format
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
        if (!is.null(self$`transaction`)) {
          sprintf(
          '"transaction":
            "%s"
                    ',
          self$`transaction`
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
        if (!is.null(self$`token_0`)) {
          sprintf(
          '"token_0":
            "%s"
                    ',
          self$`token_0`
          )
        },
        if (!is.null(self$`token_1`)) {
          sprintf(
          '"token_1":
            "%s"
                    ',
          self$`token_1`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
          )
        },
        if (!is.null(self$`origin`)) {
          sprintf(
          '"origin":
            "%s"
                    ',
          self$`origin`
          )
        },
        if (!is.null(self$`amount`)) {
          sprintf(
          '"amount":
            "%s"
                    ',
          self$`amount`
          )
        },
        if (!is.null(self$`amount_0`)) {
          sprintf(
          '"amount_0":
            "%s"
                    ',
          self$`amount_0`
          )
        },
        if (!is.null(self$`amount_1`)) {
          sprintf(
          '"amount_1":
            "%s"
                    ',
          self$`amount_1`
          )
        },
        if (!is.null(self$`amount_usd`)) {
          sprintf(
          '"amount_usd":
            "%s"
                    ',
          self$`amount_usd`
          )
        },
        if (!is.null(self$`tick_lower`)) {
          sprintf(
          '"tick_lower":
            "%s"
                    ',
          self$`tick_lower`
          )
        },
        if (!is.null(self$`tick_upper`)) {
          sprintf(
          '"tick_upper":
            "%s"
                    ',
          self$`tick_upper`
          )
        },
        if (!is.null(self$`log_index`)) {
          sprintf(
          '"log_index":
            "%s"
                    ',
          self$`log_index`
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
    #' Deserialize JSON string into an instance of BurnV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of BurnV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of BurnV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`transaction` <- this_object$`transaction`
      self$`pool` <- this_object$`pool`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`timestamp` <- this_object$`timestamp`
      self$`owner` <- this_object$`owner`
      self$`origin` <- this_object$`origin`
      self$`amount` <- this_object$`amount`
      self$`amount_0` <- this_object$`amount_0`
      self$`amount_1` <- this_object$`amount_1`
      self$`amount_usd` <- this_object$`amount_usd`
      self$`tick_lower` <- this_object$`tick_lower`
      self$`tick_upper` <- this_object$`tick_upper`
      self$`log_index` <- this_object$`log_index`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to BurnV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to BurnV3DTO and throw an exception if invalid
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
    #' @return String representation of BurnV3DTO
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
#BurnV3DTO$unlock()
#
## Below is an example to define the print fnuction
#BurnV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BurnV3DTO$lock()

