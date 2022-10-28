#' Create a new TokenV3DTO
#'
#' @description
#' Stores aggregated information for a specific token across all pairs that token is included in.
#'
#' @docType class
#' @title TokenV3DTO
#' @description TokenV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field vid  integer [optional]
#' @field id token address character [optional]
#' @field symbol token symbol character [optional]
#' @field name token name character [optional]
#' @field decimals token decimals integer [optional]
#' @field total_supply  \link{BigInteger} [optional]
#' @field volume volume in token units character [optional]
#' @field volume_usd volume in derived USD character [optional]
#' @field untracked_volume_usd volume in USD even on pools with less reliable USD values character [optional]
#' @field fees_usd fees in USD character [optional]
#' @field tx_count  \link{BigInteger} [optional]
#' @field pool_count  \link{BigInteger} [optional]
#' @field total_value_locked liquidity across all pools in token units character [optional]
#' @field total_value_locked_usd liquidity across all pools in derived USD character [optional]
#' @field total_value_locked_usd_untracked TVL derived in USD untracked character [optional]
#' @field derived_eth derived price in ETH character [optional]
#' @field whitelist_pools pools token is in that are white listed for USD pricing list(character) [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenV3DTO <- R6::R6Class(
  "TokenV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `symbol` = NULL,
    `name` = NULL,
    `decimals` = NULL,
    `total_supply` = NULL,
    `volume` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `fees_usd` = NULL,
    `tx_count` = NULL,
    `pool_count` = NULL,
    `total_value_locked` = NULL,
    `total_value_locked_usd` = NULL,
    `total_value_locked_usd_untracked` = NULL,
    `derived_eth` = NULL,
    `whitelist_pools` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new TokenV3DTO class.
    #'
    #' @description
    #' Initialize a new TokenV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param id token address
    #' @param symbol token symbol
    #' @param name token name
    #' @param decimals token decimals
    #' @param total_supply total_supply
    #' @param volume volume in token units
    #' @param volume_usd volume in derived USD
    #' @param untracked_volume_usd volume in USD even on pools with less reliable USD values
    #' @param fees_usd fees in USD
    #' @param tx_count tx_count
    #' @param pool_count pool_count
    #' @param total_value_locked liquidity across all pools in token units
    #' @param total_value_locked_usd liquidity across all pools in derived USD
    #' @param total_value_locked_usd_untracked TVL derived in USD untracked
    #' @param derived_eth derived price in ETH
    #' @param whitelist_pools pools token is in that are white listed for USD pricing
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `symbol` = NULL, `name` = NULL, `decimals` = NULL, `total_supply` = NULL, `volume` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `fees_usd` = NULL, `tx_count` = NULL, `pool_count` = NULL, `total_value_locked` = NULL, `total_value_locked_usd` = NULL, `total_value_locked_usd_untracked` = NULL, `derived_eth` = NULL, `whitelist_pools` = NULL, `token_symbol` = NULL, ...
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
      if (!is.null(`symbol`)) {
        stopifnot(is.character(`symbol`), length(`symbol`) == 1)
        self$`symbol` <- `symbol`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!is.null(`decimals`)) {
        stopifnot(is.numeric(`decimals`), length(`decimals`) == 1)
        self$`decimals` <- `decimals`
      }
      if (!is.null(`total_supply`)) {
        stopifnot(R6::is.R6(`total_supply`))
        self$`total_supply` <- `total_supply`
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
      if (!is.null(`fees_usd`)) {
        stopifnot(is.character(`fees_usd`), length(`fees_usd`) == 1)
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`pool_count`)) {
        stopifnot(R6::is.R6(`pool_count`))
        self$`pool_count` <- `pool_count`
      }
      if (!is.null(`total_value_locked`)) {
        stopifnot(is.character(`total_value_locked`), length(`total_value_locked`) == 1)
        self$`total_value_locked` <- `total_value_locked`
      }
      if (!is.null(`total_value_locked_usd`)) {
        stopifnot(is.character(`total_value_locked_usd`), length(`total_value_locked_usd`) == 1)
        self$`total_value_locked_usd` <- `total_value_locked_usd`
      }
      if (!is.null(`total_value_locked_usd_untracked`)) {
        stopifnot(is.character(`total_value_locked_usd_untracked`), length(`total_value_locked_usd_untracked`) == 1)
        self$`total_value_locked_usd_untracked` <- `total_value_locked_usd_untracked`
      }
      if (!is.null(`derived_eth`)) {
        stopifnot(is.character(`derived_eth`), length(`derived_eth`) == 1)
        self$`derived_eth` <- `derived_eth`
      }
      if (!is.null(`whitelist_pools`)) {
        stopifnot(is.vector(`whitelist_pools`), length(`whitelist_pools`) != 0)
        sapply(`whitelist_pools`, function(x) stopifnot(is.character(x)))
        self$`whitelist_pools` <- `whitelist_pools`
      }
      if (!is.null(`token_symbol`)) {
        stopifnot(is.character(`token_symbol`), length(`token_symbol`) == 1)
        self$`token_symbol` <- `token_symbol`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TokenV3DTO in JSON format
    #' @export
    toJSON = function() {
      TokenV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        TokenV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        TokenV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        TokenV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        TokenV3DTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        TokenV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`symbol`)) {
        TokenV3DTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`name`)) {
        TokenV3DTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`decimals`)) {
        TokenV3DTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_supply`)) {
        TokenV3DTOObject[["total_supply"]] <-
          self$`total_supply`$toJSON()
      }
      if (!is.null(self$`volume`)) {
        TokenV3DTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_usd`)) {
        TokenV3DTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        TokenV3DTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        TokenV3DTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`tx_count`)) {
        TokenV3DTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`pool_count`)) {
        TokenV3DTOObject[["pool_count"]] <-
          self$`pool_count`$toJSON()
      }
      if (!is.null(self$`total_value_locked`)) {
        TokenV3DTOObject[["total_value_locked"]] <-
          self$`total_value_locked`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        TokenV3DTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`total_value_locked_usd_untracked`)) {
        TokenV3DTOObject[["total_value_locked_usd_untracked"]] <-
          self$`total_value_locked_usd_untracked`
      }
      if (!is.null(self$`derived_eth`)) {
        TokenV3DTOObject[["derived_eth"]] <-
          self$`derived_eth`
      }
      if (!is.null(self$`whitelist_pools`)) {
        TokenV3DTOObject[["whitelist_pools"]] <-
          self$`whitelist_pools`
      }
      if (!is.null(self$`token_symbol`)) {
        TokenV3DTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      TokenV3DTOObject
    },
    #' Deserialize JSON string into an instance of TokenV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenV3DTO
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
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`decimals`)) {
        self$`decimals` <- this_object$`decimals`
      }
      if (!is.null(this_object$`total_supply`)) {
        total_supply_object <- BigInteger$new()
        total_supply_object$fromJSON(jsonlite::toJSON(this_object$total_supply, auto_unbox = TRUE, digits = NA))
        self$`total_supply` <- total_supply_object
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
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        tx_count_object <- BigInteger$new()
        tx_count_object$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- tx_count_object
      }
      if (!is.null(this_object$`pool_count`)) {
        pool_count_object <- BigInteger$new()
        pool_count_object$fromJSON(jsonlite::toJSON(this_object$pool_count, auto_unbox = TRUE, digits = NA))
        self$`pool_count` <- pool_count_object
      }
      if (!is.null(this_object$`total_value_locked`)) {
        self$`total_value_locked` <- this_object$`total_value_locked`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`total_value_locked_usd_untracked`)) {
        self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      }
      if (!is.null(this_object$`derived_eth`)) {
        self$`derived_eth` <- this_object$`derived_eth`
      }
      if (!is.null(this_object$`whitelist_pools`)) {
        self$`whitelist_pools` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pools`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`token_symbol`)) {
        self$`token_symbol` <- this_object$`token_symbol`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TokenV3DTO in JSON format
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
        if (!is.null(self$`symbol`)) {
          sprintf(
          '"symbol":
            "%s"
                    ',
          self$`symbol`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`decimals`)) {
          sprintf(
          '"decimals":
            %d
                    ',
          self$`decimals`
          )
        },
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
          %s
          ',
          jsonlite::toJSON(self$`total_supply`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`pool_count`)) {
          sprintf(
          '"pool_count":
          %s
          ',
          jsonlite::toJSON(self$`pool_count`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`total_value_locked_usd_untracked`)) {
          sprintf(
          '"total_value_locked_usd_untracked":
            "%s"
                    ',
          self$`total_value_locked_usd_untracked`
          )
        },
        if (!is.null(self$`derived_eth`)) {
          sprintf(
          '"derived_eth":
            "%s"
                    ',
          self$`derived_eth`
          )
        },
        if (!is.null(self$`whitelist_pools`)) {
          sprintf(
          '"whitelist_pools":
             [%s]
          ',
          paste(unlist(lapply(self$`whitelist_pools`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`token_symbol`)) {
          sprintf(
          '"token_symbol":
            "%s"
                    ',
          self$`token_symbol`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TokenV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`symbol` <- this_object$`symbol`
      self$`name` <- this_object$`name`
      self$`decimals` <- this_object$`decimals`
      self$`total_supply` <- BigInteger$new()$fromJSON(jsonlite::toJSON(this_object$total_supply, auto_unbox = TRUE, digits = NA))
      self$`volume` <- this_object$`volume`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`tx_count` <- BigInteger$new()$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
      self$`pool_count` <- BigInteger$new()$fromJSON(jsonlite::toJSON(this_object$pool_count, auto_unbox = TRUE, digits = NA))
      self$`total_value_locked` <- this_object$`total_value_locked`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      self$`derived_eth` <- this_object$`derived_eth`
      self$`whitelist_pools` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pools`, "array[character]", loadNamespace("openapi"))
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to TokenV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to TokenV3DTO and throw an exception if invalid
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
    #' @return String representation of TokenV3DTO
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
#TokenV3DTO$unlock()
#
## Below is an example to define the print fnuction
#TokenV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TokenV3DTO$lock()

