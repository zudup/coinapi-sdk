note
    description: "API tests for SUSHISWAP_API"
    date: "$Date$"
    revision: "$Revision$"


class SUSHISWAP_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_sushiswap_get_bundles_historical
            -- GetBundles (historical)
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
            -- GetBurns (historical)
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
            -- GetDayData (historical)
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
            -- GetFactory (historical)
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
            -- GetHourData (historical)
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
            -- GetLiquidityPosition (historical)
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
            -- GetLiquidityPositionSnapshot (historical)
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
            -- GetMints (historical)
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
            -- GetPools (current)
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
            -- GetPoolsDayData (historical)
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
            -- GetPools (historical)
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
            -- GetPoolsHourData (historical)
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
            -- GetSwaps (current)
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
            -- GetSwaps (historical)
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
            -- GetTokens (current)
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
            -- GetTokensDayData (historical)
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
            -- GetTokens (historical)
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
            -- GetTransactions (historical)
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
            -- GetUsers (historical)
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
