note
    description: "API tests for CURVE_API"
    date: "$Date$"
    revision: "$Revision$"


class CURVE_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_curve_get_accounts_historical
            -- GetAccounts (historical)
            --
            -- Gets accounts.
        local
            l_response: LIST [CURVE_ACCOUNT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_accounts_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_add_liquidity_events_historical
            -- GetAddLiquidityEvents (historical)
            --
            -- Gets add liquidity events.
        local
            l_response: LIST [CURVE_ADD_LIQUIDITY_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_add_liquidity_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_admin_fee_change_logs_historical
            -- GetAdminFeeChangeLogs (historical)
            --
            -- Gets admin fee change logs.
        local
            l_response: LIST [CURVE_ADMIN_FEE_CHANGE_LOG_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_admin_fee_change_logs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_amplification_coeff_change_logs_historical
            -- GetAmplificationCoeffChangeLogs (historical)
            --
            -- Gets amplification coeff change logs.
        local
            l_response: LIST [CURVE_AMPLIFICATION_COEFF_CHANGE_LOG_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_amplification_coeff_change_logs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_coins_historical
            -- GetCoins (historical)
            --
            -- Gets coins.
        local
            l_response: LIST [CURVE_COIN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_coins_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_contracts_historical
            -- GetContracts (historical)
            --
            -- Gets contracts.
        local
            l_response: LIST [CURVE_CONTRACT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_contracts_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_contracts_versions_historical
            -- GetContractsVersions (historical)
            --
            -- Gets contracts versions.
        local
            l_response: LIST [CURVE_CONTRACT_VERSION_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_contracts_versions_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_daily_volumes_historical
            -- GetDailyVolumes (historical)
            --
            -- Gets daily volumes.
        local
            l_response: LIST [CURVE_DAILY_VOLUME_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_daily_volumes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_exchanges_historical
            -- GetExchanges (historical) 🔥
            --
            -- Gets exchanges.
        local
            l_response: LIST [CURVE_EXCHANGE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_exchanges_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_fee_change_logs_historical
            -- GetFeeChangeLogs (historical)
            --
            -- Gets fee change logs.
        local
            l_response: LIST [CURVE_FEE_CHANGE_LOG_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_fee_change_logs_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_deposits_historical
            -- GetGaugesDeposits (historical)
            --
            -- Gets gauges deposits.
        local
            l_response: LIST [CURVE_GAUGE_DEPOSIT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_deposits_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_historical
            -- GetGauges (historical)
            --
            -- Gets gauges.
        local
            l_response: LIST [CURVE_GAUGE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_liquidity_historical
            -- GetGaugesLiquidity (historical)
            --
            -- Gets gauges liquidity.
        local
            l_response: LIST [CURVE_GAUGE_LIQUIDITY_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_liquidity_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_total_weights_historical
            -- GetGaugesTotalWeights (historical)
            --
            -- Gets gauges total weights.
        local
            l_response: LIST [CURVE_GAUGE_TOTAL_WEIGHT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_total_weights_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_types_historical
            -- GetGaugesTypes (historical)
            --
            -- Gets gauges types.
        local
            l_response: LIST [CURVE_GAUGE_TYPE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_types_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_types_weights_historical
            -- GetGaugesTypesWeights (historical)
            --
            -- Gets gauges types weights.
        local
            l_response: LIST [CURVE_GAUGE_TYPE_WEIGHT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_types_weights_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_weights_historical
            -- GetGaugesWeights (historical)
            --
            -- Gets gauges weights.
        local
            l_response: LIST [CURVE_GAUGE_WEIGHT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_weights_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_weights_votes_historical
            -- GetGaugesWeightsVotes (historical)
            --
            -- Gets gauges weights votes.
        local
            l_response: LIST [CURVE_GAUGE_WEIGHT_VOTE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_weights_votes_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_gauges_withdraw_historical
            -- GetGaugesWithdraw (historical)
            --
            -- Gets gauges withdraws.
        local
            l_response: LIST [CURVE_GAUGE_WITHDRAW_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_gauges_withdraw_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_hourly_volumes_historical
            -- GetHourlyVolumes (historical)
            --
            -- Gets hourly volumes.
        local
            l_response: LIST [CURVE_HOURLY_VOLUME_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_hourly_volumes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_lp_tokens_historical
            -- GetLpTokens (historical)
            --
            -- Gets lp tokens.
        local
            l_response: LIST [CURVE_LP_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_lp_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_pools_historical
            -- GetPools (historical) 🔥
            --
            -- Gets pools.
        local
            l_response: LIST [CURVE_POOL_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_pools_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_proposals_historical
            -- GetProposals (historical)
            --
            -- Gets proposals.
        local
            l_response: LIST [CURVE_PROPOSAL_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_proposals_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_proposals_votes_historical
            -- GetProposalsVotes (historical)
            --
            -- Gets proposals votes.
        local
            l_response: LIST [CURVE_PROPOSAL_VOTE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_proposals_votes_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_remove_liquidity_events_historical
            -- GetRemoveLiquidityEvents (historical)
            --
            -- Gets remove liquidity events.
        local
            l_response: LIST [CURVE_REMOVE_LIQUIDITY_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_remove_liquidity_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_remove_liquidity_one_events_historical
            -- GetRemoveLiquidityOneEvents (historical)
            --
            -- Gets remove liquidity one events.
        local
            l_response: LIST [CURVE_REMOVE_LIQUIDITY_ONE_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_remove_liquidity_one_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_system_states_historical
            -- GetSystemStates (historical)
            --
            -- Gets system states.
        local
            l_response: LIST [CURVE_SYSTEM_STATE_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_system_states_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_tokens_historical
            -- GetTokens (historical) 🔥
            --
            -- Gets tokens.
        local
            l_response: LIST [CURVE_TOKEN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_token_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_tokens_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_token_id)
            assert ("not_implemented", False)
        end

    test_curve_get_transfer_ownership_events_historical
            -- GetTransferOwnershipEvents (historical)
            --
            -- Gets transfer ownership events.
        local
            l_response: LIST [CURVE_TRANSFER_OWNERSHIP_EVENT_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_transfer_ownership_events_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_underlying_coins_historical
            -- GetUnderlyingCoins (historical)
            --
            -- Gets underlying coins.
        local
            l_response: LIST [CURVE_UNDERLYING_COIN_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_underlying_coins_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

    test_curve_get_voting_apps_historical
            -- GetVotingApps (historical)
            --
            -- Gets voting apps.
        local
            l_response: LIST [CURVE_VOTING_APP_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_voting_apps_historical(l_start_block, l_end_block, l_start_date, l_end_date)
            assert ("not_implemented", False)
        end

    test_curve_get_weekly_volumes_historical
            -- GetWeeklyVolumes (historical)
            --
            -- Gets weekly volumes.
        local
            l_response: LIST [CURVE_WEEKLY_VOLUME_DTO]
            l_start_block: INTEGER_64
            l_end_block: INTEGER_64
            l_start_date: DATE_TIME
            l_end_date: DATE_TIME
            l_pool_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.curve_get_weekly_volumes_historical(l_start_block, l_end_block, l_start_date, l_end_date, l_pool_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CURVE_API
            -- Create an object instance of `CURVE_API'.
        once
            create { CURVE_API } Result
        end

end
