import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.dapps_cow_tokens_historical_manual import DappsCowTokensHistoricalManual
from openapi_client.apis.paths.dapps_cow_trades_historical_manual import DappsCowTradesHistoricalManual
from openapi_client.apis.paths.dapps_curve_accounts_historical_manual import DappsCurveAccountsHistoricalManual
from openapi_client.apis.paths.dapps_curve_add_liquidity_events_historical_manual import DappsCurveAddLiquidityEventsHistoricalManual
from openapi_client.apis.paths.dapps_curve_admin_fee_change_logs_historical_manual import DappsCurveAdminFeeChangeLogsHistoricalManual
from openapi_client.apis.paths.dapps_curve_amplification_coeff_change_logs_historical_manual import DappsCurveAmplificationCoeffChangeLogsHistoricalManual
from openapi_client.apis.paths.dapps_dex_batches_historical_manual import DappsDexBatchesHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_bundles_historical_manual import DappsUniswapv3BundlesHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_bundles_historical_manual import DappsUniswapv2BundlesHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_bundles_historical_manual import DappsSushiswapBundlesHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_bundles_current import DappsUniswapv3BundlesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_burns_historical_manual import DappsUniswapv3BurnsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_burns_historical_manual import DappsUniswapv2BurnsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_burns_historical_manual import DappsSushiswapBurnsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_burns_current import DappsUniswapv3BurnsCurrent
from openapi_client.apis.paths.dapps_curve_coins_historical_manual import DappsCurveCoinsHistoricalManual
from openapi_client.apis.paths.dapps_curve_contracts_historical_manual import DappsCurveContractsHistoricalManual
from openapi_client.apis.paths.dapps_curve_contracts_versions_historical_manual import DappsCurveContractsVersionsHistoricalManual
from openapi_client.apis.paths.dapps_curve_daily_volumes_historical_manual import DappsCurveDailyVolumesHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_day_data_historical_manual import DappsSushiswapDayDataHistoricalManual
from openapi_client.apis.paths.dapps_dex_deposits_historical_manual import DappsDexDepositsHistoricalManual
from openapi_client.apis.paths.dapps_curve_exchanges_historical_manual import DappsCurveExchangesHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_exchanges_current import DappsSushiswapExchangesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_factory_historical_manual import DappsUniswapv3FactoryHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_factory_historical_manual import DappsUniswapv2FactoryHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_factory_historical_manual import DappsSushiswapFactoryHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_factory_current import DappsUniswapv3FactoryCurrent
from openapi_client.apis.paths.dapps_curve_fee_change_logs_historical_manual import DappsCurveFeeChangeLogsHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_historical_manual import DappsCurveGaugesHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_deposits_historical_manual import DappsCurveGaugesDepositsHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_liquidity_historical_manual import DappsCurveGaugesLiquidityHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_total_weights_historical_manual import DappsCurveGaugesTotalWeightsHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_types_historical_manual import DappsCurveGaugesTypesHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_types_weights_historical_manual import DappsCurveGaugesTypesWeightsHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_weights_historical_manual import DappsCurveGaugesWeightsHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_weights_votes_historical_manual import DappsCurveGaugesWeightsVotesHistoricalManual
from openapi_client.apis.paths.dapps_curve_gauges_withdraws_historical_manual import DappsCurveGaugesWithdrawsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_hour_data_historical_manual import DappsSushiswapHourDataHistoricalManual
from openapi_client.apis.paths.dapps_curve_hourly_volumes_historical_manual import DappsCurveHourlyVolumesHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_liquidity_position_historical_manual import DappsSushiswapLiquidityPositionHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_liquidity_positions_historical_manual import DappsUniswapv2LiquidityPositionsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_liquidity_position_snapshots_historical_manual import DappsSushiswapLiquidityPositionSnapshotsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_liquidity_positions_snapshots_historical_manual import DappsUniswapv2LiquidityPositionsSnapshotsHistoricalManual
from openapi_client.apis.paths.dapps_curve_lp_tokens_historical_manual import DappsCurveLpTokensHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_mints_historical_manual import DappsUniswapv3MintsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_mints_historical_manual import DappsUniswapv2MintsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_mints_historical_manual import DappsSushiswapMintsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_mints_current import DappsUniswapv3MintsCurrent
from openapi_client.apis.paths.dapps_dex_orders_historical_manual import DappsDexOrdersHistoricalManual
from openapi_client.apis.paths.dapps_cow_orders_historical_manual import DappsCowOrdersHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_pools_historical_manual import DappsUniswapv3PoolsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_pools_historical_manual import DappsUniswapv2PoolsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_pools_historical_manual import DappsSushiswapPoolsHistoricalManual
from openapi_client.apis.paths.dapps_curve_pools_historical_manual import DappsCurvePoolsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_pools_current import DappsUniswapv3PoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_pools_current import DappsUniswapv2PoolsCurrent
from openapi_client.apis.paths.dapps_sushiswap_pools_current import DappsSushiswapPoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_historical_manual import DappsUniswapv3PoolsDayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_pools_day_data_historical_manual import DappsUniswapv2PoolsDayDataHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_pools_day_data_historical_manual import DappsSushiswapPoolsDayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_current import DappsUniswapv3PoolsDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_historical_manual import DappsUniswapv3PoolsHourDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_pools_hour_data_historical_manual import DappsUniswapv2PoolsHourDataHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_pools_hour_data_historical_manual import DappsSushiswapPoolsHourDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_current import DappsUniswapv3PoolsHourDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_historical_manual import DappsUniswapv3PositionsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_positions_current import DappsUniswapv3PositionsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_position_snapshots_current import DappsUniswapv3PositionSnapshotsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_snapshots_historical_manual import DappsUniswapv3PositionsSnapshotsHistoricalManual
from openapi_client.apis.paths.dapps_dex_prices_historical_manual import DappsDexPricesHistoricalManual
from openapi_client.apis.paths.dapps_curve_proposals_historical_manual import DappsCurveProposalsHistoricalManual
from openapi_client.apis.paths.dapps_curve_proposals_votes_historical_manual import DappsCurveProposalsVotesHistoricalManual
from openapi_client.apis.paths.dapps_curve_remove_liquidity_events_historical_manual import DappsCurveRemoveLiquidityEventsHistoricalManual
from openapi_client.apis.paths.dapps_curve_remove_liquidity_one_events_historical_manual import DappsCurveRemoveLiquidityOneEventsHistoricalManual
from openapi_client.apis.paths.dapps_cow_settlements_historical_manual import DappsCowSettlementsHistoricalManual
from openapi_client.apis.paths.dapps_dex_solutions_historical_manual import DappsDexSolutionsHistoricalManual
from openapi_client.apis.paths.dapps_dex_stats_historical_manual import DappsDexStatsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_swaps_historical_manual import DappsUniswapv3SwapsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_swaps_historical_manual import DappsUniswapv2SwapsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_swaps_historical_manual import DappsSushiswapSwapsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_swaps_current import DappsUniswapv3SwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_swaps_current import DappsUniswapv2SwapsCurrent
from openapi_client.apis.paths.dapps_sushiswap_swaps_current import DappsSushiswapSwapsCurrent
from openapi_client.apis.paths.dapps_curve_system_states_historical_manual import DappsCurveSystemStatesHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_ticks_historical_manual import DappsUniswapv3TicksHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_ticks_current import DappsUniswapv3TicksCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_historical_manual import DappsUniswapv3TicksDayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_current import DappsUniswapv3TicksDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_historical_manual import DappsUniswapv3TokensHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_tokens_historical_manual import DappsUniswapv2TokensHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_tokens_historical_manual import DappsSushiswapTokensHistoricalManual
from openapi_client.apis.paths.dapps_dex_tokens_historical_manual import DappsDexTokensHistoricalManual
from openapi_client.apis.paths.dapps_curve_tokens_historical_manual import DappsCurveTokensHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_tokens_current import DappsUniswapv3TokensCurrent
from openapi_client.apis.paths.dapps_uniswapv2_tokens_current import DappsUniswapv2TokensCurrent
from openapi_client.apis.paths.dapps_sushiswap_tokens_current import DappsSushiswapTokensCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_historical_manual import DappsUniswapv3TokensDayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_tokens_day_data_historical_manual import DappsUniswapv2TokensDayDataHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_tokens_day_data_historical_manual import DappsSushiswapTokensDayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_current import DappsUniswapv3TokensDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_historical_manual import DappsUniswapv3TokensHourDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_current import DappsUniswapv3TokensHourDataCurrent
from openapi_client.apis.paths.dapps_dex_trades_historical_manual import DappsDexTradesHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_trades_current import DappsSushiswapTradesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_transactions_historical_manual import DappsUniswapv3TransactionsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_transactions_historical_manual import DappsUniswapv2TransactionsHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_transactions_historical_manual import DappsSushiswapTransactionsHistoricalManual
from openapi_client.apis.paths.dapps_curve_transfer_ownership_events_historical_manual import DappsCurveTransferOwnershipEventsHistoricalManual
from openapi_client.apis.paths.dapps_curve_underlying_coins_historical_manual import DappsCurveUnderlyingCoinsHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_day_data_historical_manual import DappsUniswapv3DayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv2_day_data_historical_manual import DappsUniswapv2DayDataHistoricalManual
from openapi_client.apis.paths.dapps_uniswapv3_day_data_current import DappsUniswapv3DayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv2_users_historical_manual import DappsUniswapv2UsersHistoricalManual
from openapi_client.apis.paths.dapps_sushiswap_users_historical_manual import DappsSushiswapUsersHistoricalManual
from openapi_client.apis.paths.dapps_dex_users_historical_manual import DappsDexUsersHistoricalManual
from openapi_client.apis.paths.dapps_cow_users_historical_manual import DappsCowUsersHistoricalManual
from openapi_client.apis.paths.dapps_curve_voting_apps_historical_manual import DappsCurveVotingAppsHistoricalManual
from openapi_client.apis.paths.dapps_curve_weekly_volumes_historical_manual import DappsCurveWeeklyVolumesHistoricalManual
from openapi_client.apis.paths.dapps_dex_withdraws_historical_manual import DappsDexWithdrawsHistoricalManual
from openapi_client.apis.paths.dapps_dex_withdraws_requests_historical_manual import DappsDexWithdrawsRequestsHistoricalManual

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.DAPPS_COW_TOKENS_HISTORICALMANUAL: DappsCowTokensHistoricalManual,
        PathValues.DAPPS_COW_TRADES_HISTORICALMANUAL: DappsCowTradesHistoricalManual,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICALMANUAL: DappsCurveAccountsHistoricalManual,
        PathValues.DAPPS_CURVE_ADD_LIQUIDITY_EVENTS_HISTORICALMANUAL: DappsCurveAddLiquidityEventsHistoricalManual,
        PathValues.DAPPS_CURVE_ADMIN_FEE_CHANGE_LOGS_HISTORICALMANUAL: DappsCurveAdminFeeChangeLogsHistoricalManual,
        PathValues.DAPPS_CURVE_AMPLIFICATION_COEFF_CHANGE_LOGS_HISTORICALMANUAL: DappsCurveAmplificationCoeffChangeLogsHistoricalManual,
        PathValues.DAPPS_DEX_BATCHES_HISTORICALMANUAL: DappsDexBatchesHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_HISTORICALMANUAL: DappsUniswapv3BundlesHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_BUNDLES_HISTORICALMANUAL: DappsUniswapv2BundlesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICALMANUAL: DappsSushiswapBundlesHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_HISTORICALMANUAL: DappsUniswapv3BurnsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_BURNS_HISTORICALMANUAL: DappsUniswapv2BurnsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICALMANUAL: DappsSushiswapBurnsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_CURVE_COINS_HISTORICALMANUAL: DappsCurveCoinsHistoricalManual,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICALMANUAL: DappsCurveContractsHistoricalManual,
        PathValues.DAPPS_CURVE_CONTRACTS_VERSIONS_HISTORICALMANUAL: DappsCurveContractsVersionsHistoricalManual,
        PathValues.DAPPS_CURVE_DAILY_VOLUMES_HISTORICALMANUAL: DappsCurveDailyVolumesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_DAY_DATA_HISTORICALMANUAL: DappsSushiswapDayDataHistoricalManual,
        PathValues.DAPPS_DEX_DEPOSITS_HISTORICALMANUAL: DappsDexDepositsHistoricalManual,
        PathValues.DAPPS_CURVE_EXCHANGES_HISTORICALMANUAL: DappsCurveExchangesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_HISTORICALMANUAL: DappsUniswapv3FactoryHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_FACTORY_HISTORICALMANUAL: DappsUniswapv2FactoryHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_FACTORY_HISTORICALMANUAL: DappsSushiswapFactoryHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_CURVE_FEE_CHANGE_LOGS_HISTORICALMANUAL: DappsCurveFeeChangeLogsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_HISTORICALMANUAL: DappsCurveGaugesHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_DEPOSITS_HISTORICALMANUAL: DappsCurveGaugesDepositsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_LIQUIDITY_HISTORICALMANUAL: DappsCurveGaugesLiquidityHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_TOTAL_WEIGHTS_HISTORICALMANUAL: DappsCurveGaugesTotalWeightsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_HISTORICALMANUAL: DappsCurveGaugesTypesHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_WEIGHTS_HISTORICALMANUAL: DappsCurveGaugesTypesWeightsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_HISTORICALMANUAL: DappsCurveGaugesWeightsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_VOTES_HISTORICALMANUAL: DappsCurveGaugesWeightsVotesHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_WITHDRAWS_HISTORICALMANUAL: DappsCurveGaugesWithdrawsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_HOUR_DATA_HISTORICALMANUAL: DappsSushiswapHourDataHistoricalManual,
        PathValues.DAPPS_CURVE_HOURLY_VOLUMES_HISTORICALMANUAL: DappsCurveHourlyVolumesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICALMANUAL: DappsSushiswapLiquidityPositionHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_HISTORICALMANUAL: DappsUniswapv2LiquidityPositionsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICALMANUAL: DappsSushiswapLiquidityPositionSnapshotsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_SNAPSHOTS_HISTORICALMANUAL: DappsUniswapv2LiquidityPositionsSnapshotsHistoricalManual,
        PathValues.DAPPS_CURVE_LP_TOKENS_HISTORICALMANUAL: DappsCurveLpTokensHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_MINTS_HISTORICALMANUAL: DappsUniswapv3MintsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_MINTS_HISTORICALMANUAL: DappsUniswapv2MintsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICALMANUAL: DappsSushiswapMintsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_DEX_ORDERS_HISTORICALMANUAL: DappsDexOrdersHistoricalManual,
        PathValues.DAPPS_COW_ORDERS_HISTORICALMANUAL: DappsCowOrdersHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_HISTORICALMANUAL: DappsUniswapv3PoolsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_POOLS_HISTORICALMANUAL: DappsUniswapv2PoolsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_POOLS_HISTORICALMANUAL: DappsSushiswapPoolsHistoricalManual,
        PathValues.DAPPS_CURVE_POOLS_HISTORICALMANUAL: DappsCurvePoolsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3PoolsDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_POOLS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv2PoolsDayDataHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_POOLS_DAY_DATA_HISTORICALMANUAL: DappsSushiswapPoolsDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_HISTORICALMANUAL: DappsUniswapv3PoolsHourDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_POOLS_HOUR_DATA_HISTORICALMANUAL: DappsUniswapv2PoolsHourDataHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_POOLS_HOUR_DATA_HISTORICALMANUAL: DappsSushiswapPoolsHourDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_HISTORICALMANUAL: DappsUniswapv3PositionsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_SNAPSHOTS_HISTORICALMANUAL: DappsUniswapv3PositionsSnapshotsHistoricalManual,
        PathValues.DAPPS_DEX_PRICES_HISTORICALMANUAL: DappsDexPricesHistoricalManual,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICALMANUAL: DappsCurveProposalsHistoricalManual,
        PathValues.DAPPS_CURVE_PROPOSALS_VOTES_HISTORICALMANUAL: DappsCurveProposalsVotesHistoricalManual,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_EVENTS_HISTORICALMANUAL: DappsCurveRemoveLiquidityEventsHistoricalManual,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_ONE_EVENTS_HISTORICALMANUAL: DappsCurveRemoveLiquidityOneEventsHistoricalManual,
        PathValues.DAPPS_COW_SETTLEMENTS_HISTORICALMANUAL: DappsCowSettlementsHistoricalManual,
        PathValues.DAPPS_DEX_SOLUTIONS_HISTORICALMANUAL: DappsDexSolutionsHistoricalManual,
        PathValues.DAPPS_DEX_STATS_HISTORICALMANUAL: DappsDexStatsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_SWAPS_HISTORICALMANUAL: DappsUniswapv3SwapsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_SWAPS_HISTORICALMANUAL: DappsUniswapv2SwapsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICALMANUAL: DappsSushiswapSwapsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_CURVE_SYSTEM_STATES_HISTORICALMANUAL: DappsCurveSystemStatesHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TICKS_HISTORICALMANUAL: DappsUniswapv3TicksHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3TicksDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HISTORICALMANUAL: DappsUniswapv3TokensHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_TOKENS_HISTORICALMANUAL: DappsUniswapv2TokensHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICALMANUAL: DappsSushiswapTokensHistoricalManual,
        PathValues.DAPPS_DEX_TOKENS_HISTORICALMANUAL: DappsDexTokensHistoricalManual,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICALMANUAL: DappsCurveTokensHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3TokensDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_TOKENS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv2TokensDayDataHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TOKENS_DAY_DATA_HISTORICALMANUAL: DappsSushiswapTokensDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_HISTORICALMANUAL: DappsUniswapv3TokensHourDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_DEX_TRADES_HISTORICALMANUAL: DappsDexTradesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICALMANUAL: DappsUniswapv3TransactionsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICALMANUAL: DappsUniswapv2TransactionsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICALMANUAL: DappsSushiswapTransactionsHistoricalManual,
        PathValues.DAPPS_CURVE_TRANSFER_OWNERSHIP_EVENTS_HISTORICALMANUAL: DappsCurveTransferOwnershipEventsHistoricalManual,
        PathValues.DAPPS_CURVE_UNDERLYING_COINS_HISTORICALMANUAL: DappsCurveUnderlyingCoinsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3DayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_DAY_DATA_HISTORICALMANUAL: DappsUniswapv2DayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_USERS_HISTORICALMANUAL: DappsUniswapv2UsersHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICALMANUAL: DappsSushiswapUsersHistoricalManual,
        PathValues.DAPPS_DEX_USERS_HISTORICALMANUAL: DappsDexUsersHistoricalManual,
        PathValues.DAPPS_COW_USERS_HISTORICALMANUAL: DappsCowUsersHistoricalManual,
        PathValues.DAPPS_CURVE_VOTING_APPS_HISTORICALMANUAL: DappsCurveVotingAppsHistoricalManual,
        PathValues.DAPPS_CURVE_WEEKLY_VOLUMES_HISTORICALMANUAL: DappsCurveWeeklyVolumesHistoricalManual,
        PathValues.DAPPS_DEX_WITHDRAWS_HISTORICALMANUAL: DappsDexWithdrawsHistoricalManual,
        PathValues.DAPPS_DEX_WITHDRAWS_REQUESTS_HISTORICALMANUAL: DappsDexWithdrawsRequestsHistoricalManual,
    }
)

path_to_api = PathToApi(
    {
        PathValues.DAPPS_COW_TOKENS_HISTORICALMANUAL: DappsCowTokensHistoricalManual,
        PathValues.DAPPS_COW_TRADES_HISTORICALMANUAL: DappsCowTradesHistoricalManual,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICALMANUAL: DappsCurveAccountsHistoricalManual,
        PathValues.DAPPS_CURVE_ADD_LIQUIDITY_EVENTS_HISTORICALMANUAL: DappsCurveAddLiquidityEventsHistoricalManual,
        PathValues.DAPPS_CURVE_ADMIN_FEE_CHANGE_LOGS_HISTORICALMANUAL: DappsCurveAdminFeeChangeLogsHistoricalManual,
        PathValues.DAPPS_CURVE_AMPLIFICATION_COEFF_CHANGE_LOGS_HISTORICALMANUAL: DappsCurveAmplificationCoeffChangeLogsHistoricalManual,
        PathValues.DAPPS_DEX_BATCHES_HISTORICALMANUAL: DappsDexBatchesHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_HISTORICALMANUAL: DappsUniswapv3BundlesHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_BUNDLES_HISTORICALMANUAL: DappsUniswapv2BundlesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICALMANUAL: DappsSushiswapBundlesHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_HISTORICALMANUAL: DappsUniswapv3BurnsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_BURNS_HISTORICALMANUAL: DappsUniswapv2BurnsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICALMANUAL: DappsSushiswapBurnsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_CURVE_COINS_HISTORICALMANUAL: DappsCurveCoinsHistoricalManual,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICALMANUAL: DappsCurveContractsHistoricalManual,
        PathValues.DAPPS_CURVE_CONTRACTS_VERSIONS_HISTORICALMANUAL: DappsCurveContractsVersionsHistoricalManual,
        PathValues.DAPPS_CURVE_DAILY_VOLUMES_HISTORICALMANUAL: DappsCurveDailyVolumesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_DAY_DATA_HISTORICALMANUAL: DappsSushiswapDayDataHistoricalManual,
        PathValues.DAPPS_DEX_DEPOSITS_HISTORICALMANUAL: DappsDexDepositsHistoricalManual,
        PathValues.DAPPS_CURVE_EXCHANGES_HISTORICALMANUAL: DappsCurveExchangesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_HISTORICALMANUAL: DappsUniswapv3FactoryHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_FACTORY_HISTORICALMANUAL: DappsUniswapv2FactoryHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_FACTORY_HISTORICALMANUAL: DappsSushiswapFactoryHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_CURVE_FEE_CHANGE_LOGS_HISTORICALMANUAL: DappsCurveFeeChangeLogsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_HISTORICALMANUAL: DappsCurveGaugesHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_DEPOSITS_HISTORICALMANUAL: DappsCurveGaugesDepositsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_LIQUIDITY_HISTORICALMANUAL: DappsCurveGaugesLiquidityHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_TOTAL_WEIGHTS_HISTORICALMANUAL: DappsCurveGaugesTotalWeightsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_HISTORICALMANUAL: DappsCurveGaugesTypesHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_WEIGHTS_HISTORICALMANUAL: DappsCurveGaugesTypesWeightsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_HISTORICALMANUAL: DappsCurveGaugesWeightsHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_VOTES_HISTORICALMANUAL: DappsCurveGaugesWeightsVotesHistoricalManual,
        PathValues.DAPPS_CURVE_GAUGES_WITHDRAWS_HISTORICALMANUAL: DappsCurveGaugesWithdrawsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_HOUR_DATA_HISTORICALMANUAL: DappsSushiswapHourDataHistoricalManual,
        PathValues.DAPPS_CURVE_HOURLY_VOLUMES_HISTORICALMANUAL: DappsCurveHourlyVolumesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICALMANUAL: DappsSushiswapLiquidityPositionHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_HISTORICALMANUAL: DappsUniswapv2LiquidityPositionsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICALMANUAL: DappsSushiswapLiquidityPositionSnapshotsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_SNAPSHOTS_HISTORICALMANUAL: DappsUniswapv2LiquidityPositionsSnapshotsHistoricalManual,
        PathValues.DAPPS_CURVE_LP_TOKENS_HISTORICALMANUAL: DappsCurveLpTokensHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_MINTS_HISTORICALMANUAL: DappsUniswapv3MintsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_MINTS_HISTORICALMANUAL: DappsUniswapv2MintsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICALMANUAL: DappsSushiswapMintsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_DEX_ORDERS_HISTORICALMANUAL: DappsDexOrdersHistoricalManual,
        PathValues.DAPPS_COW_ORDERS_HISTORICALMANUAL: DappsCowOrdersHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_HISTORICALMANUAL: DappsUniswapv3PoolsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_POOLS_HISTORICALMANUAL: DappsUniswapv2PoolsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_POOLS_HISTORICALMANUAL: DappsSushiswapPoolsHistoricalManual,
        PathValues.DAPPS_CURVE_POOLS_HISTORICALMANUAL: DappsCurvePoolsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3PoolsDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_POOLS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv2PoolsDayDataHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_POOLS_DAY_DATA_HISTORICALMANUAL: DappsSushiswapPoolsDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_HISTORICALMANUAL: DappsUniswapv3PoolsHourDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_POOLS_HOUR_DATA_HISTORICALMANUAL: DappsUniswapv2PoolsHourDataHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_POOLS_HOUR_DATA_HISTORICALMANUAL: DappsSushiswapPoolsHourDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_HISTORICALMANUAL: DappsUniswapv3PositionsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_SNAPSHOTS_HISTORICALMANUAL: DappsUniswapv3PositionsSnapshotsHistoricalManual,
        PathValues.DAPPS_DEX_PRICES_HISTORICALMANUAL: DappsDexPricesHistoricalManual,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICALMANUAL: DappsCurveProposalsHistoricalManual,
        PathValues.DAPPS_CURVE_PROPOSALS_VOTES_HISTORICALMANUAL: DappsCurveProposalsVotesHistoricalManual,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_EVENTS_HISTORICALMANUAL: DappsCurveRemoveLiquidityEventsHistoricalManual,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_ONE_EVENTS_HISTORICALMANUAL: DappsCurveRemoveLiquidityOneEventsHistoricalManual,
        PathValues.DAPPS_COW_SETTLEMENTS_HISTORICALMANUAL: DappsCowSettlementsHistoricalManual,
        PathValues.DAPPS_DEX_SOLUTIONS_HISTORICALMANUAL: DappsDexSolutionsHistoricalManual,
        PathValues.DAPPS_DEX_STATS_HISTORICALMANUAL: DappsDexStatsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_SWAPS_HISTORICALMANUAL: DappsUniswapv3SwapsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_SWAPS_HISTORICALMANUAL: DappsUniswapv2SwapsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICALMANUAL: DappsSushiswapSwapsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_CURVE_SYSTEM_STATES_HISTORICALMANUAL: DappsCurveSystemStatesHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TICKS_HISTORICALMANUAL: DappsUniswapv3TicksHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3TicksDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HISTORICALMANUAL: DappsUniswapv3TokensHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_TOKENS_HISTORICALMANUAL: DappsUniswapv2TokensHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICALMANUAL: DappsSushiswapTokensHistoricalManual,
        PathValues.DAPPS_DEX_TOKENS_HISTORICALMANUAL: DappsDexTokensHistoricalManual,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICALMANUAL: DappsCurveTokensHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3TokensDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_TOKENS_DAY_DATA_HISTORICALMANUAL: DappsUniswapv2TokensDayDataHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TOKENS_DAY_DATA_HISTORICALMANUAL: DappsSushiswapTokensDayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_HISTORICALMANUAL: DappsUniswapv3TokensHourDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_DEX_TRADES_HISTORICALMANUAL: DappsDexTradesHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICALMANUAL: DappsUniswapv3TransactionsHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICALMANUAL: DappsUniswapv2TransactionsHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICALMANUAL: DappsSushiswapTransactionsHistoricalManual,
        PathValues.DAPPS_CURVE_TRANSFER_OWNERSHIP_EVENTS_HISTORICALMANUAL: DappsCurveTransferOwnershipEventsHistoricalManual,
        PathValues.DAPPS_CURVE_UNDERLYING_COINS_HISTORICALMANUAL: DappsCurveUnderlyingCoinsHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_HISTORICALMANUAL: DappsUniswapv3DayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV2_DAY_DATA_HISTORICALMANUAL: DappsUniswapv2DayDataHistoricalManual,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_USERS_HISTORICALMANUAL: DappsUniswapv2UsersHistoricalManual,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICALMANUAL: DappsSushiswapUsersHistoricalManual,
        PathValues.DAPPS_DEX_USERS_HISTORICALMANUAL: DappsDexUsersHistoricalManual,
        PathValues.DAPPS_COW_USERS_HISTORICALMANUAL: DappsCowUsersHistoricalManual,
        PathValues.DAPPS_CURVE_VOTING_APPS_HISTORICALMANUAL: DappsCurveVotingAppsHistoricalManual,
        PathValues.DAPPS_CURVE_WEEKLY_VOLUMES_HISTORICALMANUAL: DappsCurveWeeklyVolumesHistoricalManual,
        PathValues.DAPPS_DEX_WITHDRAWS_HISTORICALMANUAL: DappsDexWithdrawsHistoricalManual,
        PathValues.DAPPS_DEX_WITHDRAWS_REQUESTS_HISTORICALMANUAL: DappsDexWithdrawsRequestsHistoricalManual,
    }
)
