note
    description: "API tests for COW_API"
    date: "$Date$"
    revision: "$Revision$"


class COW_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_cow_get_order_dt_os_historical
            -- OrderDTOs (historical) 🔥
            --
            -- Gets OrderDTOs.
        local
            l_response: LIST [COW_ORDER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_order_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_cow_get_orders_historical
            -- Orders (historical)
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

    test_cow_get_settlement_dt_os_historical
            -- SettlementDTOs (historical) 🔥
            --
            -- Gets SettlementDTOs.
        local
            l_response: LIST [COW_SETTLEMENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_settlement_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_cow_get_settlements_historical
            -- Settlements (historical)
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

    test_cow_get_token_dt_os_historical
            -- TokenDTOs (historical) 🔥
            --
            -- Gets TokenDTOs.
        local
            l_response: LIST [COW_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_token_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
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
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_cow_get_trade_dt_os_historical
            -- TradeDTOs (historical) 🔥
            --
            -- Gets TradeDTOs.
        local
            l_response: LIST [COW_TRADE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_trade_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
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
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_trades_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_cow_get_user_dt_os_historical
            -- UserDTOs (historical) 🔥
            --
            -- Gets UserDTOs.
        local
            l_response: LIST [COW_USER_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.cow_get_user_dt_os_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_cow_get_users_historical
            -- Users (historical)
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
