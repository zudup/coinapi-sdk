note
    description: "API tests for UNISWAPV3_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV3_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v3_get_bundle_v3s_historical
            -- BundleV3s (historical) 🔥
            --
            -- Gets bundlev3s.
        local
            l_response: LIST [UNISWAP_V3_BUNDLE_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_bundle_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

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

    test_uniswap_v3_get_burn_v3s_historical
            -- BurnV3s (historical) 🔥
            --
            -- Gets burnv3s.
        local
            l_response: LIST [UNISWAP_V3_BURN_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_burn_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool, l_token_0, l_token_1)
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

    test_uniswap_v3_get_factory_v3s_historical
            -- FactoryV3s (historical) 🔥
            --
            -- Gets factoryv3s.
        local
            l_response: LIST [UNISWAP_V3_FACTORY_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_factory_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_mint_v3s_historical
            -- MintV3s (historical) 🔥
            --
            -- Gets mintv3s.
        local
            l_response: LIST [UNISWAP_V3_MINT_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_mint_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool, l_token_0, l_token_1)
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

    test_uniswap_v3_get_pool_day_data_v3s_historical
            -- PoolDayDataV3s (historical) 🔥
            --
            -- Gets pooldaydatav3s.
        local
            l_response: LIST [UNISWAP_V3_POOL_DAY_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pool_day_data_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pool_hour_data_v3s_historical
            -- PoolHourDataV3s (historical) 🔥
            --
            -- Gets poolhourdatav3s.
        local
            l_response: LIST [UNISWAP_V3_POOL_HOUR_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pool_hour_data_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_pool_v3s_historical
            -- PoolV3s (historical) 🔥
            --
            -- Gets poolv3s.
        local
            l_response: LIST [UNISWAP_V3_POOL_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_pool_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_token_0, l_token_1)
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

    test_uniswap_v3_get_position_snapshot_v3s_historical
            -- PositionSnapshotV3s (historical) 🔥
            --
            -- Gets positionsnapshotv3s.
        local
            l_response: LIST [UNISWAP_V3_POSITION_SNAPSHOT_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_position_snapshot_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_position_v3s_historical
            -- PositionV3s (historical) 🔥
            --
            -- Gets positionv3s.
        local
            l_response: LIST [UNISWAP_V3_POSITION_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_position_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool, l_token_0, l_token_1)
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

    test_uniswap_v3_get_swap_v3s_historical
            -- SwapV3s (historical) 🔥
            --
            -- Gets swapv3s.
        local
            l_response: LIST [UNISWAP_V3_SWAP_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_swap_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool, l_token_0, l_token_1)
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

    test_uniswap_v3_get_tick_day_data_v3s_historical
            -- TickDayDataV3s (historical) 🔥
            --
            -- Gets tickdaydatav3s.
        local
            l_response: LIST [UNISWAP_V3_TICK_DAY_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tick_day_data_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_tick_v3s_historical
            -- TickV3s (historical) 🔥
            --
            -- Gets tickv3s.
        local
            l_response: LIST [UNISWAP_V3_TICK_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_tick_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
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

    test_uniswap_v3_get_token_hour_data_v3s_historical
            -- TokenHourDataV3s (historical) 🔥
            --
            -- Gets tokenhourdatav3s.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_HOUR_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_token_hour_data_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_token_v3_day_datas_historical
            -- TokenV3DayDatas (historical) 🔥
            --
            -- Gets tokenv3daydatas.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_V3_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_token_v3_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_token_v3s_historical
            -- TokenV3s (historical) 🔥
            --
            -- Gets tokenv3s.
        local
            l_response: LIST [UNISWAP_V3_TOKEN_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_symbol: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_token_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_symbol, l_name)
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

    test_uniswap_v3_get_transaction_v3s_historical
            -- TransactionV3s (historical) 🔥
            --
            -- Gets transactionv3s.
        local
            l_response: LIST [UNISWAP_V3_TRANSACTION_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_transaction_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v3_get_uniswap_day_data_v3s_historical
            -- UniswapDayDataV3s (historical) 🔥
            --
            -- Gets uniswapdaydatav3s.
        local
            l_response: LIST [UNISWAP_V3_UNISWAP_DAY_DATA_V3_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v3_get_uniswap_day_data_v3s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV3_API
            -- Create an object instance of `UNISWAPV3_API'.
        once
            create { UNISWAPV3_API } Result
        end

end
