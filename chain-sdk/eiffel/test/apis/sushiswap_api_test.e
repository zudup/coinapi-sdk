note
    description: "API tests for SUSHISWAP_API"
    date: "$Date$"
    revision: "$Revision$"


class SUSHISWAP_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_dapps_sushiswap_bundles_historical_get
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

            -- api.dapps_sushiswap_bundles_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_burns_historical_get
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

            -- api.dapps_sushiswap_burns_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_day_data_historical_get
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

            -- api.dapps_sushiswap_day_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_factory_historical_get
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

            -- api.dapps_sushiswap_factory_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_hour_data_historical_get
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

            -- api.dapps_sushiswap_hour_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_liquidity_position_historical_get
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

            -- api.dapps_sushiswap_liquidity_position_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_liquidity_position_snapshots_historical_get
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

            -- api.dapps_sushiswap_liquidity_position_snapshots_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_mints_historical_get
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

            -- api.dapps_sushiswap_mints_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_pool_day_data_historical_get
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

            -- api.dapps_sushiswap_pool_day_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_pool_hour_data_historical_get
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

            -- api.dapps_sushiswap_pool_hour_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_pools_current_get
            -- GetPools
            --
            -- Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.
        local
            l_response: LIST [PAIR_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_sushiswap_pools_current_get
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_pools_historical_get
            -- GetPools
            --
            -- 
        local
            l_response: LIST [PAIR_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_sushiswap_pools_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_swaps_current_get
            -- GetSwaps
            --
            -- 
        local
            l_response: LIST [SWAP_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_sushiswap_swaps_current_get
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_swaps_historical_get
            -- GetSwaps
            --
            -- 
        local
            l_response: LIST [SWAP_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_sushiswap_swaps_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_token_day_data_historical_get
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

            -- api.dapps_sushiswap_token_day_data_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_tokens_current_get
            -- GetTokens
            --
            -- 
        local
            l_response: LIST [TOKEN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_sushiswap_tokens_current_get
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_tokens_historical_get
            -- GetTokens
            --
            -- 
        local
            l_response: LIST [TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.dapps_sushiswap_tokens_historical_get(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_transactions_historical_get
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

            -- api.dapps_sushiswap_transactions_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_dapps_sushiswap_users_historical_get
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

            -- api.dapps_sushiswap_users_historical_get(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SUSHISWAP_API
            -- Create an object instance of `SUSHISWAP_API'.
        once
            create { SUSHISWAP_API } Result
        end

end
