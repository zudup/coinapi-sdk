#' Create a new UniswapV3TransactionV3DTO
#'
#' @description
#' UniswapV3TransactionV3DTO Class
#'
#' @docType class
#' @title UniswapV3TransactionV3DTO
#' @description UniswapV3TransactionV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Transaction hash. character [optional]
#' @field timestamp Timestamp txn was confirmed. character [optional]
#' @field gas_used Gas used during txn execution. character [optional]
#' @field gas_price  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3TransactionV3DTO <- R6::R6Class(
  "UniswapV3TransactionV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `timestamp` = NULL,
    `gas_used` = NULL,
    `gas_price` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3TransactionV3DTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3TransactionV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Transaction hash.
    #' @param timestamp Timestamp txn was confirmed.
    #' @param gas_used Gas used during txn execution.
    #' @param gas_price 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `timestamp` = NULL, `gas_used` = NULL, `gas_price` = NULL, `vid` = NULL, ...) {
      if (!is.null(`entry_time`)) {
        if (!is.character(`entry_time`)) {
          stop(paste("Error! Invalid data for `entry_time`. Must be a string:", `entry_time`))
        }
        self$`entry_time` <- `entry_time`
      }
      if (!is.null(`recv_time`)) {
        if (!is.character(`recv_time`)) {
          stop(paste("Error! Invalid data for `recv_time`. Must be a string:", `recv_time`))
        }
        self$`recv_time` <- `recv_time`
      }
      if (!is.null(`block_number`)) {
        if (!(is.numeric(`block_number`) && length(`block_number`) == 1)) {
          stop(paste("Error! Invalid data for `block_number`. Must be an integer:", `block_number`))
        }
        self$`block_number` <- `block_number`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`gas_used`)) {
        if (!(is.character(`gas_used`) && length(`gas_used`) == 1)) {
          stop(paste("Error! Invalid data for `gas_used`. Must be a string:", `gas_used`))
        }
        self$`gas_used` <- `gas_used`
      }
      if (!is.null(`gas_price`)) {
        if (!(is.character(`gas_price`) && length(`gas_price`) == 1)) {
          stop(paste("Error! Invalid data for `gas_price`. Must be a string:", `gas_price`))
        }
        self$`gas_price` <- `gas_price`
      }
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3TransactionV3DTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3TransactionV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3TransactionV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3TransactionV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3TransactionV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3TransactionV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`timestamp`)) {
        UniswapV3TransactionV3DTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`gas_used`)) {
        UniswapV3TransactionV3DTOObject[["gas_used"]] <-
          self$`gas_used`
      }
      if (!is.null(self$`gas_price`)) {
        UniswapV3TransactionV3DTOObject[["gas_price"]] <-
          self$`gas_price`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3TransactionV3DTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3TransactionV3DTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3TransactionV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TransactionV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TransactionV3DTO
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
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`gas_used`)) {
        self$`gas_used` <- this_object$`gas_used`
      }
      if (!is.null(this_object$`gas_price`)) {
        self$`gas_price` <- this_object$`gas_price`
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
    #' @return UniswapV3TransactionV3DTO in JSON format
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`gas_used`)) {
          sprintf(
          '"gas_used":
            "%s"
                    ',
          self$`gas_used`
          )
        },
        if (!is.null(self$`gas_price`)) {
          sprintf(
          '"gas_price":
            "%s"
                    ',
          self$`gas_price`
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
    #' Deserialize JSON string into an instance of UniswapV3TransactionV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TransactionV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TransactionV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`timestamp` <- this_object$`timestamp`
      self$`gas_used` <- this_object$`gas_used`
      self$`gas_price` <- this_object$`gas_price`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3TransactionV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3TransactionV3DTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3TransactionV3DTO
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# UniswapV3TransactionV3DTO$unlock()
#
## Below is an example to define the print fnuction
# UniswapV3TransactionV3DTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3TransactionV3DTO$lock()

