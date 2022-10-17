#' Create a new PositionSnapshotV3DTO
#'
#' @description
#' PositionSnapshotV3DTO Class
#'
#' @docType class
#' @title PositionSnapshotV3DTO
#' @description PositionSnapshotV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field owner  character [optional]
#' @field pool  character [optional]
#' @field position  character [optional]
#' @field timestamp  character [optional]
#' @field liquidity  character [optional]
#' @field deposited_token_0  character [optional]
#' @field deposited_token_1  character [optional]
#' @field withdrawn_token_0  character [optional]
#' @field withdrawn_token_1  character [optional]
#' @field collected_fees_token_0  character [optional]
#' @field collected_fees_token_1  character [optional]
#' @field transaction  character [optional]
#' @field fee_growth_inside_0_last_x128  character [optional]
#' @field fee_growth_inside_1_last_x128  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PositionSnapshotV3DTO <- R6::R6Class(
  "PositionSnapshotV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `owner` = NULL,
    `pool` = NULL,
    `position` = NULL,
    `timestamp` = NULL,
    `liquidity` = NULL,
    `deposited_token_0` = NULL,
    `deposited_token_1` = NULL,
    `withdrawn_token_0` = NULL,
    `withdrawn_token_1` = NULL,
    `collected_fees_token_0` = NULL,
    `collected_fees_token_1` = NULL,
    `transaction` = NULL,
    `fee_growth_inside_0_last_x128` = NULL,
    `fee_growth_inside_1_last_x128` = NULL,
    `vid` = NULL,
    #' Initialize a new PositionSnapshotV3DTO class.
    #'
    #' @description
    #' Initialize a new PositionSnapshotV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number block_number
    #' @param id id
    #' @param owner owner
    #' @param pool pool
    #' @param position position
    #' @param timestamp timestamp
    #' @param liquidity liquidity
    #' @param deposited_token_0 deposited_token_0
    #' @param deposited_token_1 deposited_token_1
    #' @param withdrawn_token_0 withdrawn_token_0
    #' @param withdrawn_token_1 withdrawn_token_1
    #' @param collected_fees_token_0 collected_fees_token_0
    #' @param collected_fees_token_1 collected_fees_token_1
    #' @param transaction transaction
    #' @param fee_growth_inside_0_last_x128 fee_growth_inside_0_last_x128
    #' @param fee_growth_inside_1_last_x128 fee_growth_inside_1_last_x128
    #' @param vid vid
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `owner` = NULL, `pool` = NULL, `position` = NULL, `timestamp` = NULL, `liquidity` = NULL, `deposited_token_0` = NULL, `deposited_token_1` = NULL, `withdrawn_token_0` = NULL, `withdrawn_token_1` = NULL, `collected_fees_token_0` = NULL, `collected_fees_token_1` = NULL, `transaction` = NULL, `fee_growth_inside_0_last_x128` = NULL, `fee_growth_inside_1_last_x128` = NULL, `vid` = NULL, ...
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
      if (!is.null(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
      }
      if (!is.null(`pool`)) {
        stopifnot(is.character(`pool`), length(`pool`) == 1)
        self$`pool` <- `pool`
      }
      if (!is.null(`position`)) {
        stopifnot(is.character(`position`), length(`position`) == 1)
        self$`position` <- `position`
      }
      if (!is.null(`timestamp`)) {
        stopifnot(is.character(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`liquidity`)) {
        stopifnot(is.character(`liquidity`), length(`liquidity`) == 1)
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`deposited_token_0`)) {
        stopifnot(is.character(`deposited_token_0`), length(`deposited_token_0`) == 1)
        self$`deposited_token_0` <- `deposited_token_0`
      }
      if (!is.null(`deposited_token_1`)) {
        stopifnot(is.character(`deposited_token_1`), length(`deposited_token_1`) == 1)
        self$`deposited_token_1` <- `deposited_token_1`
      }
      if (!is.null(`withdrawn_token_0`)) {
        stopifnot(is.character(`withdrawn_token_0`), length(`withdrawn_token_0`) == 1)
        self$`withdrawn_token_0` <- `withdrawn_token_0`
      }
      if (!is.null(`withdrawn_token_1`)) {
        stopifnot(is.character(`withdrawn_token_1`), length(`withdrawn_token_1`) == 1)
        self$`withdrawn_token_1` <- `withdrawn_token_1`
      }
      if (!is.null(`collected_fees_token_0`)) {
        stopifnot(is.character(`collected_fees_token_0`), length(`collected_fees_token_0`) == 1)
        self$`collected_fees_token_0` <- `collected_fees_token_0`
      }
      if (!is.null(`collected_fees_token_1`)) {
        stopifnot(is.character(`collected_fees_token_1`), length(`collected_fees_token_1`) == 1)
        self$`collected_fees_token_1` <- `collected_fees_token_1`
      }
      if (!is.null(`transaction`)) {
        stopifnot(is.character(`transaction`), length(`transaction`) == 1)
        self$`transaction` <- `transaction`
      }
      if (!is.null(`fee_growth_inside_0_last_x128`)) {
        stopifnot(is.character(`fee_growth_inside_0_last_x128`), length(`fee_growth_inside_0_last_x128`) == 1)
        self$`fee_growth_inside_0_last_x128` <- `fee_growth_inside_0_last_x128`
      }
      if (!is.null(`fee_growth_inside_1_last_x128`)) {
        stopifnot(is.character(`fee_growth_inside_1_last_x128`), length(`fee_growth_inside_1_last_x128`) == 1)
        self$`fee_growth_inside_1_last_x128` <- `fee_growth_inside_1_last_x128`
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
    #' @return PositionSnapshotV3DTO in JSON format
    #' @export
    toJSON = function() {
      PositionSnapshotV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        PositionSnapshotV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        PositionSnapshotV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        PositionSnapshotV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        PositionSnapshotV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`owner`)) {
        PositionSnapshotV3DTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`pool`)) {
        PositionSnapshotV3DTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`position`)) {
        PositionSnapshotV3DTOObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`timestamp`)) {
        PositionSnapshotV3DTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`liquidity`)) {
        PositionSnapshotV3DTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`deposited_token_0`)) {
        PositionSnapshotV3DTOObject[["deposited_token_0"]] <-
          self$`deposited_token_0`
      }
      if (!is.null(self$`deposited_token_1`)) {
        PositionSnapshotV3DTOObject[["deposited_token_1"]] <-
          self$`deposited_token_1`
      }
      if (!is.null(self$`withdrawn_token_0`)) {
        PositionSnapshotV3DTOObject[["withdrawn_token_0"]] <-
          self$`withdrawn_token_0`
      }
      if (!is.null(self$`withdrawn_token_1`)) {
        PositionSnapshotV3DTOObject[["withdrawn_token_1"]] <-
          self$`withdrawn_token_1`
      }
      if (!is.null(self$`collected_fees_token_0`)) {
        PositionSnapshotV3DTOObject[["collected_fees_token_0"]] <-
          self$`collected_fees_token_0`
      }
      if (!is.null(self$`collected_fees_token_1`)) {
        PositionSnapshotV3DTOObject[["collected_fees_token_1"]] <-
          self$`collected_fees_token_1`
      }
      if (!is.null(self$`transaction`)) {
        PositionSnapshotV3DTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`fee_growth_inside_0_last_x128`)) {
        PositionSnapshotV3DTOObject[["fee_growth_inside_0_last_x128"]] <-
          self$`fee_growth_inside_0_last_x128`
      }
      if (!is.null(self$`fee_growth_inside_1_last_x128`)) {
        PositionSnapshotV3DTOObject[["fee_growth_inside_1_last_x128"]] <-
          self$`fee_growth_inside_1_last_x128`
      }
      if (!is.null(self$`vid`)) {
        PositionSnapshotV3DTOObject[["vid"]] <-
          self$`vid`
      }
      PositionSnapshotV3DTOObject
    },
    #' Deserialize JSON string into an instance of PositionSnapshotV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of PositionSnapshotV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of PositionSnapshotV3DTO
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
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`deposited_token_0`)) {
        self$`deposited_token_0` <- this_object$`deposited_token_0`
      }
      if (!is.null(this_object$`deposited_token_1`)) {
        self$`deposited_token_1` <- this_object$`deposited_token_1`
      }
      if (!is.null(this_object$`withdrawn_token_0`)) {
        self$`withdrawn_token_0` <- this_object$`withdrawn_token_0`
      }
      if (!is.null(this_object$`withdrawn_token_1`)) {
        self$`withdrawn_token_1` <- this_object$`withdrawn_token_1`
      }
      if (!is.null(this_object$`collected_fees_token_0`)) {
        self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      }
      if (!is.null(this_object$`collected_fees_token_1`)) {
        self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      }
      if (!is.null(this_object$`transaction`)) {
        self$`transaction` <- this_object$`transaction`
      }
      if (!is.null(this_object$`fee_growth_inside_0_last_x128`)) {
        self$`fee_growth_inside_0_last_x128` <- this_object$`fee_growth_inside_0_last_x128`
      }
      if (!is.null(this_object$`fee_growth_inside_1_last_x128`)) {
        self$`fee_growth_inside_1_last_x128` <- this_object$`fee_growth_inside_1_last_x128`
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
    #' @return PositionSnapshotV3DTO in JSON format
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
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
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
        if (!is.null(self$`position`)) {
          sprintf(
          '"position":
            "%s"
                    ',
          self$`position`
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
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
            "%s"
                    ',
          self$`liquidity`
          )
        },
        if (!is.null(self$`deposited_token_0`)) {
          sprintf(
          '"deposited_token_0":
            "%s"
                    ',
          self$`deposited_token_0`
          )
        },
        if (!is.null(self$`deposited_token_1`)) {
          sprintf(
          '"deposited_token_1":
            "%s"
                    ',
          self$`deposited_token_1`
          )
        },
        if (!is.null(self$`withdrawn_token_0`)) {
          sprintf(
          '"withdrawn_token_0":
            "%s"
                    ',
          self$`withdrawn_token_0`
          )
        },
        if (!is.null(self$`withdrawn_token_1`)) {
          sprintf(
          '"withdrawn_token_1":
            "%s"
                    ',
          self$`withdrawn_token_1`
          )
        },
        if (!is.null(self$`collected_fees_token_0`)) {
          sprintf(
          '"collected_fees_token_0":
            "%s"
                    ',
          self$`collected_fees_token_0`
          )
        },
        if (!is.null(self$`collected_fees_token_1`)) {
          sprintf(
          '"collected_fees_token_1":
            "%s"
                    ',
          self$`collected_fees_token_1`
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
        if (!is.null(self$`fee_growth_inside_0_last_x128`)) {
          sprintf(
          '"fee_growth_inside_0_last_x128":
            "%s"
                    ',
          self$`fee_growth_inside_0_last_x128`
          )
        },
        if (!is.null(self$`fee_growth_inside_1_last_x128`)) {
          sprintf(
          '"fee_growth_inside_1_last_x128":
            "%s"
                    ',
          self$`fee_growth_inside_1_last_x128`
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
    #' Deserialize JSON string into an instance of PositionSnapshotV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of PositionSnapshotV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of PositionSnapshotV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`owner` <- this_object$`owner`
      self$`pool` <- this_object$`pool`
      self$`position` <- this_object$`position`
      self$`timestamp` <- this_object$`timestamp`
      self$`liquidity` <- this_object$`liquidity`
      self$`deposited_token_0` <- this_object$`deposited_token_0`
      self$`deposited_token_1` <- this_object$`deposited_token_1`
      self$`withdrawn_token_0` <- this_object$`withdrawn_token_0`
      self$`withdrawn_token_1` <- this_object$`withdrawn_token_1`
      self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      self$`transaction` <- this_object$`transaction`
      self$`fee_growth_inside_0_last_x128` <- this_object$`fee_growth_inside_0_last_x128`
      self$`fee_growth_inside_1_last_x128` <- this_object$`fee_growth_inside_1_last_x128`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to PositionSnapshotV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to PositionSnapshotV3DTO and throw an exception if invalid
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
    #' @return String representation of PositionSnapshotV3DTO
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
#PositionSnapshotV3DTO$unlock()
#
## Below is an example to define the print fnuction
#PositionSnapshotV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PositionSnapshotV3DTO$lock()

