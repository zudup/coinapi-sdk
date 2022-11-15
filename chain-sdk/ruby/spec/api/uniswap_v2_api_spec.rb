=begin
#OnChain API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::UniswapV2Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UniswapV2Api' do
  before do
    # run before each test
    @api_instance = OpenapiClient::UniswapV2Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UniswapV2Api' do
    it 'should create an instance of UniswapV2Api' do
      expect(@api_instance).to be_instance_of(OpenapiClient::UniswapV2Api)
    end
  end

  # unit tests for uniswap_v2_get_bundle_v2_dtos__historical
  # BundleV2DTOs (historical) 🔥
  # Gets BundleV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2BundleV2DTO>]
  describe 'uniswap_v2_get_bundle_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_bundles__historical
  # Bundles (historical)
  # Gets bundles.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @return [Array<UniswapV2BundleV2DTO>]
  describe 'uniswap_v2_get_bundles__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_burn_v2_dtos__historical
  # BurnV2DTOs (historical) 🔥
  # Gets BurnV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2BurnV2DTO>]
  describe 'uniswap_v2_get_burn_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_burns__historical
  # Burns (historical)
  # Gets burns.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2BurnV2DTO>]
  describe 'uniswap_v2_get_burns__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_day_data__historical
  # DayData (historical)
  # Gets uniswapv2 day data.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @return [Array<UniswapV2UniswapDayDataV2DTO>]
  describe 'uniswap_v2_get_day_data__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_factory__historical
  # Factory (historical)
  # Gets factory.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @return [Array<UniswapV2UniswapFactoryV2DTO>]
  describe 'uniswap_v2_get_factory__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_liquidity_position_snapshot_v2_dtos__historical
  # LiquidityPositionSnapshotV2DTOs (historical) 🔥
  # Gets LiquidityPositionSnapshotV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2LiquidityPositionSnapshotV2DTO>]
  describe 'uniswap_v2_get_liquidity_position_snapshot_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_liquidity_position_v2_dtos__historical
  # LiquidityPositionV2DTOs (historical) 🔥
  # Gets LiquidityPositionV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2LiquidityPositionV2DTO>]
  describe 'uniswap_v2_get_liquidity_position_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_liquidity_positions__historical
  # LiquidityPositions (historical)
  # Gets liquidity positions.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2LiquidityPositionV2DTO>]
  describe 'uniswap_v2_get_liquidity_positions__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_liquidity_positions_snapshots__historical
  # LiquidityPositionsSnapshots (historical)
  # Gets liquidity positions snapshots.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2LiquidityPositionSnapshotV2DTO>]
  describe 'uniswap_v2_get_liquidity_positions_snapshots__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_mint_v2_dtos__historical
  # MintV2DTOs (historical) 🔥
  # Gets MintV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2MintV2DTO>]
  describe 'uniswap_v2_get_mint_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_mints__historical
  # Mints (historical)
  # Gets mints.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2MintV2DTO>]
  describe 'uniswap_v2_get_mints__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pair_day_data_v2_dtos__historical
  # PairDayDataV2DTOs (historical) 🔥
  # Gets PairDayDataV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2PairDayDataV2DTO>]
  describe 'uniswap_v2_get_pair_day_data_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pair_hour_data_v2_dtos__historical
  # PairHourDataV2DTOs (historical) 🔥
  # Gets PairHourDataV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2PairHourDataV2DTO>]
  describe 'uniswap_v2_get_pair_hour_data_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pair_v2_dtos__historical
  # PairV2DTOs (historical) 🔥
  # Gets PairV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2PairV2DTO>]
  describe 'uniswap_v2_get_pair_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pools__current
  # Pools (current) 🔥
  # Gets pools.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_pool_id 
  # @return [Array<UniswapV2PairV2DTO>]
  describe 'uniswap_v2_get_pools__current test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pools__historical
  # Pools (historical) 🔥
  # Gets pools.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2PairV2DTO>]
  describe 'uniswap_v2_get_pools__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pools_day_data__historical
  # PoolsDayData (historical)
  # Gets pools day data.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2PairDayDataV2DTO>]
  describe 'uniswap_v2_get_pools_day_data__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_pools_hour_data__historical
  # PoolsHourData (historical)
  # Gets pools tracked each our.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2PairHourDataV2DTO>]
  describe 'uniswap_v2_get_pools_hour_data__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_swap_v2_dtos__historical
  # SwapV2DTOs (historical) 🔥
  # Gets SwapV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2SwapV2DTO>]
  describe 'uniswap_v2_get_swap_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_swaps__current
  # Swaps (current) 🔥
  # Gets swaps.
  # @param [Hash] opts the optional parameters
  # @return [Array<UniswapV2SwapV2DTO>]
  describe 'uniswap_v2_get_swaps__current test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_swaps__historical
  # Swaps (historical) 🔥
  # Gets swaps.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2SwapV2DTO>]
  describe 'uniswap_v2_get_swaps__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_token_day_data_v2_dtos__historical
  # TokenDayDataV2DTOs (historical) 🔥
  # Gets TokenDayDataV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2TokenDayDataV2DTO>]
  describe 'uniswap_v2_get_token_day_data_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_token_v2_dtos__historical
  # TokenV2DTOs (historical) 🔥
  # Gets TokenV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2TokenV2DTO>]
  describe 'uniswap_v2_get_token_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_tokens__current
  # Tokens (current) 🔥
  # Gets tokens.
  # @param [Hash] opts the optional parameters
  # @return [Array<UniswapV2TokenV2DTO>]
  describe 'uniswap_v2_get_tokens__current test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_tokens__historical
  # Tokens (historical) 🔥
  # Gets tokens.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :token_id 
  # @return [Array<UniswapV2TokenV2DTO>]
  describe 'uniswap_v2_get_tokens__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_tokens_day_data__historical
  # TokensDayData (historical)
  # Gets tokens day data.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :token_id 
  # @return [Array<UniswapV2TokenDayDataV2DTO>]
  describe 'uniswap_v2_get_tokens_day_data__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_transaction_v2_dtos__historical
  # TransactionV2DTOs (historical) 🔥
  # Gets TransactionV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2TransactionV2DTO>]
  describe 'uniswap_v2_get_transaction_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_transactions__historical
  # Transactions (historical)
  # Gets transactions.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @return [Array<UniswapV2TransactionV2DTO>]
  describe 'uniswap_v2_get_transactions__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_uniswap_day_data_v2_dtos__historical
  # UniswapDayDataV2DTOs (historical) 🔥
  # Gets UniswapDayDataV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2UniswapDayDataV2DTO>]
  describe 'uniswap_v2_get_uniswap_day_data_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_uniswap_factory_v2_dtos__historical
  # UniswapFactoryV2DTOs (historical) 🔥
  # Gets UniswapFactoryV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2UniswapFactoryV2DTO>]
  describe 'uniswap_v2_get_uniswap_factory_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_user_v2_dtos__historical
  # UserV2DTOs (historical) 🔥
  # Gets UserV2DTOs.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @option opts [String] :pool_id 
  # @return [Array<UniswapV2UserV2DTO>]
  describe 'uniswap_v2_get_user_v2_dtos__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uniswap_v2_get_users__historical
  # Users (historical)
  # Gets users.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @return [Array<UniswapV2UserV2DTO>]
  describe 'uniswap_v2_get_users__historical test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
