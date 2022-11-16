note
    description: "API tests for DEX_API"
    date: "$Date$"
    revision: "$Revision$"


class DEX_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_dex_get_batchs_historical
            -- Batchs (historical) 🔥
            --
            -- Gets batchs.
        local
            l_response: LIST [DEX_BATCH_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_batchs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_dex_get_deposits_historical
            -- Deposits (historical) 🔥
            --
            -- Gets deposits.
        local
            l_response: LIST [DEX_DEPOSIT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_deposits_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user)
            assert ("not_implemented", False)
        end

    test_dex_get_orders_historical
            -- Orders (historical) 🔥
            --
            -- Gets orders.
        local
            l_response: LIST [DEX_ORDER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_buy_token: STRING_32
            l_sell_token: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_orders_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_buy_token, l_sell_token)
            assert ("not_implemented", False)
        end

    test_dex_get_prices_historical
            -- Prices (historical) 🔥
            --
            -- Gets prices.
        local
            l_response: LIST [DEX_PRICE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_prices_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_dex_get_solutions_historical
            -- Solutions (historical) 🔥
            --
            -- Gets solutions.
        local
            l_response: LIST [DEX_SOLUTION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_solutions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_dex_get_statss_historical
            -- Statss (historical) 🔥
            --
            -- Gets statss.
        local
            l_response: LIST [DEX_STATS_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_statss_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_dex_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [DEX_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
            l_symbol: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address, l_symbol, l_name)
            assert ("not_implemented", False)
        end

    test_dex_get_trades_historical
            -- Trades (historical) 🔥
            --
            -- Gets trades.
        local
            l_response: LIST [DEX_TRADE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_buy_token: STRING_32
            l_sell_token: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_trades_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_buy_token, l_sell_token)
            assert ("not_implemented", False)
        end

    test_dex_get_users_historical
            -- Users (historical) 🔥
            --
            -- Gets users.
        local
            l_response: LIST [DEX_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_dex_get_withdraw_requests_historical
            -- WithdrawRequests (historical) 🔥
            --
            -- Gets withdrawrequests.
        local
            l_response: LIST [DEX_WITHDRAW_REQUEST_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_withdraw_requests_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user)
            assert ("not_implemented", False)
        end

    test_dex_get_withdraws_historical
            -- Withdraws (historical) 🔥
            --
            -- Gets withdraws.
        local
            l_response: LIST [DEX_WITHDRAW_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_withdraws_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: DEX_API
            -- Create an object instance of `DEX_API'.
        once
            create { DEX_API } Result
        end

end
