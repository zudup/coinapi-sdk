note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v2_get_bundle_v2s_historical
            -- BundleV2s (historical) 🔥
            --
            -- Gets bundlev2s.
        local
            l_response: LIST [UNISWAP_V2_BUNDLE_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_bundle_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_burn_v2s_historical
            -- BurnV2s (historical) 🔥
            --
            -- Gets burnv2s.
        local
            l_response: LIST [UNISWAP_V2_BURN_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_burn_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_position_snapshot_v2s_historical
            -- LiquidityPositionSnapshotV2s (historical) 🔥
            --
            -- Gets liquiditypositionsnapshotv2s.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_position_snapshot_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_position_v2s_historical
            -- LiquidityPositionV2s (historical) 🔥
            --
            -- Gets liquiditypositionv2s.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_position_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_mint_v2s_historical
            -- MintV2s (historical) 🔥
            --
            -- Gets mintv2s.
        local
            l_response: LIST [UNISWAP_V2_MINT_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_mint_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_day_data_v2s_historical
            -- PairDayDataV2s (historical) 🔥
            --
            -- Gets pairdaydatav2s.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_day_data_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_token_0, l_token_1)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_hour_data_v2s_historical
            -- PairHourDataV2s (historical) 🔥
            --
            -- Gets pairhourdatav2s.
        local
            l_response: LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_hour_data_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_v2s_historical
            -- PairV2s (historical) 🔥
            --
            -- Gets pairv2s.
        local
            l_response: LIST [UNISWAP_V2_PAIR_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_token_0, l_token_1)
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

    test_uniswap_v2_get_swap_v2s_historical
            -- SwapV2s (historical) 🔥
            --
            -- Gets swapv2s.
        local
            l_response: LIST [UNISWAP_V2_SWAP_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_swap_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
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

    test_uniswap_v2_get_token_day_data_v2s_historical
            -- TokenDayDataV2s (historical) 🔥
            --
            -- Gets tokendaydatav2s.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_token_day_data_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_token_v2s_historical
            -- TokenV2s (historical) 🔥
            --
            -- Gets tokenv2s.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_symbol: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_token_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_symbol, l_name)
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

    test_uniswap_v2_get_transaction_v2s_historical
            -- TransactionV2s (historical) 🔥
            --
            -- Gets transactionv2s.
        local
            l_response: LIST [UNISWAP_V2_TRANSACTION_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_transaction_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_uniswap_day_data_v2s_historical
            -- UniswapDayDataV2s (historical) 🔥
            --
            -- Gets uniswapdaydatav2s.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_uniswap_day_data_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_uniswap_factory_v2s_historical
            -- UniswapFactoryV2s (historical) 🔥
            --
            -- Gets uniswapfactoryv2s.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_uniswap_factory_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_user_v2s_historical
            -- UserV2s (historical) 🔥
            --
            -- Gets userv2s.
        local
            l_response: LIST [UNISWAP_V2_USER_V2_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_user_v2s_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV2_API
            -- Create an object instance of `UNISWAPV2_API'.
        once
            create { UNISWAPV2_API } Result
        end

end
