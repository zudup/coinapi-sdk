note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v2_get_bundle_v2_dt_os_historical
            -- BundleV2DTOs (historical) 🔥
            --
            -- Gets BundleV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_BUNDLE_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_bundle_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_bundles_historical
            -- Bundles (historical)
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

    test_uniswap_v2_get_burn_v2_dt_os_historical
            -- BurnV2DTOs (historical) 🔥
            --
            -- Gets BurnV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_BURN_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_burn_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_burns_historical
            -- Burns (historical)
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
            -- DayData (historical)
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
            -- Factory (historical)
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

    test_uniswap_v2_get_liquidity_position_snapshot_v2_dt_os_historical
            -- LiquidityPositionSnapshotV2DTOs (historical) 🔥
            --
            -- Gets LiquidityPositionSnapshotV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_position_snapshot_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_position_v2_dt_os_historical
            -- LiquidityPositionV2DTOs (historical) 🔥
            --
            -- Gets LiquidityPositionV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_position_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_positions_historical
            -- LiquidityPositions (historical)
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
            -- LiquidityPositionsSnapshots (historical)
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

    test_uniswap_v2_get_mint_v2_dt_os_historical
            -- MintV2DTOs (historical) 🔥
            --
            -- Gets MintV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_MINT_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_mint_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_mints_historical
            -- Mints (historical)
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

    test_uniswap_v2_get_pair_day_data_v2_dt_os_historical
            -- PairDayDataV2DTOs (historical) 🔥
            --
            -- Gets PairDayDataV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_day_data_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_hour_data_v2_dt_os_historical
            -- PairHourDataV2DTOs (historical) 🔥
            --
            -- Gets PairHourDataV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_hour_data_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_v2_dt_os_historical
            -- PairV2DTOs (historical) 🔥
            --
            -- Gets PairV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_PAIR_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pools_current
            -- Pools (current) 🔥
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
            -- PoolsDayData (historical)
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
            -- Pools (historical) 🔥
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
            -- PoolsHourData (historical)
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

    test_uniswap_v2_get_swap_v2_dt_os_historical
            -- SwapV2DTOs (historical) 🔥
            --
            -- Gets SwapV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_SWAP_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_swap_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_swaps_current
            -- Swaps (current) 🔥
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
            -- Swaps (historical) 🔥
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

    test_uniswap_v2_get_token_day_data_v2_dt_os_historical
            -- TokenDayDataV2DTOs (historical) 🔥
            --
            -- Gets TokenDayDataV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_token_day_data_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_token_v2_dt_os_historical
            -- TokenV2DTOs (historical) 🔥
            --
            -- Gets TokenV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_token_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_tokens_current
            -- Tokens (current) 🔥
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
            -- TokensDayData (historical)
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
            -- Tokens (historical) 🔥
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

    test_uniswap_v2_get_transaction_v2_dt_os_historical
            -- TransactionV2DTOs (historical) 🔥
            --
            -- Gets TransactionV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_TRANSACTION_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_transaction_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_transactions_historical
            -- Transactions (historical)
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

    test_uniswap_v2_get_uniswap_day_data_v2_dt_os_historical
            -- UniswapDayDataV2DTOs (historical) 🔥
            --
            -- Gets UniswapDayDataV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_uniswap_day_data_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_uniswap_factory_v2_dt_os_historical
            -- UniswapFactoryV2DTOs (historical) 🔥
            --
            -- Gets UniswapFactoryV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_uniswap_factory_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_user_v2_dt_os_historical
            -- UserV2DTOs (historical) 🔥
            --
            -- Gets UserV2DTOs.
        local
            l_response: LIST [UNISWAP_V2_USER_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_user_v2_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_users_historical
            -- Users (historical)
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
