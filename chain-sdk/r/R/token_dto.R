#' Create a new TokenDTO
#'
#' @description
#' TokenDTO Class
#'
#' @docType class
#' @title TokenDTO
#' @description TokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field factory  character [optional]
#' @field symbol  character [optional]
#' @field name  character [optional]
#' @field decimals  character [optional]
#' @field total_supply  character [optional]
#' @field volume  character [optional]
#' @field volume_usd  character [optional]
#' @field untracked_volume_usd  character [optional]
#' @field tx_count  character [optional]
#' @field liquidity  character [optional]
#' @field derived_eth  character [optional]
#' @field whitelist_pairs  list(character) [optional]
#' @field vid  integer [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenDTO <- R6::R6Class(
  "TokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `factory` = NULL,
    `symbol` = NULL,
    `name` = NULL,
    `decimals` = NULL,
    `total_supply` = NULL,
    `volume` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `tx_count` = NULL,
    `liquidity` = NULL,
    `derived_eth` = NULL,
    `whitelist_pairs` = NULL,
    `vid` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new TokenDTO class.
    #'
    #' @description
    #' Initialize a new TokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param id 
    #' @param factory 
    #' @param symbol 
    #' @param name 
    #' @param decimals 
    #' @param total_supply 
    #' @param volume 
    #' @param volume_usd 
    #' @param untracked_volume_usd 
    #' @param tx_count 
    #' @param liquidity 
    #' @param derived_eth 
    #' @param whitelist_pairs 
    #' @param vid 
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `factory` = NULL, `symbol` = NULL, `name` = NULL, `decimals` = NULL, `total_supply` = NULL, `volume` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `tx_count` = NULL, `liquidity` = NULL, `derived_eth` = NULL, `whitelist_pairs` = NULL, `vid` = NULL, `token_symbol` = NULL, ...
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
      if (!is.null(`factory`)) {
        stopifnot(is.character(`factory`), length(`factory`) == 1)
        self$`factory` <- `factory`
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
        stopifnot(is.character(`decimals`), length(`decimals`) == 1)
        self$`decimals` <- `decimals`
      }
      if (!is.null(`total_supply`)) {
        stopifnot(is.character(`total_supply`), length(`total_supply`) == 1)
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
      if (!is.null(`tx_count`)) {
        stopifnot(is.character(`tx_count`), length(`tx_count`) == 1)
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`liquidity`)) {
        stopifnot(is.character(`liquidity`), length(`liquidity`) == 1)
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`derived_eth`)) {
        stopifnot(is.character(`derived_eth`), length(`derived_eth`) == 1)
        self$`derived_eth` <- `derived_eth`
      }
      if (!is.null(`whitelist_pairs`)) {
        stopifnot(is.vector(`whitelist_pairs`), length(`whitelist_pairs`) != 0)
        sapply(`whitelist_pairs`, function(x) stopifnot(is.character(x)))
        self$`whitelist_pairs` <- `whitelist_pairs`
      }
      if (!is.null(`vid`)) {
        stopifnot(is.numeric(`vid`), length(`vid`) == 1)
        self$`vid` <- `vid`
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
    #' @return TokenDTO in JSON format
    #' @export
    toJSON = function() {
      TokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        TokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        TokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        TokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        TokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`factory`)) {
        TokenDTOObject[["factory"]] <-
          self$`factory`
      }
      if (!is.null(self$`symbol`)) {
        TokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`name`)) {
        TokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`decimals`)) {
        TokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_supply`)) {
        TokenDTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`volume`)) {
        TokenDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_usd`)) {
        TokenDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        TokenDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        TokenDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`liquidity`)) {
        TokenDTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`derived_eth`)) {
        TokenDTOObject[["derived_eth"]] <-
          self$`derived_eth`
      }
      if (!is.null(self$`whitelist_pairs`)) {
        TokenDTOObject[["whitelist_pairs"]] <-
          self$`whitelist_pairs`
      }
      if (!is.null(self$`vid`)) {
        TokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`token_symbol`)) {
        TokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      TokenDTOObject
    },
    #' Deserialize JSON string into an instance of TokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenDTO
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
      if (!is.null(this_object$`factory`)) {
        self$`factory` <- this_object$`factory`
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
        self$`total_supply` <- this_object$`total_supply`
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
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`derived_eth`)) {
        self$`derived_eth` <- this_object$`derived_eth`
      }
      if (!is.null(this_object$`whitelist_pairs`)) {
        self$`whitelist_pairs` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pairs`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
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
    #' @return TokenDTO in JSON format
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
        if (!is.null(self$`factory`)) {
          sprintf(
          '"factory":
            "%s"
                    ',
          self$`factory`
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
            "%s"
                    ',
          self$`decimals`
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
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
            "%s"
                    ',
          self$`tx_count`
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
        if (!is.null(self$`derived_eth`)) {
          sprintf(
          '"derived_eth":
            "%s"
                    ',
          self$`derived_eth`
          )
        },
        if (!is.null(self$`whitelist_pairs`)) {
          sprintf(
          '"whitelist_pairs":
             [%s]
          ',
          paste(unlist(lapply(self$`whitelist_pairs`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of TokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of TokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`factory` <- this_object$`factory`
      self$`symbol` <- this_object$`symbol`
      self$`name` <- this_object$`name`
      self$`decimals` <- this_object$`decimals`
      self$`total_supply` <- this_object$`total_supply`
      self$`volume` <- this_object$`volume`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`liquidity` <- this_object$`liquidity`
      self$`derived_eth` <- this_object$`derived_eth`
      self$`whitelist_pairs` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pairs`, "array[character]", loadNamespace("openapi"))
      self$`vid` <- this_object$`vid`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to TokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to TokenDTO and throw an exception if invalid
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
    #' @return String representation of TokenDTO
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
#TokenDTO$unlock()
#
## Below is an example to define the print fnuction
#TokenDTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TokenDTO$lock()

