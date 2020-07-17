=begin
#OEML - REST API

#This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/balance'
require 'openapi_client/models/balance_data'
require 'openapi_client/models/message'
require 'openapi_client/models/ord_side'
require 'openapi_client/models/ord_status'
require 'openapi_client/models/ord_type'
require 'openapi_client/models/order_cancel_all_request'
require 'openapi_client/models/order_cancel_single_request'
require 'openapi_client/models/order_execution_report'
require 'openapi_client/models/order_execution_report_all_of'
require 'openapi_client/models/order_new_single_request'
require 'openapi_client/models/position'
require 'openapi_client/models/position_data'
require 'openapi_client/models/severity'
require 'openapi_client/models/time_in_force'
require 'openapi_client/models/validation_error'

# APIs
require 'openapi_client/api/balances_api'
require 'openapi_client/api/orders_api'
require 'openapi_client/api/positions_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end