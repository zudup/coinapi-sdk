import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.dapps_cow_tokens_historical import DappsCowTokensHistorical
from openapi_client.apis.paths.dapps_cow_trades_historical import DappsCowTradesHistorical
from openapi_client.apis.paths.dapps_curve_accounts_historical import DappsCurveAccountsHistorical
from openapi_client.apis.paths.dapps_curve_add_liquidity_events_historical import DappsCurveAddLiquidityEventsHistorical
from openapi_client.apis.paths.dapps_curve_admin_fee_change_logs_historical import DappsCurveAdminFeeChangeLogsHistorical
from openapi_client.apis.paths.dapps_curve_amplification_coeff_change_logs_historical import DappsCurveAmplificationCoeffChangeLogsHistorical
from openapi_client.apis.paths.dapps_dex_batches_historical import DappsDexBatchesHistorical
from openapi_client.apis.paths.dapps_uniswapv3_bundles_historical import DappsUniswapv3BundlesHistorical
from openapi_client.apis.paths.dapps_uniswapv2_bundles_historical import DappsUniswapv2BundlesHistorical
from openapi_client.apis.paths.dapps_sushiswap_bundles_historical import DappsSushiswapBundlesHistorical
from openapi_client.apis.paths.dapps_uniswapv3_bundles_current import DappsUniswapv3BundlesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_burns_historical import DappsUniswapv3BurnsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_burns_historical import DappsUniswapv2BurnsHistorical
from openapi_client.apis.paths.dapps_sushiswap_burns_historical import DappsSushiswapBurnsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_burns_current import DappsUniswapv3BurnsCurrent
from openapi_client.apis.paths.dapps_curve_coins_historical import DappsCurveCoinsHistorical
from openapi_client.apis.paths.dapps_curve_contracts_historical import DappsCurveContractsHistorical
from openapi_client.apis.paths.dapps_curve_contracts_versions_historical import DappsCurveContractsVersionsHistorical
from openapi_client.apis.paths.dapps_curve_daily_volumes_historical import DappsCurveDailyVolumesHistorical
from openapi_client.apis.paths.dapps_sushiswap_day_data_historical import DappsSushiswapDayDataHistorical
from openapi_client.apis.paths.dapps_dex_deposits_historical import DappsDexDepositsHistorical
from openapi_client.apis.paths.dapps_curve_exchanges_historical import DappsCurveExchangesHistorical
from openapi_client.apis.paths.dapps_sushiswap_exchanges_current import DappsSushiswapExchangesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_factory_historical import DappsUniswapv3FactoryHistorical
from openapi_client.apis.paths.dapps_uniswapv2_factory_historical import DappsUniswapv2FactoryHistorical
from openapi_client.apis.paths.dapps_sushiswap_factory_historical import DappsSushiswapFactoryHistorical
from openapi_client.apis.paths.dapps_uniswapv3_factory_current import DappsUniswapv3FactoryCurrent
from openapi_client.apis.paths.dapps_curve_fee_change_logs_historical import DappsCurveFeeChangeLogsHistorical
from openapi_client.apis.paths.dapps_curve_gauges_historical import DappsCurveGaugesHistorical
from openapi_client.apis.paths.dapps_curve_gauges_deposits_historical import DappsCurveGaugesDepositsHistorical
from openapi_client.apis.paths.dapps_curve_gauges_liquidity_historical import DappsCurveGaugesLiquidityHistorical
from openapi_client.apis.paths.dapps_curve_gauges_total_weights_historical import DappsCurveGaugesTotalWeightsHistorical
from openapi_client.apis.paths.dapps_curve_gauges_types_historical import DappsCurveGaugesTypesHistorical
from openapi_client.apis.paths.dapps_curve_gauges_types_weights_historical import DappsCurveGaugesTypesWeightsHistorical
from openapi_client.apis.paths.dapps_curve_gauges_weights_historical import DappsCurveGaugesWeightsHistorical
from openapi_client.apis.paths.dapps_curve_gauges_weights_votes_historical import DappsCurveGaugesWeightsVotesHistorical
from openapi_client.apis.paths.dapps_curve_gauges_withdraws_historical import DappsCurveGaugesWithdrawsHistorical
from openapi_client.apis.paths.dapps_sushiswap_hour_data_historical import DappsSushiswapHourDataHistorical
from openapi_client.apis.paths.dapps_curve_hourly_volumes_historical import DappsCurveHourlyVolumesHistorical
from openapi_client.apis.paths.dapps_sushiswap_liquidity_position_historical import DappsSushiswapLiquidityPositionHistorical
from openapi_client.apis.paths.dapps_uniswapv2_liquidity_positions_historical import DappsUniswapv2LiquidityPositionsHistorical
from openapi_client.apis.paths.dapps_sushiswap_liquidity_position_snapshots_historical import DappsSushiswapLiquidityPositionSnapshotsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_liquidity_positions_snapshots_historical import DappsUniswapv2LiquidityPositionsSnapshotsHistorical
from openapi_client.apis.paths.dapps_curve_lp_tokens_historical import DappsCurveLpTokensHistorical
from openapi_client.apis.paths.dapps_uniswapv3_mints_historical import DappsUniswapv3MintsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_mints_historical import DappsUniswapv2MintsHistorical
from openapi_client.apis.paths.dapps_sushiswap_mints_historical import DappsSushiswapMintsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_mints_current import DappsUniswapv3MintsCurrent
from openapi_client.apis.paths.dapps_dex_orders_historical import DappsDexOrdersHistorical
from openapi_client.apis.paths.dapps_cow_orders_historical import DappsCowOrdersHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pools_historical import DappsUniswapv3PoolsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pools_historical import DappsUniswapv2PoolsHistorical
from openapi_client.apis.paths.dapps_sushiswap_pools_historical import DappsSushiswapPoolsHistorical
from openapi_client.apis.paths.dapps_curve_pools_historical import DappsCurvePoolsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pools_current import DappsUniswapv3PoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_pools_current import DappsUniswapv2PoolsCurrent
from openapi_client.apis.paths.dapps_sushiswap_pools_current import DappsSushiswapPoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_historical import DappsUniswapv3PoolsDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pools_day_data_historical import DappsUniswapv2PoolsDayDataHistorical
from openapi_client.apis.paths.dapps_sushiswap_pools_day_data_historical import DappsSushiswapPoolsDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_current import DappsUniswapv3PoolsDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_historical import DappsUniswapv3PoolsHourDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pools_hour_data_historical import DappsUniswapv2PoolsHourDataHistorical
from openapi_client.apis.paths.dapps_sushiswap_pools_hour_data_historical import DappsSushiswapPoolsHourDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_current import DappsUniswapv3PoolsHourDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_historical import DappsUniswapv3PositionsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_positions_current import DappsUniswapv3PositionsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_position_snapshots_current import DappsUniswapv3PositionSnapshotsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_snapshots_historical import DappsUniswapv3PositionsSnapshotsHistorical
from openapi_client.apis.paths.dapps_dex_prices_historical import DappsDexPricesHistorical
from openapi_client.apis.paths.dapps_curve_proposals_historical import DappsCurveProposalsHistorical
from openapi_client.apis.paths.dapps_curve_proposals_votes_historical import DappsCurveProposalsVotesHistorical
from openapi_client.apis.paths.dapps_curve_remove_liquidity_events_historical import DappsCurveRemoveLiquidityEventsHistorical
from openapi_client.apis.paths.dapps_curve_remove_liquidity_one_events_historical import DappsCurveRemoveLiquidityOneEventsHistorical
from openapi_client.apis.paths.dapps_cow_settlements_historical import DappsCowSettlementsHistorical
from openapi_client.apis.paths.dapps_dex_solutions_historical import DappsDexSolutionsHistorical
from openapi_client.apis.paths.dapps_dex_stats_historical import DappsDexStatsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_swaps_historical import DappsUniswapv3SwapsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_swaps_historical import DappsUniswapv2SwapsHistorical
from openapi_client.apis.paths.dapps_sushiswap_swaps_historical import DappsSushiswapSwapsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_swaps_current import DappsUniswapv3SwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_swaps_current import DappsUniswapv2SwapsCurrent
from openapi_client.apis.paths.dapps_sushiswap_swaps_current import DappsSushiswapSwapsCurrent
from openapi_client.apis.paths.dapps_curve_system_states_historical import DappsCurveSystemStatesHistorical
from openapi_client.apis.paths.dapps_uniswapv3_ticks_historical import DappsUniswapv3TicksHistorical
from openapi_client.apis.paths.dapps_uniswapv3_ticks_current import DappsUniswapv3TicksCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_historical import DappsUniswapv3TicksDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_current import DappsUniswapv3TicksDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_historical import DappsUniswapv3TokensHistorical
from openapi_client.apis.paths.dapps_uniswapv2_tokens_historical import DappsUniswapv2TokensHistorical
from openapi_client.apis.paths.dapps_sushiswap_tokens_historical import DappsSushiswapTokensHistorical
from openapi_client.apis.paths.dapps_dex_tokens_historical import DappsDexTokensHistorical
from openapi_client.apis.paths.dapps_curve_tokens_historical import DappsCurveTokensHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokens_current import DappsUniswapv3TokensCurrent
from openapi_client.apis.paths.dapps_uniswapv2_tokens_current import DappsUniswapv2TokensCurrent
from openapi_client.apis.paths.dapps_sushiswap_tokens_current import DappsSushiswapTokensCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_historical import DappsUniswapv3TokensDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_tokens_day_data_historical import DappsUniswapv2TokensDayDataHistorical
from openapi_client.apis.paths.dapps_sushiswap_tokens_day_data_historical import DappsSushiswapTokensDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_current import DappsUniswapv3TokensDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_historical import DappsUniswapv3TokensHourDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_current import DappsUniswapv3TokensHourDataCurrent
from openapi_client.apis.paths.dapps_dex_trades_historical import DappsDexTradesHistorical
from openapi_client.apis.paths.dapps_sushiswap_trades_current import DappsSushiswapTradesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_transactions_historical import DappsUniswapv3TransactionsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_transactions_historical import DappsUniswapv2TransactionsHistorical
from openapi_client.apis.paths.dapps_sushiswap_transactions_historical import DappsSushiswapTransactionsHistorical
from openapi_client.apis.paths.dapps_curve_transfer_ownership_events_historical import DappsCurveTransferOwnershipEventsHistorical
from openapi_client.apis.paths.dapps_curve_underlying_coins_historical import DappsCurveUnderlyingCoinsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_day_data_historical import DappsUniswapv3DayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_day_data_historical import DappsUniswapv2DayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_day_data_current import DappsUniswapv3DayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv2_users_historical import DappsUniswapv2UsersHistorical
from openapi_client.apis.paths.dapps_sushiswap_users_historical import DappsSushiswapUsersHistorical
from openapi_client.apis.paths.dapps_dex_users_historical import DappsDexUsersHistorical
from openapi_client.apis.paths.dapps_cow_users_historical import DappsCowUsersHistorical
from openapi_client.apis.paths.dapps_curve_voting_apps_historical import DappsCurveVotingAppsHistorical
from openapi_client.apis.paths.dapps_curve_weekly_volumes_historical import DappsCurveWeeklyVolumesHistorical
from openapi_client.apis.paths.dapps_dex_withdraws_historical import DappsDexWithdrawsHistorical
from openapi_client.apis.paths.dapps_dex_withdraws_requests_historical import DappsDexWithdrawsRequestsHistorical

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.DAPPS_COW_TOKENS_HISTORICAL: DappsCowTokensHistorical,
        PathValues.DAPPS_COW_TRADES_HISTORICAL: DappsCowTradesHistorical,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICAL: DappsCurveAccountsHistorical,
        PathValues.DAPPS_CURVE_ADD_LIQUIDITY_EVENTS_HISTORICAL: DappsCurveAddLiquidityEventsHistorical,
        PathValues.DAPPS_CURVE_ADMIN_FEE_CHANGE_LOGS_HISTORICAL: DappsCurveAdminFeeChangeLogsHistorical,
        PathValues.DAPPS_CURVE_AMPLIFICATION_COEFF_CHANGE_LOGS_HISTORICAL: DappsCurveAmplificationCoeffChangeLogsHistorical,
        PathValues.DAPPS_DEX_BATCHES_HISTORICAL: DappsDexBatchesHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_HISTORICAL: DappsUniswapv3BundlesHistorical,
        PathValues.DAPPS_UNISWAPV2_BUNDLES_HISTORICAL: DappsUniswapv2BundlesHistorical,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: DappsSushiswapBundlesHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_HISTORICAL: DappsUniswapv3BurnsHistorical,
        PathValues.DAPPS_UNISWAPV2_BURNS_HISTORICAL: DappsUniswapv2BurnsHistorical,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICAL: DappsSushiswapBurnsHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_CURVE_COINS_HISTORICAL: DappsCurveCoinsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICAL: DappsCurveContractsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_VERSIONS_HISTORICAL: DappsCurveContractsVersionsHistorical,
        PathValues.DAPPS_CURVE_DAILY_VOLUMES_HISTORICAL: DappsCurveDailyVolumesHistorical,
        PathValues.DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL: DappsSushiswapDayDataHistorical,
        PathValues.DAPPS_DEX_DEPOSITS_HISTORICAL: DappsDexDepositsHistorical,
        PathValues.DAPPS_CURVE_EXCHANGES_HISTORICAL: DappsCurveExchangesHistorical,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_HISTORICAL: DappsUniswapv3FactoryHistorical,
        PathValues.DAPPS_UNISWAPV2_FACTORY_HISTORICAL: DappsUniswapv2FactoryHistorical,
        PathValues.DAPPS_SUSHISWAP_FACTORY_HISTORICAL: DappsSushiswapFactoryHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_CURVE_FEE_CHANGE_LOGS_HISTORICAL: DappsCurveFeeChangeLogsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_HISTORICAL: DappsCurveGaugesHistorical,
        PathValues.DAPPS_CURVE_GAUGES_DEPOSITS_HISTORICAL: DappsCurveGaugesDepositsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_LIQUIDITY_HISTORICAL: DappsCurveGaugesLiquidityHistorical,
        PathValues.DAPPS_CURVE_GAUGES_TOTAL_WEIGHTS_HISTORICAL: DappsCurveGaugesTotalWeightsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_HISTORICAL: DappsCurveGaugesTypesHistorical,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_WEIGHTS_HISTORICAL: DappsCurveGaugesTypesWeightsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_HISTORICAL: DappsCurveGaugesWeightsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_VOTES_HISTORICAL: DappsCurveGaugesWeightsVotesHistorical,
        PathValues.DAPPS_CURVE_GAUGES_WITHDRAWS_HISTORICAL: DappsCurveGaugesWithdrawsHistorical,
        PathValues.DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL: DappsSushiswapHourDataHistorical,
        PathValues.DAPPS_CURVE_HOURLY_VOLUMES_HISTORICAL: DappsCurveHourlyVolumesHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL: DappsSushiswapLiquidityPositionHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_HISTORICAL: DappsUniswapv2LiquidityPositionsHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: DappsSushiswapLiquidityPositionSnapshotsHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_SNAPSHOTS_HISTORICAL: DappsUniswapv2LiquidityPositionsSnapshotsHistorical,
        PathValues.DAPPS_CURVE_LP_TOKENS_HISTORICAL: DappsCurveLpTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_HISTORICAL: DappsUniswapv3MintsHistorical,
        PathValues.DAPPS_UNISWAPV2_MINTS_HISTORICAL: DappsUniswapv2MintsHistorical,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICAL: DappsSushiswapMintsHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_DEX_ORDERS_HISTORICAL: DappsDexOrdersHistorical,
        PathValues.DAPPS_COW_ORDERS_HISTORICAL: DappsCowOrdersHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_HISTORICAL: DappsUniswapv3PoolsHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_HISTORICAL: DappsUniswapv2PoolsHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_HISTORICAL: DappsSushiswapPoolsHistorical,
        PathValues.DAPPS_CURVE_POOLS_HISTORICAL: DappsCurvePoolsHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_HISTORICAL: DappsUniswapv3PoolsDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_DAY_DATA_HISTORICAL: DappsUniswapv2PoolsDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_DAY_DATA_HISTORICAL: DappsSushiswapPoolsDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_HISTORICAL: DappsUniswapv3PoolsHourDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_HOUR_DATA_HISTORICAL: DappsUniswapv2PoolsHourDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_HOUR_DATA_HISTORICAL: DappsSushiswapPoolsHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_HISTORICAL: DappsUniswapv3PositionsHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_SNAPSHOTS_HISTORICAL: DappsUniswapv3PositionsSnapshotsHistorical,
        PathValues.DAPPS_DEX_PRICES_HISTORICAL: DappsDexPricesHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICAL: DappsCurveProposalsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_VOTES_HISTORICAL: DappsCurveProposalsVotesHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_EVENTS_HISTORICAL: DappsCurveRemoveLiquidityEventsHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_ONE_EVENTS_HISTORICAL: DappsCurveRemoveLiquidityOneEventsHistorical,
        PathValues.DAPPS_COW_SETTLEMENTS_HISTORICAL: DappsCowSettlementsHistorical,
        PathValues.DAPPS_DEX_SOLUTIONS_HISTORICAL: DappsDexSolutionsHistorical,
        PathValues.DAPPS_DEX_STATS_HISTORICAL: DappsDexStatsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_HISTORICAL: DappsUniswapv3SwapsHistorical,
        PathValues.DAPPS_UNISWAPV2_SWAPS_HISTORICAL: DappsUniswapv2SwapsHistorical,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICAL: DappsSushiswapSwapsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_CURVE_SYSTEM_STATES_HISTORICAL: DappsCurveSystemStatesHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_HISTORICAL: DappsUniswapv3TicksHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_HISTORICAL: DappsUniswapv3TicksDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HISTORICAL: DappsUniswapv3TokensHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENS_HISTORICAL: DappsUniswapv2TokensHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICAL: DappsSushiswapTokensHistorical,
        PathValues.DAPPS_DEX_TOKENS_HISTORICAL: DappsDexTokensHistorical,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICAL: DappsCurveTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_HISTORICAL: DappsUniswapv3TokensDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENS_DAY_DATA_HISTORICAL: DappsUniswapv2TokensDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_DAY_DATA_HISTORICAL: DappsSushiswapTokensDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_HISTORICAL: DappsUniswapv3TokensHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_DEX_TRADES_HISTORICAL: DappsDexTradesHistorical,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL: DappsUniswapv3TransactionsHistorical,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL: DappsUniswapv2TransactionsHistorical,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: DappsSushiswapTransactionsHistorical,
        PathValues.DAPPS_CURVE_TRANSFER_OWNERSHIP_EVENTS_HISTORICAL: DappsCurveTransferOwnershipEventsHistorical,
        PathValues.DAPPS_CURVE_UNDERLYING_COINS_HISTORICAL: DappsCurveUnderlyingCoinsHistorical,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL: DappsUniswapv3DayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL: DappsUniswapv2DayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_USERS_HISTORICAL: DappsUniswapv2UsersHistorical,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICAL: DappsSushiswapUsersHistorical,
        PathValues.DAPPS_DEX_USERS_HISTORICAL: DappsDexUsersHistorical,
        PathValues.DAPPS_COW_USERS_HISTORICAL: DappsCowUsersHistorical,
        PathValues.DAPPS_CURVE_VOTING_APPS_HISTORICAL: DappsCurveVotingAppsHistorical,
        PathValues.DAPPS_CURVE_WEEKLY_VOLUMES_HISTORICAL: DappsCurveWeeklyVolumesHistorical,
        PathValues.DAPPS_DEX_WITHDRAWS_HISTORICAL: DappsDexWithdrawsHistorical,
        PathValues.DAPPS_DEX_WITHDRAWS_REQUESTS_HISTORICAL: DappsDexWithdrawsRequestsHistorical,
    }
)

path_to_api = PathToApi(
    {
        PathValues.DAPPS_COW_TOKENS_HISTORICAL: DappsCowTokensHistorical,
        PathValues.DAPPS_COW_TRADES_HISTORICAL: DappsCowTradesHistorical,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICAL: DappsCurveAccountsHistorical,
        PathValues.DAPPS_CURVE_ADD_LIQUIDITY_EVENTS_HISTORICAL: DappsCurveAddLiquidityEventsHistorical,
        PathValues.DAPPS_CURVE_ADMIN_FEE_CHANGE_LOGS_HISTORICAL: DappsCurveAdminFeeChangeLogsHistorical,
        PathValues.DAPPS_CURVE_AMPLIFICATION_COEFF_CHANGE_LOGS_HISTORICAL: DappsCurveAmplificationCoeffChangeLogsHistorical,
        PathValues.DAPPS_DEX_BATCHES_HISTORICAL: DappsDexBatchesHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_HISTORICAL: DappsUniswapv3BundlesHistorical,
        PathValues.DAPPS_UNISWAPV2_BUNDLES_HISTORICAL: DappsUniswapv2BundlesHistorical,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: DappsSushiswapBundlesHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_HISTORICAL: DappsUniswapv3BurnsHistorical,
        PathValues.DAPPS_UNISWAPV2_BURNS_HISTORICAL: DappsUniswapv2BurnsHistorical,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICAL: DappsSushiswapBurnsHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_CURVE_COINS_HISTORICAL: DappsCurveCoinsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICAL: DappsCurveContractsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_VERSIONS_HISTORICAL: DappsCurveContractsVersionsHistorical,
        PathValues.DAPPS_CURVE_DAILY_VOLUMES_HISTORICAL: DappsCurveDailyVolumesHistorical,
        PathValues.DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL: DappsSushiswapDayDataHistorical,
        PathValues.DAPPS_DEX_DEPOSITS_HISTORICAL: DappsDexDepositsHistorical,
        PathValues.DAPPS_CURVE_EXCHANGES_HISTORICAL: DappsCurveExchangesHistorical,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_HISTORICAL: DappsUniswapv3FactoryHistorical,
        PathValues.DAPPS_UNISWAPV2_FACTORY_HISTORICAL: DappsUniswapv2FactoryHistorical,
        PathValues.DAPPS_SUSHISWAP_FACTORY_HISTORICAL: DappsSushiswapFactoryHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_CURVE_FEE_CHANGE_LOGS_HISTORICAL: DappsCurveFeeChangeLogsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_HISTORICAL: DappsCurveGaugesHistorical,
        PathValues.DAPPS_CURVE_GAUGES_DEPOSITS_HISTORICAL: DappsCurveGaugesDepositsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_LIQUIDITY_HISTORICAL: DappsCurveGaugesLiquidityHistorical,
        PathValues.DAPPS_CURVE_GAUGES_TOTAL_WEIGHTS_HISTORICAL: DappsCurveGaugesTotalWeightsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_HISTORICAL: DappsCurveGaugesTypesHistorical,
        PathValues.DAPPS_CURVE_GAUGES_TYPES_WEIGHTS_HISTORICAL: DappsCurveGaugesTypesWeightsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_HISTORICAL: DappsCurveGaugesWeightsHistorical,
        PathValues.DAPPS_CURVE_GAUGES_WEIGHTS_VOTES_HISTORICAL: DappsCurveGaugesWeightsVotesHistorical,
        PathValues.DAPPS_CURVE_GAUGES_WITHDRAWS_HISTORICAL: DappsCurveGaugesWithdrawsHistorical,
        PathValues.DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL: DappsSushiswapHourDataHistorical,
        PathValues.DAPPS_CURVE_HOURLY_VOLUMES_HISTORICAL: DappsCurveHourlyVolumesHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL: DappsSushiswapLiquidityPositionHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_HISTORICAL: DappsUniswapv2LiquidityPositionsHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: DappsSushiswapLiquidityPositionSnapshotsHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITIONS_SNAPSHOTS_HISTORICAL: DappsUniswapv2LiquidityPositionsSnapshotsHistorical,
        PathValues.DAPPS_CURVE_LP_TOKENS_HISTORICAL: DappsCurveLpTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_HISTORICAL: DappsUniswapv3MintsHistorical,
        PathValues.DAPPS_UNISWAPV2_MINTS_HISTORICAL: DappsUniswapv2MintsHistorical,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICAL: DappsSushiswapMintsHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_DEX_ORDERS_HISTORICAL: DappsDexOrdersHistorical,
        PathValues.DAPPS_COW_ORDERS_HISTORICAL: DappsCowOrdersHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_HISTORICAL: DappsUniswapv3PoolsHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_HISTORICAL: DappsUniswapv2PoolsHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_HISTORICAL: DappsSushiswapPoolsHistorical,
        PathValues.DAPPS_CURVE_POOLS_HISTORICAL: DappsCurvePoolsHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_HISTORICAL: DappsUniswapv3PoolsDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_DAY_DATA_HISTORICAL: DappsUniswapv2PoolsDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_DAY_DATA_HISTORICAL: DappsSushiswapPoolsDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_HISTORICAL: DappsUniswapv3PoolsHourDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_HOUR_DATA_HISTORICAL: DappsUniswapv2PoolsHourDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_HOUR_DATA_HISTORICAL: DappsSushiswapPoolsHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_HISTORICAL: DappsUniswapv3PositionsHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_SNAPSHOTS_HISTORICAL: DappsUniswapv3PositionsSnapshotsHistorical,
        PathValues.DAPPS_DEX_PRICES_HISTORICAL: DappsDexPricesHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICAL: DappsCurveProposalsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_VOTES_HISTORICAL: DappsCurveProposalsVotesHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_EVENTS_HISTORICAL: DappsCurveRemoveLiquidityEventsHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_ONE_EVENTS_HISTORICAL: DappsCurveRemoveLiquidityOneEventsHistorical,
        PathValues.DAPPS_COW_SETTLEMENTS_HISTORICAL: DappsCowSettlementsHistorical,
        PathValues.DAPPS_DEX_SOLUTIONS_HISTORICAL: DappsDexSolutionsHistorical,
        PathValues.DAPPS_DEX_STATS_HISTORICAL: DappsDexStatsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_HISTORICAL: DappsUniswapv3SwapsHistorical,
        PathValues.DAPPS_UNISWAPV2_SWAPS_HISTORICAL: DappsUniswapv2SwapsHistorical,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICAL: DappsSushiswapSwapsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_CURVE_SYSTEM_STATES_HISTORICAL: DappsCurveSystemStatesHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_HISTORICAL: DappsUniswapv3TicksHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_HISTORICAL: DappsUniswapv3TicksDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HISTORICAL: DappsUniswapv3TokensHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENS_HISTORICAL: DappsUniswapv2TokensHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICAL: DappsSushiswapTokensHistorical,
        PathValues.DAPPS_DEX_TOKENS_HISTORICAL: DappsDexTokensHistorical,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICAL: DappsCurveTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_HISTORICAL: DappsUniswapv3TokensDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENS_DAY_DATA_HISTORICAL: DappsUniswapv2TokensDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_DAY_DATA_HISTORICAL: DappsSushiswapTokensDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_HISTORICAL: DappsUniswapv3TokensHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_DEX_TRADES_HISTORICAL: DappsDexTradesHistorical,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL: DappsUniswapv3TransactionsHistorical,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL: DappsUniswapv2TransactionsHistorical,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: DappsSushiswapTransactionsHistorical,
        PathValues.DAPPS_CURVE_TRANSFER_OWNERSHIP_EVENTS_HISTORICAL: DappsCurveTransferOwnershipEventsHistorical,
        PathValues.DAPPS_CURVE_UNDERLYING_COINS_HISTORICAL: DappsCurveUnderlyingCoinsHistorical,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL: DappsUniswapv3DayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL: DappsUniswapv2DayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_USERS_HISTORICAL: DappsUniswapv2UsersHistorical,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICAL: DappsSushiswapUsersHistorical,
        PathValues.DAPPS_DEX_USERS_HISTORICAL: DappsDexUsersHistorical,
        PathValues.DAPPS_COW_USERS_HISTORICAL: DappsCowUsersHistorical,
        PathValues.DAPPS_CURVE_VOTING_APPS_HISTORICAL: DappsCurveVotingAppsHistorical,
        PathValues.DAPPS_CURVE_WEEKLY_VOLUMES_HISTORICAL: DappsCurveWeeklyVolumesHistorical,
        PathValues.DAPPS_DEX_WITHDRAWS_HISTORICAL: DappsDexWithdrawsHistorical,
        PathValues.DAPPS_DEX_WITHDRAWS_REQUESTS_HISTORICAL: DappsDexWithdrawsRequestsHistorical,
    }
)
