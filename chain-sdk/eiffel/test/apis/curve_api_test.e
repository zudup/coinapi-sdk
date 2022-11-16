note
    description: "API tests for CURVE_API"
    date: "$Date$"
    revision: "$Revision$"


class CURVE_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_curve_get_accounts_historical
            -- Accounts (historical) 🔥
            --
            -- Gets accounts.
        local
            l_response: LIST [CURVE_ACCOUNT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_accounts_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address)
            assert ("not_implemented", False)
        end

    test_curve_get_add_liquidity_events_historical
            -- AddLiquidityEvents (historical) 🔥
            --
            -- Gets addliquidityevents.
        local
            l_response: LIST [CURVE_ADD_LIQUIDITY_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_add_liquidity_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_admin_fee_change_logs_historical
            -- AdminFeeChangeLogs (historical) 🔥
            --
            -- Gets adminfeechangelogs.
        local
            l_response: LIST [CURVE_ADMIN_FEE_CHANGE_LOG_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_admin_fee_change_logs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_amplification_coeff_change_logs_historical
            -- AmplificationCoeffChangeLogs (historical) 🔥
            --
            -- Gets amplificationcoeffchangelogs.
        local
            l_response: LIST [CURVE_AMPLIFICATION_COEFF_CHANGE_LOG_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_amplification_coeff_change_logs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_coins_historical
            -- Coins (historical) 🔥
            --
            -- Gets coins.
        local
            l_response: LIST [CURVE_COIN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_coins_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_contract_versions_historical
            -- ContractVersions (historical) 🔥
            --
            -- Gets contractversions.
        local
            l_response: LIST [CURVE_CONTRACT_VERSION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_contract_versions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address)
            assert ("not_implemented", False)
        end

    test_curve_get_contracts_historical
            -- Contracts (historical) 🔥
            --
            -- Gets contracts.
        local
            l_response: LIST [CURVE_CONTRACT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_contracts_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_daily_volumes_historical
            -- DailyVolumes (historical) 🔥
            --
            -- Gets dailyvolumes.
        local
            l_response: LIST [CURVE_DAILY_VOLUME_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_daily_volumes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_exchanges_historical
            -- Exchanges (historical) 🔥
            --
            -- Gets exchanges.
        local
            l_response: LIST [CURVE_EXCHANGE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_exchanges_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_fee_change_logs_historical
            -- FeeChangeLogs (historical) 🔥
            --
            -- Gets feechangelogs.
        local
            l_response: LIST [CURVE_FEE_CHANGE_LOG_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_fee_change_logs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_deposits_historical
            -- GaugeDeposits (historical) 🔥
            --
            -- Gets gaugedeposits.
        local
            l_response: LIST [CURVE_GAUGE_DEPOSIT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_deposits_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_liquiditys_historical
            -- GaugeLiquiditys (historical) 🔥
            --
            -- Gets gaugeliquiditys.
        local
            l_response: LIST [CURVE_GAUGE_LIQUIDITY_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_liquiditys_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_total_weights_historical
            -- GaugeTotalWeights (historical) 🔥
            --
            -- Gets gaugetotalweights.
        local
            l_response: LIST [CURVE_GAUGE_TOTAL_WEIGHT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_total_weights_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_type_weights_historical
            -- GaugeTypeWeights (historical) 🔥
            --
            -- Gets gaugetypeweights.
        local
            l_response: LIST [CURVE_GAUGE_TYPE_WEIGHT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_type_weights_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_types_historical
            -- GaugeTypes (historical) 🔥
            --
            -- Gets gaugetypes.
        local
            l_response: LIST [CURVE_GAUGE_TYPE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_types_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_name)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_weight_votes_historical
            -- GaugeWeightVotes (historical) 🔥
            --
            -- Gets gaugeweightvotes.
        local
            l_response: LIST [CURVE_GAUGE_WEIGHT_VOTE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_user: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_weight_votes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_user)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_weights_historical
            -- GaugeWeights (historical) 🔥
            --
            -- Gets gaugeweights.
        local
            l_response: LIST [CURVE_GAUGE_WEIGHT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_weights_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauge_withdraws_historical
            -- GaugeWithdraws (historical) 🔥
            --
            -- Gets gaugewithdraws.
        local
            l_response: LIST [CURVE_GAUGE_WITHDRAW_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauge_withdraws_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_historical
            -- Gauges (historical) 🔥
            --
            -- Gets gauges.
        local
            l_response: LIST [CURVE_GAUGE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_hourly_volumes_historical
            -- HourlyVolumes (historical) 🔥
            --
            -- Gets hourlyvolumes.
        local
            l_response: LIST [CURVE_HOURLY_VOLUME_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_hourly_volumes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_lp_tokens_historical
            -- LpTokens (historical) 🔥
            --
            -- Gets lptokens.
        local
            l_response: LIST [CURVE_LP_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
            l_name: STRING_32
            l_symbol: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_lp_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address, l_name, l_symbol, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_pools_historical
            -- Pools (historical) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [CURVE_POOL_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_name: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_pools_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_name)
            assert ("not_implemented", False)
        end

    test_curve_get_proposal_votes_historical
            -- ProposalVotes (historical) 🔥
            --
            -- Gets proposalvotes.
        local
            l_response: LIST [CURVE_PROPOSAL_VOTE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_proposal_votes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_proposals_historical
            -- Proposals (historical) 🔥
            --
            -- Gets proposals.
        local
            l_response: LIST [CURVE_PROPOSAL_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_proposals_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_remove_liquidity_events_historical
            -- RemoveLiquidityEvents (historical) 🔥
            --
            -- Gets removeliquidityevents.
        local
            l_response: LIST [CURVE_REMOVE_LIQUIDITY_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_remove_liquidity_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_remove_liquidity_one_events_historical
            -- RemoveLiquidityOneEvents (historical) 🔥
            --
            -- Gets removeliquidityoneevents.
        local
            l_response: LIST [CURVE_REMOVE_LIQUIDITY_ONE_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_remove_liquidity_one_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_system_states_historical
            -- SystemStates (historical) 🔥
            --
            -- Gets systemstates.
        local
            l_response: LIST [CURVE_SYSTEM_STATE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_system_states_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id)
            assert ("not_implemented", False)
        end

    test_curve_get_tokens_historical
            -- Tokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [CURVE_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
            l_name: STRING_32
            l_symbol: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address, l_name, l_symbol)
            assert ("not_implemented", False)
        end

    test_curve_get_transfer_ownership_events_historical
            -- TransferOwnershipEvents (historical) 🔥
            --
            -- Gets transferownershipevents.
        local
            l_response: LIST [CURVE_TRANSFER_OWNERSHIP_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_transfer_ownership_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_underlying_coins_historical
            -- UnderlyingCoins (historical) 🔥
            --
            -- Gets underlyingcoins.
        local
            l_response: LIST [CURVE_UNDERLYING_COIN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_underlying_coins_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

    test_curve_get_voting_apps_historical
            -- VotingApps (historical) 🔥
            --
            -- Gets votingapps.
        local
            l_response: LIST [CURVE_VOTING_APP_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_address: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_voting_apps_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_address)
            assert ("not_implemented", False)
        end

    test_curve_get_weekly_volumes_historical
            -- WeeklyVolumes (historical) 🔥
            --
            -- Gets weeklyvolumes.
        local
            l_response: LIST [CURVE_WEEKLY_VOLUME_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_id: STRING_32
            l_pool: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_weekly_volumes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_id, l_pool)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CURVE_API
            -- Create an object instance of `CURVE_API'.
        once
            create { CURVE_API } Result
        end

end
