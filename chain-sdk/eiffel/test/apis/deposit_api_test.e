note
    description: "API tests for DEPOSIT_API"
    date: "$Date$"
    revision: "$Revision$"


class DEPOSIT_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_chains_chain_id_dapps_dex_tokens_historical_get
            -- 
            --
            -- 
        local
            l_chain_id: STRING_32
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- api.chains_chain_id_dapps_dex_tokens_historical_get(l_chain_id, l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: DEPOSIT_API
            -- Create an object instance of `DEPOSIT_API'.
        once
            create { DEPOSIT_API } Result
        end

end
