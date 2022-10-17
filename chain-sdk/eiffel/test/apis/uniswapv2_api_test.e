note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_chains_chain_id_dapps_uniswapv2_pools_current_get
            -- GetPools
            --
            -- 
        local
            l_response: LIST [PAIR_V2_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv2_pools_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv2_swaps_current_get
            -- GetSwaps
            --
            -- 
        local
            l_response: LIST [SWAP_V2_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv2_swaps_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_uniswapv2_tokens_current_get
            -- GetTokens
            --
            -- 
        local
            l_response: LIST [TOKEN_V2_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_uniswapv2_tokens_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV2_API
            -- Create an object instance of `UNISWAPV2_API'.
        once
            create { UNISWAPV2_API } Result
        end

end
