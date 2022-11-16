note
    description: "API tests for UNISWAPV2_API"
    date: "$Date$"
    revision: "$Revision$"


class UNISWAPV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_uniswap_v2_get_pools_current
            -- Pools (current) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [UNISWAP_V2_PAIR_V2_DTO]
            l_filter_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_pools_current(l_filter_pool_id)
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_swaps_current
            -- Swaps (current) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [UNISWAP_V2_SWAP_V2_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_swaps_current
            assert ("not_implemented", False)
        end

    test_uniswap_v2_get_tokens_current
            -- Tokens (current) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [UNISWAP_V2_TOKEN_V2_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.uniswap_v2_get_tokens_current
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: UNISWAPV2_API
            -- Create an object instance of `UNISWAPV2_API'.
        once
            create { UNISWAPV2_API } Result
        end

end
