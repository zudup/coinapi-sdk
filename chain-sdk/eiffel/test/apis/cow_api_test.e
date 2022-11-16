note
    description: "API tests for COW_API"
    date: "$Date$"
    revision: "$Revision$"


class COW_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_cow_get_orders_historical
            -- Orders (historical) 🔥
            --
            -- Gets orders.
        local
            l_response: LIST [COW_ORDER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_orders_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_cow_get_settlements_historical
            -- Settlements (historical) 🔥
            --
            -- Gets settlements.
        local
            l_response: LIST [COW_SETTLEMENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_settlements_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_cow_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [COW_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
            l_name: STRING_32
            l_symbol: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address, l_name, l_symbol)
            assert ("not_implemented", False)
        end

    test_cow_get_trades_historical
            -- Trades (historical) 🔥
            --
            -- Gets trades.
        local
            l_response: LIST [COW_TRADE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_sell_token: STRING_32
            l_buy_token: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_trades_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_sell_token, l_buy_token)
            assert ("not_implemented", False)
        end

    test_cow_get_users_historical
            -- Users (historical) 🔥
            --
            -- Gets users.
        local
            l_response: LIST [COW_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: COW_API
            -- Create an object instance of `COW_API'.
        once
            create { COW_API } Result
        end

end
