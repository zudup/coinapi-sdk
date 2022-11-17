note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v2_bundles_current
            -- Bundles (current)
            --
            -- Gets bundles.
        local
            l_response: LIST [UNISWAP_V2_BUNDLE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_bundles_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_burns_current
            -- Burns (current)
            --
            -- Gets burns.
        local
            l_response: LIST [UNISWAP_V2_BURN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_burns_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_bundles_historical
            -- Bundles (historical) 🔥
            --
            -- Gets bundles.
        local
            l_response: LIST [UNISWAP_V2_BUNDLE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_bundles_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_burns_historical
            -- Burns (historical) 🔥
            --
            -- Gets burns.
        local
            l_response: LIST [UNISWAP_V2_BURN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_burns_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_position_snapshots_historical
            -- LiquidityPositionSnapshots (historical) 🔥
            --
            -- Gets liquidityPositionSnapshots.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_position_snapshots_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_liquidity_positions_historical
            -- LiquidityPositions (historical) 🔥
            --
            -- Gets liquidityPositions.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_liquidity_positions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_mints_historical
            -- Mints (historical) 🔥
            --
            -- Gets mints.
        local
            l_response: LIST [UNISWAP_V2_MINT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_mints_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_day_datas_historical
            -- PairDayDatas (historical) 🔥
            --
            -- Gets pairDayDatas.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_token_0, l_token_1)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pair_hour_datas_historical
            -- PairHourDatas (historical) 🔥
            --
            -- Gets pairHourDatas.
        local
            l_response: LIST [UNISWAP_V2_PAIR_HOUR_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pair_hour_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_pairs_historical
            -- Pairs (historical) 🔥
            --
            -- Gets pairs.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pairs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_token_0, l_token_1)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_swaps_historical
            -- Swaps (historical) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V2_SWAP_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_swaps_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_token_day_datas_historical
            -- TokenDayDatas (historical) 🔥
            --
            -- Gets tokenDayDatas.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_token_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_symbol: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_symbol, l_name)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_transactions_historical
            -- Transactions (historical) 🔥
            --
            -- Gets transactions.
        local
            l_response: LIST [UNISWAP_V2_TRANSACTION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_transactions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_uniswap_day_datas_historical
            -- UniswapDayDatas (historical) 🔥
            --
            -- Gets uniswapDayDatas.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_uniswap_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_uniswap_factorys_historical
            -- UniswapFactorys (historical) 🔥
            --
            -- Gets uniswapFactorys.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_FACTORY_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_uniswap_factorys_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_users_historical
            -- Users (historical) 🔥
            --
            -- Gets users.
        local
            l_response: LIST [UNISWAP_V2_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_liquidity_position_snapshots_current
            -- LiquidityPositionSnapshots (current)
            --
            -- Gets liquidityPositionSnapshots.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_liquidity_position_snapshots_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_liquidity_positions_current
            -- LiquidityPositions (current)
            --
            -- Gets liquidityPositions.
        local
            l_response: LIST [UNISWAP_V2_LIQUIDITY_POSITION_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_liquidity_positions_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_mints_current
            -- Mints (current)
            --
            -- Gets mints.
        local
            l_response: LIST [UNISWAP_V2_MINT_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_mints_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_pair_day_datas_current
            -- PairDayDatas (current)
            --
            -- Gets pairDayDatas.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DAY_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_pair_day_datas_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_pair_hour_datas_current
            -- PairHourDatas (current)
            --
            -- Gets pairHourDatas.
        local
            l_response: LIST [UNISWAP_V2_PAIR_HOUR_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_pair_hour_datas_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_pairs_current
            -- Pairs (current)
            --
            -- Gets pairs.
        local
            l_response: LIST [UNISWAP_V2_PAIR_DTO]
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_pairs_current(l_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_swaps_current
            -- Swaps (current)
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V2_SWAP_DTO]
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_swaps_current(l_pair)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_token_day_datas_current
            -- TokenDayDatas (current)
            --
            -- Gets tokenDayDatas.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DAY_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_token_day_datas_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_tokens_current
            -- Tokens (current)
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_tokens_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_transactions_current
            -- Transactions (current)
            --
            -- Gets transactions.
        local
            l_response: LIST [UNISWAP_V2_TRANSACTION_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_transactions_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_uniswap_day_datas_current
            -- UniswapDayDatas (current)
            --
            -- Gets uniswapDayDatas.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_DAY_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_uniswap_day_datas_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_uniswap_factorys_current
            -- UniswapFactorys (current)
            --
            -- Gets uniswapFactorys.
        local
            l_response: LIST [UNISWAP_V2_UNISWAP_FACTORY_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_uniswap_factorys_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_users_current
            -- Users (current)
            --
            -- Gets users.
        local
            l_response: LIST [UNISWAP_V2_USER_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_users_current
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV2_API
            -- Create an object instance of `UNISWAPV2_API'.
        once
            create { UNISWAPV2_API } Result
        end

end
