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
            -- Gets daydatas.
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
            -- Gets hourdatas.
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
            -- Gets liquiditypositionsnapshots.
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
            -- Gets liquiditypositions.
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
            -- Gets pairdaydatas.
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
            -- Gets pairhourdatas.
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
            -- Gets tokendaydatas.
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

feature {NONE} -- Implementation

    api: SUSHISWAP_API
            -- Create an object instance of `SUSHISWAP_API'.
        once
            create { SUSHISWAP_API } Result
        end

end
