note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v2_get_bundles_historical
            -- GetBundles (historical)
            --
            -- Gets bundles.
        local
            l_response: LIST [UNISWAP_V2_BUNDLE_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_bundles_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_burns_historical
            -- GetBurns (historical)
            --
            -- Gets burns.
        local
            l_response: LIST [UNISWAP_V2_BURN_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_burns_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_day_data_historical
            -- GetDayData (historical)
            --
            -- Gets uniswapv2 day data.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_factory_historical
            -- GetFactory (historical)
            --
            -- Gets factory.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_factory_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_positions_historical
            -- GetLiquidityPositions (historical)
            --
            -- Gets liquidity positions.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_positions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_positions_snapshots_historical
            -- GetLiquidityPositionsSnapshots (historical)
            --
            -- Gets liquidity positions snapshots.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_positions_snapshots_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_mints_historical
            -- GetMints (historical)
            --
            -- Gets mints.
        local
            l_response: LIST [UNISWAP_V2_MINT_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_mints_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pools_current
            -- GetPools (current) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [UNISWAP_V2_PAIR_V2_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pools_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pools_day_data_historical
            -- GetPoolsDayData (historical)
            --
            -- Gets pools day data.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pools_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pools_historical
            -- GetPools (historical) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [UNISWAP_V2_PAIR_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pools_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pools_hour_data_historical
            -- GetPoolsHourData (historical)
            --
            -- Gets pools tracked each our.
        local
            l_response: LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pools_hour_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_swaps_current
            -- GetSwaps (current) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V2_SWAP_V2_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_swaps_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_swaps_historical
            -- GetSwaps (historical) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V2_SWAP_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_swaps_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_tokens_current
            -- GetTokens (current) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_V2_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_tokens_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_tokens_day_data_historical
            -- GetTokensDayData (historical)
            --
            -- Gets tokens day data.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_tokens_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_tokens_historical
            -- GetTokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_transactions_historical
            -- GetTransactions (historical)
            --
            -- Gets transactions.
        local
            l_response: LIST [UNISWAP_V2_TRANSACTION_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_transactions_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_users_historical
            -- GetUsers (historical)
            --
            -- Gets users.
        local
            l_response: LIST [UNISWAP_V2_USER_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV2_API
            -- Create an object instance of `UNISWAPV2_API'.
        once
            create { UNISWAPV2_API } Result
        end

end
