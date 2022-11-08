note
    description: "API tests for UNISWAPV3_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV3_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v3_get_bundles_current
            -- Bundles (current)
            --
            -- Gets bundles.
        local
            l_response: LIST [UNISWAP_V3_BUNDLE_V3_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_bundles_current
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_bundles_historical
            -- Bundles (historical)
            --
            -- Gets bundles.
        local
            l_response: LIST [UNISWAP_V3_BUNDLE_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_bundles_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_burns_current
            -- Burns (current)
            --
            -- Gets burns.
        local
            l_response: LIST [UNISWAP_V3_BURN_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_burns_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_burns_historical
            -- Burns (historical)
            --
            -- Gets burns.
        local
            l_response: LIST [UNISWAP_V3_BURN_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_burns_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_day_data_current
            -- DayData (current)
            --
            -- Gets uniswapv3 day data.
        local
            l_response: LIST [UNISWAP_V3_UNISWAP_DAY_DATA_V3_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_day_data_current
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_day_data_historical
            -- DayData (historical)
            --
            -- Gets uniswapv3 day data.
        local
            l_response: LIST [UNISWAP_V3_UNISWAP_DAY_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_factory_current
            -- Factory (current)
            --
            -- Gets factory.
        local
            l_response: LIST [UNISWAP_V3_FACTORY_V3_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_factory_current
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_factory_historical
            -- Factory (historical)
            --
            -- Gets factory.
        local
            l_response: LIST [UNISWAP_V3_FACTORY_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_factory_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_mints_current
            -- Mints (current)
            --
            -- Gets mints.
        local
            l_response: LIST [UNISWAP_V3_MINT_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_mints_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_mints_historical
            -- Mints (historical)
            --
            -- Gets mints.
        local
            l_response: LIST [UNISWAP_V3_MINT_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_mints_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pools_current
            -- Pools (current) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [UNISWAP_V3_POOL_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pools_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pools_day_data_current
            -- PoolsDayData (current)
            --
            -- Gets pools day data.
        local
            l_response: LIST [UNISWAP_V3_POOL_DAY_DATA_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pools_day_data_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pools_day_data_historical
            -- PoolsDayData (historical)
            --
            -- Gets pools day data.
        local
            l_response: LIST [UNISWAP_V3_POOL_DAY_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pools_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pools_historical
            -- Pools (historical) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [UNISWAP_V3_POOL_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pools_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pools_hour_data_current
            -- PoolsHourData (current)
            --
            -- Gets pools hour data.
        local
            l_response: LIST [UNISWAP_V3_POOL_HOUR_DATA_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pools_hour_data_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pools_hour_data_historical
            -- PoolsHourData (historical)
            --
            -- Gets pools hour data.
        local
            l_response: LIST [UNISWAP_V3_POOL_HOUR_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pools_hour_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_positions_current
            -- Positions (current)
            --
            -- Gets positions.
        local
            l_response: LIST [UNISWAP_V3_POSITION_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_positions_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_positions_historical
            -- Positions (historical)
            --
            -- Gets positions.
        local
            l_response: LIST [UNISWAP_V3_POSITION_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_positions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_positions_snaphots_historical
            -- PositionsSnaphots (historical)
            --
            -- Gets positions snapshots.
        local
            l_response: LIST [UNISWAP_V3_POSITION_SNAPSHOT_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_positions_snaphots_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_positions_snapshots_current
            -- PositionsSnapshots (current)
            --
            -- Gets positions snapshots.
        local
            l_response: LIST [UNISWAP_V3_POSITION_SNAPSHOT_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_positions_snapshots_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_swaps_current
            -- Swaps (current) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V3_SWAP_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_swaps_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_swaps_historical
            -- Swaps (historical) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V3_SWAP_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_swaps_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_ticks_current
            -- Ticks (current)
            --
            -- Gets ticks.
        local
            l_response: LIST [UNISWAP_V3_TICK_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_ticks_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_ticks_day_data_current
            -- TicksDayData (current)
            --
            -- Gets ticks day data.
        local
            l_response: LIST [UNISWAP_V3_TICK_DAY_DATA_V3_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_ticks_day_data_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_ticks_day_data_historical
            -- TicksDayData (historical)
            --
            -- Gets ticks day data.
        local
            l_response: LIST [UNISWAP_V3_TICK_DAY_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_ticks_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_ticks_historical
            -- Ticks (historical)
            --
            -- Gets ticks.
        local
            l_response: LIST [UNISWAP_V3_TICK_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_ticks_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tokens_current
            -- Tokens (current) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_V3_DTO]
            l_filter_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tokens_current(l_filter_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tokens_day_data_current
            -- TokensDayData (current)
            --
            -- Gets tokens day data.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_V3_DAY_DATA_DTO]
            l_filter_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tokens_day_data_current(l_filter_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tokens_day_data_historical
            -- TokensDayData (historical)
            --
            -- Gets tokens day data.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_V3_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tokens_day_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tokens_hour_data_current
            -- TokensHourData (current)
            --
            -- Gets tokens hour data.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_HOUR_DATA_V3_DTO]
            l_filter_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tokens_hour_data_current(l_filter_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tokens_hour_data_historical
            -- TokensHourData (historical)
            --
            -- Gets tokens hour data.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_HOUR_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tokens_hour_data_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_transactions_historical
            -- Transactions (historical)
            --
            -- Gets transactions.
        local
            l_response: LIST [UNISWAP_V3_TRANSACTION_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_transactions_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV3_API
            -- Create an object instance of `UNISWAPV3_API'.
        once
            create { UNISWAPV3_API } Result
        end

end
