note
    description: "API tests for SETTLEMENT_API"
    date: "$Date$"
    revision: "$Revision$"


class SETTLEMENT_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_chains_chain_id_dapps_cow_settlement_historical_get
            -- 
            --
            -- 
        local
            l_chain_id: STRING_32
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- api.chains_chain_id_dapps_cow_settlement_historical_get(l_chain_id, l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: SETTLEMENT_API
            -- Create an object instance of `SETTLEMENT_API'.
        once
            create { SETTLEMENT_API } Result
        end

end
