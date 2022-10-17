note
    description: "API tests for SUSHISWAP_API"
    date: "$Date$"
    revision: "$Revision$"


class SUSHISWAP_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_chains_chain_id_dapps_sushiswap_pools_current_get
            -- GetPools
            --
            -- Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.
        local
            l_response: LIST [PAIR_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_sushiswap_pools_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_sushiswap_swaps_current_get
            -- GetSwaps
            --
            -- 
        local
            l_response: LIST [SWAP_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_sushiswap_swaps_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_chains_chain_id_dapps_sushiswap_tokens_current_get
            -- GetTokens
            --
            -- 
        local
            l_response: LIST [TOKEN_DTO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.chains_chain_id_dapps_sushiswap_tokens_current_get(l_chain_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SUSHISWAP_API
            -- Create an object instance of `SUSHISWAP_API'.
        once
            create { SUSHISWAP_API } Result
        end

end
