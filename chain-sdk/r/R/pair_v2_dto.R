#' Create a new PairV2DTO
#'
#' @description
#' Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
#'
#' @docType class
#' @title PairV2DTO
#' @description PairV2DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field vid  integer [optional]
#' @field id Pair contract address. character [optional]
#' @field token_0 Reference to token0 as stored in pair contract. character [optional]
#' @field token_1 Reference to token1 as stored in pair contract. character [optional]
#' @field reserve_0 Reserve of token0. character [optional]
#' @field reserve_1 Reserve of token1. character [optional]
#' @field total_supply Total supply of liquidity token distributed to LPs. character [optional]
#' @field reserve_eth Total liquidity in pair stored as an amount of ETH. character [optional]
#' @field reserve_usd Total liquidity amount in pair stored as an amount of USD. character [optional]
#' @field tracked_reserve_eth Total liquidity with only tracked amount (see tracked amounts). character [optional]
#' @field token_0_price Token0 per token1. character [optional]
#' @field token_1_price Token1 per token0. character [optional]
#' @field volume_token_0 Amount of token0 swapped on this pair. character [optional]
#' @field volume_token_1 Amount of token1 swapped on this pair. character [optional]
#' @field volume_usd Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). character [optional]
#' @field untracked_volume_usd Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. character [optional]
#' @field tx_count  \link{BigInteger} [optional]
#' @field created_at_timestamp Timestamp contract was created. character [optional]
#' @field liquidity_provider_count  character [optional]
#' @field evaluated_ask  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PairV2DTO <- R6::R6Class(
  "PairV2DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `reserve_0` = NULL,
    `reserve_1` = NULL,
    `total_supply` = NULL,
    `reserve_eth` = NULL,
    `reserve_usd` = NULL,
    `tracked_reserve_eth` = NULL,
    `token_0_price` = NULL,
    `token_1_price` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `tx_count` = NULL,
    `created_at_timestamp` = NULL,
    `liquidity_provider_count` = NULL,
    `evaluated_ask` = NULL,
    #' Initialize a new PairV2DTO class.
    #'
    #' @description
    #' Initialize a new PairV2DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param id Pair contract address.
    #' @param token_0 Reference to token0 as stored in pair contract.
    #' @param token_1 Reference to token1 as stored in pair contract.
    #' @param reserve_0 Reserve of token0.
    #' @param reserve_1 Reserve of token1.
    #' @param total_supply Total supply of liquidity token distributed to LPs.
    #' @param reserve_eth Total liquidity in pair stored as an amount of ETH.
    #' @param reserve_usd Total liquidity amount in pair stored as an amount of USD.
    #' @param tracked_reserve_eth Total liquidity with only tracked amount (see tracked amounts).
    #' @param token_0_price Token0 per token1.
    #' @param token_1_price Token1 per token0.
    #' @param volume_token_0 Amount of token0 swapped on this pair.
    #' @param volume_token_1 Amount of token1 swapped on this pair.
    #' @param volume_usd Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
    #' @param untracked_volume_usd Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
    #' @param tx_count tx_count
    #' @param created_at_timestamp Timestamp contract was created.
    #' @param liquidity_provider_count 
    #' @param evaluated_ask evaluated_ask
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `token_0` = NULL, `token_1` = NULL, `reserve_0` = NULL, `reserve_1` = NULL, `total_supply` = NULL, `reserve_eth` = NULL, `reserve_usd` = NULL, `tracked_reserve_eth` = NULL, `token_0_price` = NULL, `token_1_price` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `tx_count` = NULL, `created_at_timestamp` = NULL, `liquidity_provider_count` = NULL, `evaluated_ask` = NULL, ...
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
      if (!is.null(`token_0`)) {
        stopifnot(is.character(`token_0`), length(`token_0`) == 1)
        self$`token_0` <- `token_0`
      }
      if (!is.null(`token_1`)) {
        stopifnot(is.character(`token_1`), length(`token_1`) == 1)
        self$`token_1` <- `token_1`
      }
      if (!is.null(`reserve_0`)) {
        stopifnot(is.character(`reserve_0`), length(`reserve_0`) == 1)
        self$`reserve_0` <- `reserve_0`
      }
      if (!is.null(`reserve_1`)) {
        stopifnot(is.character(`reserve_1`), length(`reserve_1`) == 1)
        self$`reserve_1` <- `reserve_1`
      }
      if (!is.null(`total_supply`)) {
        stopifnot(is.character(`total_supply`), length(`total_supply`) == 1)
        self$`total_supply` <- `total_supply`
      }
      if (!is.null(`reserve_eth`)) {
        stopifnot(is.character(`reserve_eth`), length(`reserve_eth`) == 1)
        self$`reserve_eth` <- `reserve_eth`
      }
      if (!is.null(`reserve_usd`)) {
        stopifnot(is.character(`reserve_usd`), length(`reserve_usd`) == 1)
        self$`reserve_usd` <- `reserve_usd`
      }
      if (!is.null(`tracked_reserve_eth`)) {
        stopifnot(is.character(`tracked_reserve_eth`), length(`tracked_reserve_eth`) == 1)
        self$`tracked_reserve_eth` <- `tracked_reserve_eth`
      }
      if (!is.null(`token_0_price`)) {
        stopifnot(is.character(`token_0_price`), length(`token_0_price`) == 1)
        self$`token_0_price` <- `token_0_price`
      }
      if (!is.null(`token_1_price`)) {
        stopifnot(is.character(`token_1_price`), length(`token_1_price`) == 1)
        self$`token_1_price` <- `token_1_price`
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
      if (!is.null(`untracked_volume_usd`)) {
        stopifnot(is.character(`untracked_volume_usd`), length(`untracked_volume_usd`) == 1)
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`created_at_timestamp`)) {
        stopifnot(is.character(`created_at_timestamp`), length(`created_at_timestamp`) == 1)
        self$`created_at_timestamp` <- `created_at_timestamp`
      }
      if (!is.null(`liquidity_provider_count`)) {
        stopifnot(is.character(`liquidity_provider_count`), length(`liquidity_provider_count`) == 1)
        self$`liquidity_provider_count` <- `liquidity_provider_count`
      }
      if (!is.null(`evaluated_ask`)) {
        stopifnot(is.numeric(`evaluated_ask`), length(`evaluated_ask`) == 1)
        self$`evaluated_ask` <- `evaluated_ask`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PairV2DTO in JSON format
    #' @export
    toJSON = function() {
      PairV2DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        PairV2DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        PairV2DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        PairV2DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        PairV2DTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        PairV2DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`token_0`)) {
        PairV2DTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        PairV2DTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`reserve_0`)) {
        PairV2DTOObject[["reserve_0"]] <-
          self$`reserve_0`
      }
      if (!is.null(self$`reserve_1`)) {
        PairV2DTOObject[["reserve_1"]] <-
          self$`reserve_1`
      }
      if (!is.null(self$`total_supply`)) {
        PairV2DTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`reserve_eth`)) {
        PairV2DTOObject[["reserve_eth"]] <-
          self$`reserve_eth`
      }
      if (!is.null(self$`reserve_usd`)) {
        PairV2DTOObject[["reserve_usd"]] <-
          self$`reserve_usd`
      }
      if (!is.null(self$`tracked_reserve_eth`)) {
        PairV2DTOObject[["tracked_reserve_eth"]] <-
          self$`tracked_reserve_eth`
      }
      if (!is.null(self$`token_0_price`)) {
        PairV2DTOObject[["token_0_price"]] <-
          self$`token_0_price`
      }
      if (!is.null(self$`token_1_price`)) {
        PairV2DTOObject[["token_1_price"]] <-
          self$`token_1_price`
      }
      if (!is.null(self$`volume_token_0`)) {
        PairV2DTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        PairV2DTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        PairV2DTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        PairV2DTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        PairV2DTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`created_at_timestamp`)) {
        PairV2DTOObject[["created_at_timestamp"]] <-
          self$`created_at_timestamp`
      }
      if (!is.null(self$`liquidity_provider_count`)) {
        PairV2DTOObject[["liquidity_provider_count"]] <-
          self$`liquidity_provider_count`
      }
      if (!is.null(self$`evaluated_ask`)) {
        PairV2DTOObject[["evaluated_ask"]] <-
          self$`evaluated_ask`
      }
      PairV2DTOObject
    },
    #' Deserialize JSON string into an instance of PairV2DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of PairV2DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of PairV2DTO
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
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
      }
      if (!is.null(this_object$`reserve_0`)) {
        self$`reserve_0` <- this_object$`reserve_0`
      }
      if (!is.null(this_object$`reserve_1`)) {
        self$`reserve_1` <- this_object$`reserve_1`
      }
      if (!is.null(this_object$`total_supply`)) {
        self$`total_supply` <- this_object$`total_supply`
      }
      if (!is.null(this_object$`reserve_eth`)) {
        self$`reserve_eth` <- this_object$`reserve_eth`
      }
      if (!is.null(this_object$`reserve_usd`)) {
        self$`reserve_usd` <- this_object$`reserve_usd`
      }
      if (!is.null(this_object$`tracked_reserve_eth`)) {
        self$`tracked_reserve_eth` <- this_object$`tracked_reserve_eth`
      }
      if (!is.null(this_object$`token_0_price`)) {
        self$`token_0_price` <- this_object$`token_0_price`
      }
      if (!is.null(this_object$`token_1_price`)) {
        self$`token_1_price` <- this_object$`token_1_price`
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
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        tx_count_object <- BigInteger$new()
        tx_count_object$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- tx_count_object
      }
      if (!is.null(this_object$`created_at_timestamp`)) {
        self$`created_at_timestamp` <- this_object$`created_at_timestamp`
      }
      if (!is.null(this_object$`liquidity_provider_count`)) {
        self$`liquidity_provider_count` <- this_object$`liquidity_provider_count`
      }
      if (!is.null(this_object$`evaluated_ask`)) {
        self$`evaluated_ask` <- this_object$`evaluated_ask`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PairV2DTO in JSON format
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
        if (!is.null(self$`reserve_0`)) {
          sprintf(
          '"reserve_0":
            "%s"
                    ',
          self$`reserve_0`
          )
        },
        if (!is.null(self$`reserve_1`)) {
          sprintf(
          '"reserve_1":
            "%s"
                    ',
          self$`reserve_1`
          )
        },
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
            "%s"
                    ',
          self$`total_supply`
          )
        },
        if (!is.null(self$`reserve_eth`)) {
          sprintf(
          '"reserve_eth":
            "%s"
                    ',
          self$`reserve_eth`
          )
        },
        if (!is.null(self$`reserve_usd`)) {
          sprintf(
          '"reserve_usd":
            "%s"
                    ',
          self$`reserve_usd`
          )
        },
        if (!is.null(self$`tracked_reserve_eth`)) {
          sprintf(
          '"tracked_reserve_eth":
            "%s"
                    ',
          self$`tracked_reserve_eth`
          )
        },
        if (!is.null(self$`token_0_price`)) {
          sprintf(
          '"token_0_price":
            "%s"
                    ',
          self$`token_0_price`
          )
        },
        if (!is.null(self$`token_1_price`)) {
          sprintf(
          '"token_1_price":
            "%s"
                    ',
          self$`token_1_price`
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
        if (!is.null(self$`untracked_volume_usd`)) {
          sprintf(
          '"untracked_volume_usd":
            "%s"
                    ',
          self$`untracked_volume_usd`
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
        if (!is.null(self$`created_at_timestamp`)) {
          sprintf(
          '"created_at_timestamp":
            "%s"
                    ',
          self$`created_at_timestamp`
          )
        },
        if (!is.null(self$`liquidity_provider_count`)) {
          sprintf(
          '"liquidity_provider_count":
            "%s"
                    ',
          self$`liquidity_provider_count`
          )
        },
        if (!is.null(self$`evaluated_ask`)) {
          sprintf(
          '"evaluated_ask":
            %d
                    ',
          self$`evaluated_ask`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PairV2DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of PairV2DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of PairV2DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`reserve_0` <- this_object$`reserve_0`
      self$`reserve_1` <- this_object$`reserve_1`
      self$`total_supply` <- this_object$`total_supply`
      self$`reserve_eth` <- this_object$`reserve_eth`
      self$`reserve_usd` <- this_object$`reserve_usd`
      self$`tracked_reserve_eth` <- this_object$`tracked_reserve_eth`
      self$`token_0_price` <- this_object$`token_0_price`
      self$`token_1_price` <- this_object$`token_1_price`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`tx_count` <- BigInteger$new()$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
      self$`created_at_timestamp` <- this_object$`created_at_timestamp`
      self$`liquidity_provider_count` <- this_object$`liquidity_provider_count`
      self$`evaluated_ask` <- this_object$`evaluated_ask`
      self
    },
    #' Validate JSON input with respect to PairV2DTO
    #'
    #' @description
    #' Validate JSON input with respect to PairV2DTO and throw an exception if invalid
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
    #' @return String representation of PairV2DTO
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
#PairV2DTO$unlock()
#
## Below is an example to define the print fnuction
#PairV2DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PairV2DTO$lock()

