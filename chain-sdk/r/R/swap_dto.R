#' Create a new SwapDTO
#'
#' @description
#' SwapDTO Class
#'
#' @docType class
#' @title SwapDTO
#' @description SwapDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field transaction  character [optional]
#' @field timestamp  character [optional]
#' @field pair  character [optional]
#' @field sender  character [optional]
#' @field amount_0_in  character [optional]
#' @field amount_1_in  character [optional]
#' @field amount_0_out  character [optional]
#' @field amount_1_out  character [optional]
#' @field to  character [optional]
#' @field log_index  character [optional]
#' @field amount_usd  character [optional]
#' @field vid  integer [optional]
#' @field pool_id  character [optional]
#' @field transaction_id  character [optional]
#' @field evaluated_price  numeric [optional]
#' @field evaluated_amount  numeric [optional]
#' @field evaluated_aggressor  \link{ETradeAggressiveSide} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SwapDTO <- R6::R6Class(
  "SwapDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `transaction` = NULL,
    `timestamp` = NULL,
    `pair` = NULL,
    `sender` = NULL,
    `amount_0_in` = NULL,
    `amount_1_in` = NULL,
    `amount_0_out` = NULL,
    `amount_1_out` = NULL,
    `to` = NULL,
    `log_index` = NULL,
    `amount_usd` = NULL,
    `vid` = NULL,
    `pool_id` = NULL,
    `transaction_id` = NULL,
    `evaluated_price` = NULL,
    `evaluated_amount` = NULL,
    `evaluated_aggressor` = NULL,
    #' Initialize a new SwapDTO class.
    #'
    #' @description
    #' Initialize a new SwapDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param id 
    #' @param transaction 
    #' @param timestamp 
    #' @param pair 
    #' @param sender 
    #' @param amount_0_in 
    #' @param amount_1_in 
    #' @param amount_0_out 
    #' @param amount_1_out 
    #' @param to 
    #' @param log_index 
    #' @param amount_usd 
    #' @param vid 
    #' @param pool_id pool_id
    #' @param transaction_id transaction_id
    #' @param evaluated_price evaluated_price
    #' @param evaluated_amount evaluated_amount
    #' @param evaluated_aggressor evaluated_aggressor
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `transaction` = NULL, `timestamp` = NULL, `pair` = NULL, `sender` = NULL, `amount_0_in` = NULL, `amount_1_in` = NULL, `amount_0_out` = NULL, `amount_1_out` = NULL, `to` = NULL, `log_index` = NULL, `amount_usd` = NULL, `vid` = NULL, `pool_id` = NULL, `transaction_id` = NULL, `evaluated_price` = NULL, `evaluated_amount` = NULL, `evaluated_aggressor` = NULL, ...
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
      if (!is.null(`timestamp`)) {
        stopifnot(is.character(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`pair`)) {
        stopifnot(is.character(`pair`), length(`pair`) == 1)
        self$`pair` <- `pair`
      }
      if (!is.null(`sender`)) {
        stopifnot(is.character(`sender`), length(`sender`) == 1)
        self$`sender` <- `sender`
      }
      if (!is.null(`amount_0_in`)) {
        stopifnot(is.character(`amount_0_in`), length(`amount_0_in`) == 1)
        self$`amount_0_in` <- `amount_0_in`
      }
      if (!is.null(`amount_1_in`)) {
        stopifnot(is.character(`amount_1_in`), length(`amount_1_in`) == 1)
        self$`amount_1_in` <- `amount_1_in`
      }
      if (!is.null(`amount_0_out`)) {
        stopifnot(is.character(`amount_0_out`), length(`amount_0_out`) == 1)
        self$`amount_0_out` <- `amount_0_out`
      }
      if (!is.null(`amount_1_out`)) {
        stopifnot(is.character(`amount_1_out`), length(`amount_1_out`) == 1)
        self$`amount_1_out` <- `amount_1_out`
      }
      if (!is.null(`to`)) {
        stopifnot(is.character(`to`), length(`to`) == 1)
        self$`to` <- `to`
      }
      if (!is.null(`log_index`)) {
        stopifnot(is.character(`log_index`), length(`log_index`) == 1)
        self$`log_index` <- `log_index`
      }
      if (!is.null(`amount_usd`)) {
        stopifnot(is.character(`amount_usd`), length(`amount_usd`) == 1)
        self$`amount_usd` <- `amount_usd`
      }
      if (!is.null(`vid`)) {
        stopifnot(is.numeric(`vid`), length(`vid`) == 1)
        self$`vid` <- `vid`
      }
      if (!is.null(`pool_id`)) {
        stopifnot(is.character(`pool_id`), length(`pool_id`) == 1)
        self$`pool_id` <- `pool_id`
      }
      if (!is.null(`transaction_id`)) {
        stopifnot(is.character(`transaction_id`), length(`transaction_id`) == 1)
        self$`transaction_id` <- `transaction_id`
      }
      if (!is.null(`evaluated_price`)) {
        stopifnot(is.numeric(`evaluated_price`), length(`evaluated_price`) == 1)
        self$`evaluated_price` <- `evaluated_price`
      }
      if (!is.null(`evaluated_amount`)) {
        stopifnot(is.numeric(`evaluated_amount`), length(`evaluated_amount`) == 1)
        self$`evaluated_amount` <- `evaluated_amount`
      }
      if (!is.null(`evaluated_aggressor`)) {
        stopifnot(R6::is.R6(`evaluated_aggressor`))
        self$`evaluated_aggressor` <- `evaluated_aggressor`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SwapDTO in JSON format
    #' @export
    toJSON = function() {
      SwapDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SwapDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SwapDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SwapDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SwapDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction`)) {
        SwapDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`timestamp`)) {
        SwapDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`pair`)) {
        SwapDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`sender`)) {
        SwapDTOObject[["sender"]] <-
          self$`sender`
      }
      if (!is.null(self$`amount_0_in`)) {
        SwapDTOObject[["amount_0_in"]] <-
          self$`amount_0_in`
      }
      if (!is.null(self$`amount_1_in`)) {
        SwapDTOObject[["amount_1_in"]] <-
          self$`amount_1_in`
      }
      if (!is.null(self$`amount_0_out`)) {
        SwapDTOObject[["amount_0_out"]] <-
          self$`amount_0_out`
      }
      if (!is.null(self$`amount_1_out`)) {
        SwapDTOObject[["amount_1_out"]] <-
          self$`amount_1_out`
      }
      if (!is.null(self$`to`)) {
        SwapDTOObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`log_index`)) {
        SwapDTOObject[["log_index"]] <-
          self$`log_index`
      }
      if (!is.null(self$`amount_usd`)) {
        SwapDTOObject[["amount_usd"]] <-
          self$`amount_usd`
      }
      if (!is.null(self$`vid`)) {
        SwapDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`pool_id`)) {
        SwapDTOObject[["pool_id"]] <-
          self$`pool_id`
      }
      if (!is.null(self$`transaction_id`)) {
        SwapDTOObject[["transaction_id"]] <-
          self$`transaction_id`
      }
      if (!is.null(self$`evaluated_price`)) {
        SwapDTOObject[["evaluated_price"]] <-
          self$`evaluated_price`
      }
      if (!is.null(self$`evaluated_amount`)) {
        SwapDTOObject[["evaluated_amount"]] <-
          self$`evaluated_amount`
      }
      if (!is.null(self$`evaluated_aggressor`)) {
        SwapDTOObject[["evaluated_aggressor"]] <-
          self$`evaluated_aggressor`$toJSON()
      }
      SwapDTOObject
    },
    #' Deserialize JSON string into an instance of SwapDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SwapDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SwapDTO
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
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`pair`)) {
        self$`pair` <- this_object$`pair`
      }
      if (!is.null(this_object$`sender`)) {
        self$`sender` <- this_object$`sender`
      }
      if (!is.null(this_object$`amount_0_in`)) {
        self$`amount_0_in` <- this_object$`amount_0_in`
      }
      if (!is.null(this_object$`amount_1_in`)) {
        self$`amount_1_in` <- this_object$`amount_1_in`
      }
      if (!is.null(this_object$`amount_0_out`)) {
        self$`amount_0_out` <- this_object$`amount_0_out`
      }
      if (!is.null(this_object$`amount_1_out`)) {
        self$`amount_1_out` <- this_object$`amount_1_out`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`log_index`)) {
        self$`log_index` <- this_object$`log_index`
      }
      if (!is.null(this_object$`amount_usd`)) {
        self$`amount_usd` <- this_object$`amount_usd`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`pool_id`)) {
        self$`pool_id` <- this_object$`pool_id`
      }
      if (!is.null(this_object$`transaction_id`)) {
        self$`transaction_id` <- this_object$`transaction_id`
      }
      if (!is.null(this_object$`evaluated_price`)) {
        self$`evaluated_price` <- this_object$`evaluated_price`
      }
      if (!is.null(this_object$`evaluated_amount`)) {
        self$`evaluated_amount` <- this_object$`evaluated_amount`
      }
      if (!is.null(this_object$`evaluated_aggressor`)) {
        evaluated_aggressor_object <- ETradeAggressiveSide$new()
        evaluated_aggressor_object$fromJSON(jsonlite::toJSON(this_object$evaluated_aggressor, auto_unbox = TRUE, digits = NA))
        self$`evaluated_aggressor` <- evaluated_aggressor_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SwapDTO in JSON format
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`pair`)) {
          sprintf(
          '"pair":
            "%s"
                    ',
          self$`pair`
          )
        },
        if (!is.null(self$`sender`)) {
          sprintf(
          '"sender":
            "%s"
                    ',
          self$`sender`
          )
        },
        if (!is.null(self$`amount_0_in`)) {
          sprintf(
          '"amount_0_in":
            "%s"
                    ',
          self$`amount_0_in`
          )
        },
        if (!is.null(self$`amount_1_in`)) {
          sprintf(
          '"amount_1_in":
            "%s"
                    ',
          self$`amount_1_in`
          )
        },
        if (!is.null(self$`amount_0_out`)) {
          sprintf(
          '"amount_0_out":
            "%s"
                    ',
          self$`amount_0_out`
          )
        },
        if (!is.null(self$`amount_1_out`)) {
          sprintf(
          '"amount_1_out":
            "%s"
                    ',
          self$`amount_1_out`
          )
        },
        if (!is.null(self$`to`)) {
          sprintf(
          '"to":
            "%s"
                    ',
          self$`to`
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
        if (!is.null(self$`amount_usd`)) {
          sprintf(
          '"amount_usd":
            "%s"
                    ',
          self$`amount_usd`
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
        if (!is.null(self$`pool_id`)) {
          sprintf(
          '"pool_id":
            "%s"
                    ',
          self$`pool_id`
          )
        },
        if (!is.null(self$`transaction_id`)) {
          sprintf(
          '"transaction_id":
            "%s"
                    ',
          self$`transaction_id`
          )
        },
        if (!is.null(self$`evaluated_price`)) {
          sprintf(
          '"evaluated_price":
            %d
                    ',
          self$`evaluated_price`
          )
        },
        if (!is.null(self$`evaluated_amount`)) {
          sprintf(
          '"evaluated_amount":
            %d
                    ',
          self$`evaluated_amount`
          )
        },
        if (!is.null(self$`evaluated_aggressor`)) {
          sprintf(
          '"evaluated_aggressor":
          %s
          ',
          jsonlite::toJSON(self$`evaluated_aggressor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SwapDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SwapDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SwapDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`transaction` <- this_object$`transaction`
      self$`timestamp` <- this_object$`timestamp`
      self$`pair` <- this_object$`pair`
      self$`sender` <- this_object$`sender`
      self$`amount_0_in` <- this_object$`amount_0_in`
      self$`amount_1_in` <- this_object$`amount_1_in`
      self$`amount_0_out` <- this_object$`amount_0_out`
      self$`amount_1_out` <- this_object$`amount_1_out`
      self$`to` <- this_object$`to`
      self$`log_index` <- this_object$`log_index`
      self$`amount_usd` <- this_object$`amount_usd`
      self$`vid` <- this_object$`vid`
      self$`pool_id` <- this_object$`pool_id`
      self$`transaction_id` <- this_object$`transaction_id`
      self$`evaluated_price` <- this_object$`evaluated_price`
      self$`evaluated_amount` <- this_object$`evaluated_amount`
      self$`evaluated_aggressor` <- ETradeAggressiveSide$new()$fromJSON(jsonlite::toJSON(this_object$evaluated_aggressor, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to SwapDTO
    #'
    #' @description
    #' Validate JSON input with respect to SwapDTO and throw an exception if invalid
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
    #' @return String representation of SwapDTO
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
#SwapDTO$unlock()
#
## Below is an example to define the print fnuction
#SwapDTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#SwapDTO$lock()

