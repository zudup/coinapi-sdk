#' Create a new FactoryV3DTO
#'
#' @description
#' FactoryV3DTO Class
#'
#' @docType class
#' @title FactoryV3DTO
#' @description FactoryV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field pool_count  character [optional]
#' @field tx_count  character [optional]
#' @field total_volume_usd  character [optional]
#' @field total_volume_eth  character [optional]
#' @field total_fees_usd  character [optional]
#' @field total_fees_eth  character [optional]
#' @field untracked_volume_usd  character [optional]
#' @field total_value_locked_usd  character [optional]
#' @field total_value_locked_eth  character [optional]
#' @field total_value_locked_usd_untracked  character [optional]
#' @field total_value_locked_eth_untracked  character [optional]
#' @field owner  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FactoryV3DTO <- R6::R6Class(
  "FactoryV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pool_count` = NULL,
    `tx_count` = NULL,
    `total_volume_usd` = NULL,
    `total_volume_eth` = NULL,
    `total_fees_usd` = NULL,
    `total_fees_eth` = NULL,
    `untracked_volume_usd` = NULL,
    `total_value_locked_usd` = NULL,
    `total_value_locked_eth` = NULL,
    `total_value_locked_usd_untracked` = NULL,
    `total_value_locked_eth_untracked` = NULL,
    `owner` = NULL,
    `vid` = NULL,
    #' Initialize a new FactoryV3DTO class.
    #'
    #' @description
    #' Initialize a new FactoryV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number block_number
    #' @param id id
    #' @param pool_count pool_count
    #' @param tx_count tx_count
    #' @param total_volume_usd total_volume_usd
    #' @param total_volume_eth total_volume_eth
    #' @param total_fees_usd total_fees_usd
    #' @param total_fees_eth total_fees_eth
    #' @param untracked_volume_usd untracked_volume_usd
    #' @param total_value_locked_usd total_value_locked_usd
    #' @param total_value_locked_eth total_value_locked_eth
    #' @param total_value_locked_usd_untracked total_value_locked_usd_untracked
    #' @param total_value_locked_eth_untracked total_value_locked_eth_untracked
    #' @param owner owner
    #' @param vid vid
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pool_count` = NULL, `tx_count` = NULL, `total_volume_usd` = NULL, `total_volume_eth` = NULL, `total_fees_usd` = NULL, `total_fees_eth` = NULL, `untracked_volume_usd` = NULL, `total_value_locked_usd` = NULL, `total_value_locked_eth` = NULL, `total_value_locked_usd_untracked` = NULL, `total_value_locked_eth_untracked` = NULL, `owner` = NULL, `vid` = NULL, ...
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
      if (!is.null(`pool_count`)) {
        stopifnot(is.character(`pool_count`), length(`pool_count`) == 1)
        self$`pool_count` <- `pool_count`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(is.character(`tx_count`), length(`tx_count`) == 1)
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`total_volume_usd`)) {
        stopifnot(is.character(`total_volume_usd`), length(`total_volume_usd`) == 1)
        self$`total_volume_usd` <- `total_volume_usd`
      }
      if (!is.null(`total_volume_eth`)) {
        stopifnot(is.character(`total_volume_eth`), length(`total_volume_eth`) == 1)
        self$`total_volume_eth` <- `total_volume_eth`
      }
      if (!is.null(`total_fees_usd`)) {
        stopifnot(is.character(`total_fees_usd`), length(`total_fees_usd`) == 1)
        self$`total_fees_usd` <- `total_fees_usd`
      }
      if (!is.null(`total_fees_eth`)) {
        stopifnot(is.character(`total_fees_eth`), length(`total_fees_eth`) == 1)
        self$`total_fees_eth` <- `total_fees_eth`
      }
      if (!is.null(`untracked_volume_usd`)) {
        stopifnot(is.character(`untracked_volume_usd`), length(`untracked_volume_usd`) == 1)
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`total_value_locked_usd`)) {
        stopifnot(is.character(`total_value_locked_usd`), length(`total_value_locked_usd`) == 1)
        self$`total_value_locked_usd` <- `total_value_locked_usd`
      }
      if (!is.null(`total_value_locked_eth`)) {
        stopifnot(is.character(`total_value_locked_eth`), length(`total_value_locked_eth`) == 1)
        self$`total_value_locked_eth` <- `total_value_locked_eth`
      }
      if (!is.null(`total_value_locked_usd_untracked`)) {
        stopifnot(is.character(`total_value_locked_usd_untracked`), length(`total_value_locked_usd_untracked`) == 1)
        self$`total_value_locked_usd_untracked` <- `total_value_locked_usd_untracked`
      }
      if (!is.null(`total_value_locked_eth_untracked`)) {
        stopifnot(is.character(`total_value_locked_eth_untracked`), length(`total_value_locked_eth_untracked`) == 1)
        self$`total_value_locked_eth_untracked` <- `total_value_locked_eth_untracked`
      }
      if (!is.null(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
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
    #' @return FactoryV3DTO in JSON format
    #' @export
    toJSON = function() {
      FactoryV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        FactoryV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        FactoryV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        FactoryV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        FactoryV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pool_count`)) {
        FactoryV3DTOObject[["pool_count"]] <-
          self$`pool_count`
      }
      if (!is.null(self$`tx_count`)) {
        FactoryV3DTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`total_volume_usd`)) {
        FactoryV3DTOObject[["total_volume_usd"]] <-
          self$`total_volume_usd`
      }
      if (!is.null(self$`total_volume_eth`)) {
        FactoryV3DTOObject[["total_volume_eth"]] <-
          self$`total_volume_eth`
      }
      if (!is.null(self$`total_fees_usd`)) {
        FactoryV3DTOObject[["total_fees_usd"]] <-
          self$`total_fees_usd`
      }
      if (!is.null(self$`total_fees_eth`)) {
        FactoryV3DTOObject[["total_fees_eth"]] <-
          self$`total_fees_eth`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        FactoryV3DTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        FactoryV3DTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`total_value_locked_eth`)) {
        FactoryV3DTOObject[["total_value_locked_eth"]] <-
          self$`total_value_locked_eth`
      }
      if (!is.null(self$`total_value_locked_usd_untracked`)) {
        FactoryV3DTOObject[["total_value_locked_usd_untracked"]] <-
          self$`total_value_locked_usd_untracked`
      }
      if (!is.null(self$`total_value_locked_eth_untracked`)) {
        FactoryV3DTOObject[["total_value_locked_eth_untracked"]] <-
          self$`total_value_locked_eth_untracked`
      }
      if (!is.null(self$`owner`)) {
        FactoryV3DTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`vid`)) {
        FactoryV3DTOObject[["vid"]] <-
          self$`vid`
      }
      FactoryV3DTOObject
    },
    #' Deserialize JSON string into an instance of FactoryV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of FactoryV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of FactoryV3DTO
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
      if (!is.null(this_object$`pool_count`)) {
        self$`pool_count` <- this_object$`pool_count`
      }
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`total_volume_usd`)) {
        self$`total_volume_usd` <- this_object$`total_volume_usd`
      }
      if (!is.null(this_object$`total_volume_eth`)) {
        self$`total_volume_eth` <- this_object$`total_volume_eth`
      }
      if (!is.null(this_object$`total_fees_usd`)) {
        self$`total_fees_usd` <- this_object$`total_fees_usd`
      }
      if (!is.null(this_object$`total_fees_eth`)) {
        self$`total_fees_eth` <- this_object$`total_fees_eth`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`total_value_locked_eth`)) {
        self$`total_value_locked_eth` <- this_object$`total_value_locked_eth`
      }
      if (!is.null(this_object$`total_value_locked_usd_untracked`)) {
        self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      }
      if (!is.null(this_object$`total_value_locked_eth_untracked`)) {
        self$`total_value_locked_eth_untracked` <- this_object$`total_value_locked_eth_untracked`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
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
    #' @return FactoryV3DTO in JSON format
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
        if (!is.null(self$`pool_count`)) {
          sprintf(
          '"pool_count":
            "%s"
                    ',
          self$`pool_count`
          )
        },
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
            "%s"
                    ',
          self$`tx_count`
          )
        },
        if (!is.null(self$`total_volume_usd`)) {
          sprintf(
          '"total_volume_usd":
            "%s"
                    ',
          self$`total_volume_usd`
          )
        },
        if (!is.null(self$`total_volume_eth`)) {
          sprintf(
          '"total_volume_eth":
            "%s"
                    ',
          self$`total_volume_eth`
          )
        },
        if (!is.null(self$`total_fees_usd`)) {
          sprintf(
          '"total_fees_usd":
            "%s"
                    ',
          self$`total_fees_usd`
          )
        },
        if (!is.null(self$`total_fees_eth`)) {
          sprintf(
          '"total_fees_eth":
            "%s"
                    ',
          self$`total_fees_eth`
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
        if (!is.null(self$`total_value_locked_usd`)) {
          sprintf(
          '"total_value_locked_usd":
            "%s"
                    ',
          self$`total_value_locked_usd`
          )
        },
        if (!is.null(self$`total_value_locked_eth`)) {
          sprintf(
          '"total_value_locked_eth":
            "%s"
                    ',
          self$`total_value_locked_eth`
          )
        },
        if (!is.null(self$`total_value_locked_usd_untracked`)) {
          sprintf(
          '"total_value_locked_usd_untracked":
            "%s"
                    ',
          self$`total_value_locked_usd_untracked`
          )
        },
        if (!is.null(self$`total_value_locked_eth_untracked`)) {
          sprintf(
          '"total_value_locked_eth_untracked":
            "%s"
                    ',
          self$`total_value_locked_eth_untracked`
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
    #' Deserialize JSON string into an instance of FactoryV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of FactoryV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of FactoryV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pool_count` <- this_object$`pool_count`
      self$`tx_count` <- this_object$`tx_count`
      self$`total_volume_usd` <- this_object$`total_volume_usd`
      self$`total_volume_eth` <- this_object$`total_volume_eth`
      self$`total_fees_usd` <- this_object$`total_fees_usd`
      self$`total_fees_eth` <- this_object$`total_fees_eth`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`total_value_locked_eth` <- this_object$`total_value_locked_eth`
      self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      self$`total_value_locked_eth_untracked` <- this_object$`total_value_locked_eth_untracked`
      self$`owner` <- this_object$`owner`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to FactoryV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to FactoryV3DTO and throw an exception if invalid
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
    #' @return String representation of FactoryV3DTO
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
#FactoryV3DTO$unlock()
#
## Below is an example to define the print fnuction
#FactoryV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#FactoryV3DTO$lock()

