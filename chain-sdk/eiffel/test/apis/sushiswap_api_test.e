note
    description: "API tests for SUSHISWAP_API"
    date: "$Date$"
    revision: "$Revision$"


class SUSHISWAP_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_curve_get_exchanges_current
            -- Exchanges (current) 🔥
            --
            -- Gets exchanges.
        local
            l_response: LIST [CURVE_EXCHANGE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_exchanges_current
            assert ("not_implemented", False)
        end

    test_dex_get_trades_current
            -- Trades (current) 🔥
            --
            -- Gets trades.
        local
            l_response: LIST [DEX_TRADE_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.dex_get_trades_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_pools_current
            -- Pools (current) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [SUSHISWAP_PAIR_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_pools_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_swaps_current
            -- Swaps (current) 🔥
            --
            -- Gets swaps.
        local
            l_response: LIST [SUSHISWAP_SWAP_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_swaps_current
            assert ("not_implemented", False)
        end

    test_sushiswap_get_tokens_current
            -- Tokens (current) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [SUSHISWAP_TOKEN_DTO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.sushiswap_get_tokens_current
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SUSHISWAP_API
            -- Create an object instance of `SUSHISWAP_API'.
        once
            create { SUSHISWAP_API } Result
        end

end
