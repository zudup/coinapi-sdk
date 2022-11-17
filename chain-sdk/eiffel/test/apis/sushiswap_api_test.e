note
    description: "API tests for SUSHISWAP_API"
    date: "$Date$"
    revision: "$Revision$"


class SUSHISWAP_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_sushiswap_bundles_current
            -- Bundles (current)
            --
            -- Gets bundles.
        local
            l_response: LIST [SUSHISWAP_BUNDLE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_bundles_current
            assert ("not_implemented", False)
        end

    test_sushiswap_burns_current
            -- Burns (current)
            --
            -- Gets burns.
        local
            l_response: LIST [SUSHISWAP_BURN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_burns_current
            assert ("not_implemented", False)
        end

    test_sushiswap_day_datas_current
            -- DayDatas (current)
            --
            -- Gets dayDatas.
        local
            l_response: LIST [SUSHISWAP_DAY_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_day_datas_current
            assert ("not_implemented", False)
        end

    test_sushiswap_factorys_current
            -- Factorys (current)
            --
            -- Gets factorys.
        local
            l_response: LIST [SUSHISWAP_FACTORY_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_factorys_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_bundles_historical
            -- Bundles (historical) 🔥
            --
            -- Gets bundles.
        local
            l_response: LIST [SUSHISWAP_BUNDLE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_bundles_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_burns_historical
            -- Burns (historical) 🔥
            --
            -- Gets burns.
        local
            l_response: LIST [SUSHISWAP_BURN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_burns_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_day_datas_historical
            -- DayDatas (historical) 🔥
            --
            -- Gets dayDatas.
        local
            l_response: LIST [SUSHISWAP_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_factorys_historical
            -- Factorys (historical) 🔥
            --
            -- Gets factorys.
        local
            l_response: LIST [SUSHISWAP_FACTORY_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_factorys_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_hour_datas_historical
            -- HourDatas (historical) 🔥
            --
            -- Gets hourDatas.
        local
            l_response: LIST [SUSHISWAP_HOUR_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_hour_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_liquidity_position_snapshots_historical
            -- LiquidityPositionSnapshots (historical) 🔥
            --
            -- Gets liquidityPositionSnapshots.
        local
            l_response: LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_liquidity_position_snapshots_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user, l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_liquidity_positions_historical
            -- LiquidityPositions (historical) 🔥
            --
            -- Gets liquidityPositions.
        local
            l_response: LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_liquidity_positions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user, l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_mints_historical
            -- Mints (historical) 🔥
            --
            -- Gets mints.
        local
            l_response: LIST [SUSHISWAP_MINT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_mints_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pair_day_datas_historical
            -- PairDayDatas (historical) 🔥
            --
            -- Gets pairDayDatas.
        local
            l_response: LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pair_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair, l_token_0, l_token_1)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pair_hour_datas_historical
            -- PairHourDatas (historical) 🔥
            --
            -- Gets pairHourDatas.
        local
            l_response: LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pair_hour_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pairs_historical
            -- Pairs (historical) 🔥
            --
            -- Gets pairs.
        local
            l_response: LIST [SUSHISWAP_PAIR_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_name: STRING_32
            l_token_0: STRING_32
            l_token_1: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pairs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_name, l_token_0, l_token_1)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_swaps_historical
            -- Swaps (historical) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [SUSHISWAP_SWAP_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_swaps_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_token_day_datas_historical
            -- TokenDayDatas (historical) 🔥
            --
            -- Gets tokenDayDatas.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_token_day_datas_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_symbol: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_symbol, l_name)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_transactions_historical
            -- Transactions (historical) 🔥
            --
            -- Gets transactions.
        local
            l_response: LIST [SUSHISWAP_TRANSACTION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_transactions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_get_users_historical
            -- Users (historical) 🔥
            --
            -- Gets users.
        local
            l_response: LIST [SUSHISWAP_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_hour_datas_current
            -- HourDatas (current)
            --
            -- Gets hourDatas.
        local
            l_response: LIST [SUSHISWAP_HOUR_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_hour_datas_current
            assert ("not_implemented", False)
        end

    test_sushiswap_liquidity_position_snapshots_current
            -- LiquidityPositionSnapshots (current)
            --
            -- Gets liquidityPositionSnapshots.
        local
            l_response: LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_liquidity_position_snapshots_current
            assert ("not_implemented", False)
        end

    test_sushiswap_liquidity_positions_current
            -- LiquidityPositions (current)
            --
            -- Gets liquidityPositions.
        local
            l_response: LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_liquidity_positions_current
            assert ("not_implemented", False)
        end

    test_sushiswap_mints_current
            -- Mints (current)
            --
            -- Gets mints.
        local
            l_response: LIST [SUSHISWAP_MINT_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_mints_current
            assert ("not_implemented", False)
        end

    test_sushiswap_pair_day_datas_current
            -- PairDayDatas (current)
            --
            -- Gets pairDayDatas.
        local
            l_response: LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_pair_day_datas_current
            assert ("not_implemented", False)
        end

    test_sushiswap_pair_hour_datas_current
            -- PairHourDatas (current)
            --
            -- Gets pairHourDatas.
        local
            l_response: LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_pair_hour_datas_current
            assert ("not_implemented", False)
        end

    test_sushiswap_pairs_current
            -- Pairs (current)
            --
            -- Gets pairs.
        local
            l_response: LIST [SUSHISWAP_PAIR_DTO]
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_pairs_current(l_id)
            assert ("not_implemented", False)
        end

    test_sushiswap_swaps_current
            -- Swaps (current)
            --
            -- Gets swaps.
        local
            l_response: LIST [SUSHISWAP_SWAP_DTO]
            l_pair: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_swaps_current(l_pair)
            assert ("not_implemented", False)
        end

    test_sushiswap_token_day_datas_current
            -- TokenDayDatas (current)
            --
            -- Gets tokenDayDatas.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_token_day_datas_current
            assert ("not_implemented", False)
        end

    test_sushiswap_tokens_current
            -- Tokens (current)
            --
            -- Gets tokens.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_tokens_current
            assert ("not_implemented", False)
        end

    test_sushiswap_transactions_current
            -- Transactions (current)
            --
            -- Gets transactions.
        local
            l_response: LIST [SUSHISWAP_TRANSACTION_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_transactions_current
            assert ("not_implemented", False)
        end

    test_sushiswap_users_current
            -- Users (current)
            --
            -- Gets users.
        local
            l_response: LIST [SUSHISWAP_USER_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_users_current
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SUSHISWAP_API
            -- Create an object instance of `SUSHISWAP_API'.
        once
            create { SUSHISWAP_API } Result
        end

end
