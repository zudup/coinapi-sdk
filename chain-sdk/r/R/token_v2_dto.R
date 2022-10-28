#' Create a new TokenV2DTO
#'
#' @description
#' Stores aggregated information for a specific token across all pairs that token is included in.
#'
#' @docType class
#' @title TokenV2DTO
#' @description TokenV2DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field vid  integer [optional]
#' @field id Token address. character [optional]
#' @field symbol Token symbol. character [optional]
#' @field name Token name. character [optional]
#' @field decimals Token decimals. integer [optional]
#' @field total_supply  \link{BigInteger} [optional]
#' @field trade_volume Amount of token traded all time across all pairs. character [optional]
#' @field trade_volume_usd Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). character [optional]
#' @field untracked_volume_usd Amount of token in USD traded all time across pairs (no minimum liquidity threshold). character [optional]
#' @field tx_count  \link{BigInteger} [optional]
#' @field total_liquidity Total amount of token provided as liquidity across all pairs. character [optional]
#' @field derived_eth ETH per token. character [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenV2DTO <- R6::R6Class(
  "TokenV2DTO",
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
    `trade_volume` = NULL,
    `trade_volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `tx_count` = NULL,
    `total_liquidity` = NULL,
    `derived_eth` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new TokenV2DTO class.
    #'
    #' @description
    #' Initialize a new TokenV2DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param id Token address.
    #' @param symbol Token symbol.
    #' @param name Token name.
    #' @param decimals Token decimals.
    #' @param total_supply total_supply
    #' @param trade_volume Amount of token traded all time across all pairs.
    #' @param trade_volume_usd Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
    #' @param untracked_volume_usd Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
    #' @param tx_count tx_count
    #' @param total_liquidity Total amount of token provided as liquidity across all pairs.
    #' @param derived_eth ETH per token.
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `symbol` = NULL, `name` = NULL, `decimals` = NULL, `total_supply` = NULL, `trade_volume` = NULL, `trade_volume_usd` = NULL, `untracked_volume_usd` = NULL, `tx_count` = NULL, `total_liquidity` = NULL, `derived_eth` = NULL, `token_symbol` = NULL, ...
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
      if (!is.null(`trade_volume`)) {
        stopifnot(is.character(`trade_volume`), length(`trade_volume`) == 1)
        self$`trade_volume` <- `trade_volume`
      }
      if (!is.null(`trade_volume_usd`)) {
        stopifnot(is.character(`trade_volume_usd`), length(`trade_volume_usd`) == 1)
        self$`trade_volume_usd` <- `trade_volume_usd`
      }
      if (!is.null(`untracked_volume_usd`)) {
        stopifnot(is.character(`untracked_volume_usd`), length(`untracked_volume_usd`) == 1)
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`total_liquidity`)) {
        stopifnot(is.character(`total_liquidity`), length(`total_liquidity`) == 1)
        self$`total_liquidity` <- `total_liquidity`
      }
      if (!is.null(`derived_eth`)) {
        stopifnot(is.character(`derived_eth`), length(`derived_eth`) == 1)
        self$`derived_eth` <- `derived_eth`
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
    #' @return TokenV2DTO in JSON format
    #' @export
    toJSON = function() {
      TokenV2DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        TokenV2DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        TokenV2DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        TokenV2DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        TokenV2DTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        TokenV2DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`symbol`)) {
        TokenV2DTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`name`)) {
        TokenV2DTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`decimals`)) {
        TokenV2DTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_supply`)) {
        TokenV2DTOObject[["total_supply"]] <-
          self$`total_supply`$toJSON()
      }
      if (!is.null(self$`trade_volume`)) {
        TokenV2DTOObject[["trade_volume"]] <-
          self$`trade_volume`
      }
      if (!is.null(self$`trade_volume_usd`)) {
        TokenV2DTOObject[["trade_volume_usd"]] <-
          self$`trade_volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        TokenV2DTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        TokenV2DTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`total_liquidity`)) {
        TokenV2DTOObject[["total_liquidity"]] <-
          self$`total_liquidity`
      }
      if (!is.null(self$`derived_eth`)) {
        TokenV2DTOObject[["derived_eth"]] <-
          self$`derived_eth`
      }
      if (!is.null(self$`token_symbol`)) {
        TokenV2DTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      TokenV2DTOObject
    },
    #' Deserialize JSON string into an instance of TokenV2DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenV2DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenV2DTO
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
      if (!is.null(this_object$`trade_volume`)) {
        self$`trade_volume` <- this_object$`trade_volume`
      }
      if (!is.null(this_object$`trade_volume_usd`)) {
        self$`trade_volume_usd` <- this_object$`trade_volume_usd`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        tx_count_object <- BigInteger$new()
        tx_count_object$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- tx_count_object
      }
      if (!is.null(this_object$`total_liquidity`)) {
        self$`total_liquidity` <- this_object$`total_liquidity`
      }
      if (!is.null(this_object$`derived_eth`)) {
        self$`derived_eth` <- this_object$`derived_eth`
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
    #' @return TokenV2DTO in JSON format
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
        if (!is.null(self$`trade_volume`)) {
          sprintf(
          '"trade_volume":
            "%s"
                    ',
          self$`trade_volume`
          )
        },
        if (!is.null(self$`trade_volume_usd`)) {
          sprintf(
          '"trade_volume_usd":
            "%s"
                    ',
          self$`trade_volume_usd`
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
        if (!is.null(self$`total_liquidity`)) {
          sprintf(
          '"total_liquidity":
            "%s"
                    ',
          self$`total_liquidity`
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
    #' Deserialize JSON string into an instance of TokenV2DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenV2DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenV2DTO
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
      self$`trade_volume` <- this_object$`trade_volume`
      self$`trade_volume_usd` <- this_object$`trade_volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`tx_count` <- BigInteger$new()$fromJSON(jsonlite::toJSON(this_object$tx_count, auto_unbox = TRUE, digits = NA))
      self$`total_liquidity` <- this_object$`total_liquidity`
      self$`derived_eth` <- this_object$`derived_eth`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to TokenV2DTO
    #'
    #' @description
    #' Validate JSON input with respect to TokenV2DTO and throw an exception if invalid
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
    #' @return String representation of TokenV2DTO
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
#TokenV2DTO$unlock()
#
## Below is an example to define the print fnuction
#TokenV2DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TokenV2DTO$lock()

