=begin
#On Chain - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/cow_order_dto'
require 'openapi_client/models/cow_settlement_dto'
require 'openapi_client/models/cow_token_dto'
require 'openapi_client/models/cow_trade_dto'
require 'openapi_client/models/cow_user_dto'
require 'openapi_client/models/curve_account_dto'
require 'openapi_client/models/curve_add_liquidity_event_dto'
require 'openapi_client/models/curve_admin_fee_change_log_dto'
require 'openapi_client/models/curve_amplification_coeff_change_log_dto'
require 'openapi_client/models/curve_coin_dto'
require 'openapi_client/models/curve_contract_dto'
require 'openapi_client/models/curve_contract_version_dto'
require 'openapi_client/models/curve_daily_volume_dto'
require 'openapi_client/models/curve_exchange_dto'
require 'openapi_client/models/curve_fee_change_log_dto'
require 'openapi_client/models/curve_gauge_dto'
require 'openapi_client/models/curve_gauge_deposit_dto'
require 'openapi_client/models/curve_gauge_liquidity_dto'
require 'openapi_client/models/curve_gauge_total_weight_dto'
require 'openapi_client/models/curve_gauge_type_dto'
require 'openapi_client/models/curve_gauge_type_weight_dto'
require 'openapi_client/models/curve_gauge_weight_dto'
require 'openapi_client/models/curve_gauge_weight_vote_dto'
require 'openapi_client/models/curve_gauge_withdraw_dto'
require 'openapi_client/models/curve_hourly_volume_dto'
require 'openapi_client/models/curve_lp_token_dto'
require 'openapi_client/models/curve_pool_dto'
require 'openapi_client/models/curve_proposal_dto'
require 'openapi_client/models/curve_proposal_vote_dto'
require 'openapi_client/models/curve_remove_liquidity_event_dto'
require 'openapi_client/models/curve_remove_liquidity_one_event_dto'
require 'openapi_client/models/curve_system_state_dto'
require 'openapi_client/models/curve_token_dto'
require 'openapi_client/models/curve_transfer_ownership_event_dto'
require 'openapi_client/models/curve_underlying_coin_dto'
require 'openapi_client/models/curve_voting_app_dto'
require 'openapi_client/models/curve_weekly_volume_dto'
require 'openapi_client/models/dex_batch_dto'
require 'openapi_client/models/dex_deposit_dto'
require 'openapi_client/models/dex_order_dto'
require 'openapi_client/models/dex_price_dto'
require 'openapi_client/models/dex_solution_dto'
require 'openapi_client/models/dex_stats_dto'
require 'openapi_client/models/dex_token_dto'
require 'openapi_client/models/dex_trade_dto'
require 'openapi_client/models/dex_user_dto'
require 'openapi_client/models/dex_withdraw_dto'
require 'openapi_client/models/dex_withdraw_request_dto'
require 'openapi_client/models/numerics_big_integer'
require 'openapi_client/models/sushiswap_bundle_dto'
require 'openapi_client/models/sushiswap_burn_dto'
require 'openapi_client/models/sushiswap_day_data_dto'
require 'openapi_client/models/sushiswap_factory_dto'
require 'openapi_client/models/sushiswap_hour_data_dto'
require 'openapi_client/models/sushiswap_liquidity_position_dto'
require 'openapi_client/models/sushiswap_liquidity_position_snapshot_dto'
require 'openapi_client/models/sushiswap_mint_dto'
require 'openapi_client/models/sushiswap_pair_dto'
require 'openapi_client/models/sushiswap_pair_day_data_dto'
require 'openapi_client/models/sushiswap_pair_hour_data_dto'
require 'openapi_client/models/sushiswap_swap_dto'
require 'openapi_client/models/sushiswap_token_dto'
require 'openapi_client/models/sushiswap_token_day_data_dto'
require 'openapi_client/models/sushiswap_transaction_dto'
require 'openapi_client/models/sushiswap_user_dto'
require 'openapi_client/models/transactions_e_trade_aggressive_side'
require 'openapi_client/models/uniswap_v2_bundle_dto'
require 'openapi_client/models/uniswap_v2_burn_dto'
require 'openapi_client/models/uniswap_v2_liquidity_position_dto'
require 'openapi_client/models/uniswap_v2_liquidity_position_snapshot_dto'
require 'openapi_client/models/uniswap_v2_mint_dto'
require 'openapi_client/models/uniswap_v2_pair_dto'
require 'openapi_client/models/uniswap_v2_pair_day_data_dto'
require 'openapi_client/models/uniswap_v2_pair_hour_data_dto'
require 'openapi_client/models/uniswap_v2_swap_dto'
require 'openapi_client/models/uniswap_v2_token_dto'
require 'openapi_client/models/uniswap_v2_token_day_data_dto'
require 'openapi_client/models/uniswap_v2_transaction_dto'
require 'openapi_client/models/uniswap_v2_uniswap_day_data_dto'
require 'openapi_client/models/uniswap_v2_uniswap_factory_dto'
require 'openapi_client/models/uniswap_v2_user_dto'
require 'openapi_client/models/uniswap_v3_bundle_dto'
require 'openapi_client/models/uniswap_v3_burn_dto'
require 'openapi_client/models/uniswap_v3_factory_dto'
require 'openapi_client/models/uniswap_v3_mint_dto'
require 'openapi_client/models/uniswap_v3_pool_dto'
require 'openapi_client/models/uniswap_v3_pool_day_data_dto'
require 'openapi_client/models/uniswap_v3_pool_hour_data_dto'
require 'openapi_client/models/uniswap_v3_position_dto'
require 'openapi_client/models/uniswap_v3_position_snapshot_dto'
require 'openapi_client/models/uniswap_v3_swap_dto'
require 'openapi_client/models/uniswap_v3_tick_dto'
require 'openapi_client/models/uniswap_v3_tick_day_data_dto'
require 'openapi_client/models/uniswap_v3_token_dto'
require 'openapi_client/models/uniswap_v3_token_hour_data_dto'
require 'openapi_client/models/uniswap_v3_token_v3_day_data_dto'
require 'openapi_client/models/uniswap_v3_transaction_dto'
require 'openapi_client/models/uniswap_v3_uniswap_day_data_dto'

# APIs
require 'openapi_client/api/cow_api'
require 'openapi_client/api/curve_api'
require 'openapi_client/api/dex_api'
require 'openapi_client/api/sushiswap_api'
require 'openapi_client/api/uniswap_v2_api'
require 'openapi_client/api/uniswap_v3_api'

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
