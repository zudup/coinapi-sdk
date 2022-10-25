note
    description: "API tests for GAUGETYPE_API"
    date: "$Date$"
    revision: "$Revision$"


class GAUGETYPE_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_chains_chain_id_dapps_curve_gauge_type_historical_get
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

            -- api.chains_chain_id_dapps_curve_gauge_type_historical_get(l_chain_id, l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: GAUGETYPE_API
            -- Create an object instance of `GAUGETYPE_API'.
        once
            create { GAUGETYPE_API } Result
        end

end
