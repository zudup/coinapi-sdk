#' Create a new BundleV3DTO
#'
#' @description
#' BundleV3DTO Class
#'
#' @docType class
#' @title BundleV3DTO
#' @description BundleV3DTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  integer [optional]
#' @field id  character [optional]
#' @field eth_price_usd  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BundleV3DTO <- R6::R6Class(
  "BundleV3DTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `eth_price_usd` = NULL,
    `vid` = NULL,
    #' Initialize a new BundleV3DTO class.
    #'
    #' @description
    #' Initialize a new BundleV3DTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param id 
    #' @param eth_price_usd 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `eth_price_usd` = NULL, `vid` = NULL, ...
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
      if (!is.null(`eth_price_usd`)) {
        stopifnot(is.character(`eth_price_usd`), length(`eth_price_usd`) == 1)
        self$`eth_price_usd` <- `eth_price_usd`
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
    #' @return BundleV3DTO in JSON format
    #' @export
    toJSON = function() {
      BundleV3DTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        BundleV3DTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        BundleV3DTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        BundleV3DTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        BundleV3DTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`eth_price_usd`)) {
        BundleV3DTOObject[["eth_price_usd"]] <-
          self$`eth_price_usd`
      }
      if (!is.null(self$`vid`)) {
        BundleV3DTOObject[["vid"]] <-
          self$`vid`
      }
      BundleV3DTOObject
    },
    #' Deserialize JSON string into an instance of BundleV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of BundleV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of BundleV3DTO
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
      if (!is.null(this_object$`eth_price_usd`)) {
        self$`eth_price_usd` <- this_object$`eth_price_usd`
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
    #' @return BundleV3DTO in JSON format
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
        if (!is.null(self$`eth_price_usd`)) {
          sprintf(
          '"eth_price_usd":
            "%s"
                    ',
          self$`eth_price_usd`
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
    #' Deserialize JSON string into an instance of BundleV3DTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of BundleV3DTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of BundleV3DTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`eth_price_usd` <- this_object$`eth_price_usd`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to BundleV3DTO
    #'
    #' @description
    #' Validate JSON input with respect to BundleV3DTO and throw an exception if invalid
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
    #' @return String representation of BundleV3DTO
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
#BundleV3DTO$unlock()
#
## Below is an example to define the print fnuction
#BundleV3DTO$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BundleV3DTO$lock()

