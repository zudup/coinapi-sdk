note
    description: "API tests for COW_API"
    date: "$Date$"
    revision: "$Revision$"


class COW_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_cow_get_orders_historical
            -- GetOrders (historical)
            --
            -- Gets orders.
        local
            l_response: LIST [COW_ORDER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_orders_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_cow_get_settlements_historical
            -- GetSettlements (historical)
            --
            -- Gets settlements.
        local
            l_response: LIST [COW_SETTLEMENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_settlements_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_cow_get_tokens_historical
            -- GetTokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [COW_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_cow_get_trades_historical
            -- GetTrades (historical) 🔥
            --
            -- Gets trades.
        local
            l_response: LIST [COW_TRADE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_trades_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_cow_get_users_historical
            -- GetUsers (historical)
            --
            -- Gets users.
        local
            l_response: LIST [COW_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_users_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: COW_API
            -- Create an object instance of `COW_API'.
        once
            create { COW_API } Result
        end

end
