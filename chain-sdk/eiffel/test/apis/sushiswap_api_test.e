note
    description: "API tests for SUSHISWAP_API"
    date: "$Date$"
    revision: "$Revision$"


class SUSHISWAP_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_curve_get_exchanges_current
            -- Exchanges (current) 🔥
            --
            -- Gets exchanges.
        local
            l_response: LIST [CURVE_EXCHANGE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_exchanges_current
            assert ("not_implemented", False)
        end

    test_dex_get_trades_current
            -- Trades (current) 🔥
            --
            -- Gets trades.
        local
            l_response: LIST [DEX_TRADE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_trades_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_bundles_historical
            -- Bundles (historical)
            --
            -- Gets bundles.
        local
            l_response: LIST [SUSHISWAP_BUNDLE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_bundles_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_burns_historical
            -- Burns (historical)
            --
            -- Gets burns.
        local
            l_response: LIST [SUSHISWAP_BURN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_burns_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_day_data_historical
            -- DayData (historical)
            --
            -- Gets day data.
        local
            l_response: LIST [SUSHISWAP_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_factory_historical
            -- Factory (historical)
            --
            -- Gets factory.
        local
            l_response: LIST [SUSHISWAP_FACTORY_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_factory_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_hour_data_historical
            -- HourData (historical)
            --
            -- Gets hour data.
        local
            l_response: LIST [SUSHISWAP_HOUR_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_hour_data_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_liquidity_position_historical
            -- LiquidityPosition (historical)
            --
            -- Gets liquidity position.
        local
            l_response: LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_liquidity_position_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_liquidity_position_snapshot_historical
            -- LiquidityPositionSnapshot (historical)
            --
            -- Gets liquidity position snapshot.
        local
            l_response: LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_liquidity_position_snapshot_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_mints_historical
            -- Mints (historical)
            --
            -- Gets mints.
        local
            l_response: LIST [SUSHISWAP_MINT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_mints_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pools_current
            -- Pools (current) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [SUSHISWAP_PAIR_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pools_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pools_day_data_historical
            -- PoolsDayData (historical)
            --
            -- Gets pools day data.
        local
            l_response: LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pools_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pools_historical
            -- Pools (historical) 🔥
            --
            -- Gets list of pools for given filters.
        local
            l_response: LIST [SUSHISWAP_PAIR_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pools_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pools_hour_data_historical
            -- PoolsHourData (historical)
            --
            -- Gets pools tracked each our.
        local
            l_response: LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pools_hour_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_swaps_current
            -- Swaps (current) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [SUSHISWAP_SWAP_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_swaps_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_swaps_historical
            -- Swaps (historical) 🔥
            --
            -- Gets list of swaps for given filters.
        local
            l_response: LIST [SUSHISWAP_SWAP_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_swaps_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_tokens_current
            -- Tokens (current) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_tokens_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_tokens_day_data_historical
            -- TokensDayData (historical)
            --
            -- Gets tokens day data.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_tokens_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets list of tokens for given filters.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_transactions_historical
            -- Transactions (historical)
            --
            -- Gets transactions.
        local
            l_response: LIST [SUSHISWAP_TRANSACTION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_transactions_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_users_historical
            -- Users (historical)
            --
            -- Gets users.
        local
            l_response: LIST [SUSHISWAP_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SUSHISWAP_API
            -- Create an object instance of `SUSHISWAP_API'.
        once
            create { SUSHISWAP_API } Result
        end

end
