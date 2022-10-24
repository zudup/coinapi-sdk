=begin
#OnChain API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/big_integer'
require 'openapi_client/models/bundle_v3_dto'
require 'openapi_client/models/burn_v3_dto'
require 'openapi_client/models/e_trade_aggressive_side'
require 'openapi_client/models/factory_v3_dto'
require 'openapi_client/models/mint_v3_dto'
require 'openapi_client/models/pair_dto'
require 'openapi_client/models/pair_v2_dto'
require 'openapi_client/models/pool_day_data_v3_dto'
require 'openapi_client/models/pool_hour_data_v3_dto'
require 'openapi_client/models/pool_v3_dto'
require 'openapi_client/models/position_snapshot_v3_dto'
require 'openapi_client/models/position_v3_dto'
require 'openapi_client/models/swap_dto'
require 'openapi_client/models/swap_v2_dto'
require 'openapi_client/models/swap_v3_dto'
require 'openapi_client/models/tick_day_data_v3_dto'
require 'openapi_client/models/tick_v3_dto'
require 'openapi_client/models/token_dto'
require 'openapi_client/models/token_hour_data_v3_dto'
require 'openapi_client/models/token_v2_dto'
require 'openapi_client/models/token_v3_dto'
require 'openapi_client/models/token_v3_day_data_dto'
require 'openapi_client/models/uniswap_day_data_v3_dto'

# APIs
require 'openapi_client/api/bundles_api'
require 'openapi_client/api/burns_api'
require 'openapi_client/api/factory_api'
require 'openapi_client/api/liquidity_position_api'
require 'openapi_client/api/liquidity_position_snapshots_api'
require 'openapi_client/api/mint_api'
require 'openapi_client/api/mints_api'
require 'openapi_client/api/poi_api'
require 'openapi_client/api/pool_day_data_api'
require 'openapi_client/api/pool_hour_data_api'
require 'openapi_client/api/pools_api'
require 'openapi_client/api/position_snapshot_api'
require 'openapi_client/api/positions_api'
require 'openapi_client/api/sushiswap_api'
require 'openapi_client/api/swaps_api'
require 'openapi_client/api/tick_day_data_api'
require 'openapi_client/api/ticks_api'
require 'openapi_client/api/token_day_data_api'
require 'openapi_client/api/token_hour_data_api'
require 'openapi_client/api/tokens_api'
require 'openapi_client/api/trades_api'
require 'openapi_client/api/transactions_api'
require 'openapi_client/api/uniswap_day_data_api'
require 'openapi_client/api/uniswap_v2_api'
require 'openapi_client/api/uniswap_v3_api'
require 'openapi_client/api/user_api'

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
