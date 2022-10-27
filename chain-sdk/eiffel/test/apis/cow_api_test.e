note
    description: "API tests for COW_API"
    date: "$Date$"
    revision: "$Revision$"


class COW_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_dapps_cow_orders_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- api.dapps_cow_orders_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_cow_poi_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- api.dapps_cow_poi_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_cow_settlement_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- api.dapps_cow_settlement_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_cow_tokens_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_cow_tokens_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_dapps_cow_trades_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- api.dapps_cow_trades_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_cow_users_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- api.dapps_cow_users_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: COW_API
            -- Create an object instance of `COW_API'.
        once
            create { COW_API } Result
        end

end
