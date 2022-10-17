note
    description: "API tests for UNISWAPV3_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV3_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_chains_chain_id_dapps_uniswapv3_bundle_current_get
            -- GetBundles
            --
            -- 
        local
            l_response: LIST [BUNDLE_V3_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_bundle_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_burns_current_get
            -- GetBurns
            --
            -- 
        local
            l_response: LIST [BURN_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_burns_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_factory_current_get
            -- GetFactory
            --
            -- 
        local
            l_response: LIST [FACTORY_V3_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_factory_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_mints_current_get
            -- GetMints
            --
            -- 
        local
            l_response: LIST [MINT_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_mints_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_pools_current_get
            -- GetPools
            --
            -- 
        local
            l_response: LIST [POOL_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_pools_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_pools_day_data_current_get
            -- GetPoolsDayData
            --
            -- 
        local
            l_response: LIST [POOL_DAY_DATA_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get
            -- GetPoolsHourData
            --
            -- 
        local
            l_response: LIST [POOL_HOUR_DATA_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_position_snapshots_current_get
            -- GetPositionSnapshot
            --
            -- 
        local
            l_response: LIST [POSITION_SNAPSHOT_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_positions_current_get
            -- GetPositions
            --
            -- 
        local
            l_response: LIST [POSITION_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_positions_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_swaps_current_get
            -- GetSwaps
            --
            -- 
        local
            l_response: LIST [SWAP_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_swaps_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_ticks_current_get
            -- GetTicks
            --
            -- 
        local
            l_response: LIST [TICK_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_ticks_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get
            -- GetTicksDayData
            --
            -- 
        local
            l_response: LIST [TICK_DAY_DATA_V3_DTO]
            l_chain_id: STRING_32
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(l_chain_id, l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_tokens_current_get
            -- GetTokens
            --
            -- 
        local
            l_response: LIST [TOKEN_V3_DTO]
            l_chain_id: STRING_32
            l_filter_token_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_tokens_current_get(l_chain_id, l_filter_token_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get
            -- GetTokensDayData
            --
            -- 
        local
            l_response: LIST [TOKEN_V3_DAY_DATA_DTO]
            l_chain_id: STRING_32
            l_filter_token_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(l_chain_id, l_filter_token_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get
            -- GetTokensHourData
            --
            -- 
        local
            l_response: LIST [TOKEN_HOUR_DATA_V3_DTO]
            l_chain_id: STRING_32
            l_filter_token_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(l_chain_id, l_filter_token_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get
            -- GetUniswapDayData
            --
            -- 
        local
            l_response: LIST [UNISWAP_DAY_DATA_V3_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV3_API
            -- Create an object instance of `UNISWAPV3_API'.
        once
            create { UNISWAPV3_API } Result
        end

end
