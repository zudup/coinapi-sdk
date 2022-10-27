note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_dapps_uniswapv2_bundles_historical_get
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

            -- api.dapps_uniswapv2_bundles_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_burns_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_burns_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_day_data_historical_get
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

            -- api.dapps_uniswapv2_day_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_factory_historical_get
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

            -- api.dapps_uniswapv2_factory_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_liquidity_position_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_liquidity_position_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_liquidity_position_snapshots_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_liquidity_position_snapshots_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_mints_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_mints_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_poi_historical_get
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

            -- api.dapps_uniswapv2_poi_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_pool_day_data_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_pool_day_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_pool_hour_data_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_pool_hour_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_pools_current_get
            -- GetPools
            --
            -- 
        local
            l_response: LIST [PAIR_V2_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_uniswapv2_pools_current_get(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_pools_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_pools_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_swaps_current_get
            -- GetSwaps
            --
            -- 
        local
            l_response: LIST [SWAP_V2_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_uniswapv2_swaps_current_get
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_swaps_historical_get
            -- 
            --
            -- 
        local
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- api.dapps_uniswapv2_swaps_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_token_day_data_historical_get
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

            -- api.dapps_uniswapv2_token_day_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_tokens_current_get
            -- GetTokens
            --
            -- 
        local
            l_response: LIST [TOKEN_V2_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_uniswapv2_tokens_current_get
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_tokens_historical_get
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

            -- api.dapps_uniswapv2_tokens_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_transactions_historical_get
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

            -- api.dapps_uniswapv2_transactions_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_uniswapv2_users_historical_get
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

            -- api.dapps_uniswapv2_users_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV2_API
            -- Create an object instance of `UNISWAPV2_API'.
        once
            create { UNISWAPV2_API } Result
        end

end
