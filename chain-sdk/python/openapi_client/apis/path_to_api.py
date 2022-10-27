import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.dapps_sushiswap_swaps_current import DappsSushiswapSwapsCurrent
from openapi_client.apis.paths.dapps_curve_accounts_historical import DappsCurveAccountsHistorical
from openapi_client.apis.paths.dapps_curve_add_liquidity_event_historical import DappsCurveAddLiquidityEventHistorical
from openapi_client.apis.paths.dapps_curve_admin_fee_change_log_historical import DappsCurveAdminFeeChangeLogHistorical
from openapi_client.apis.paths.dapps_curve_amplification_coeff_change_log_historical import DappsCurveAmplificationCoeffChangeLogHistorical
from openapi_client.apis.paths.dapps_dex_batch_historical import DappsDexBatchHistorical
from openapi_client.apis.paths.dapps_uniswapv3_bundle_current import DappsUniswapv3BundleCurrent
from openapi_client.apis.paths.dapps_uniswapv3_bundles_historical import DappsUniswapv3BundlesHistorical
from openapi_client.apis.paths.dapps_uniswapv2_bundles_historical import DappsUniswapv2BundlesHistorical
from openapi_client.apis.paths.dapps_sushiswap_bundles_historical import DappsSushiswapBundlesHistorical
from openapi_client.apis.paths.dapps_uniswapv3_burns_historical import DappsUniswapv3BurnsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_burns_historical import DappsUniswapv2BurnsHistorical
from openapi_client.apis.paths.dapps_sushiswap_burns_historical import DappsSushiswapBurnsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_burns_current import DappsUniswapv3BurnsCurrent
from openapi_client.apis.paths.dapps_curve_coins_historical import DappsCurveCoinsHistorical
from openapi_client.apis.paths.dapps_curve_contracts_historical import DappsCurveContractsHistorical
from openapi_client.apis.paths.dapps_curve_contracts_version_historical import DappsCurveContractsVersionHistorical
from openapi_client.apis.paths.dapps_curve_daily_volume_historical import DappsCurveDailyVolumeHistorical
from openapi_client.apis.paths.dapps_sushiswap_day_data_historical import DappsSushiswapDayDataHistorical
from openapi_client.apis.paths.dapps_dex_tokens_historical import DappsDexTokensHistorical
from openapi_client.apis.paths.dapps_uniswapv3_factory_historical import DappsUniswapv3FactoryHistorical
from openapi_client.apis.paths.dapps_uniswapv2_factory_historical import DappsUniswapv2FactoryHistorical
from openapi_client.apis.paths.dapps_sushiswap_factory_historical import DappsSushiswapFactoryHistorical
from openapi_client.apis.paths.dapps_uniswapv3_factory_current import DappsUniswapv3FactoryCurrent
from openapi_client.apis.paths.dapps_curve_fee_change_log_historical import DappsCurveFeeChangeLogHistorical
from openapi_client.apis.paths.dapps_curve_gauge_historical import DappsCurveGaugeHistorical
from openapi_client.apis.paths.dapps_curve_gauge_deposit_historical import DappsCurveGaugeDepositHistorical
from openapi_client.apis.paths.dapps_curve_gauge_liquidity_historical import DappsCurveGaugeLiquidityHistorical
from openapi_client.apis.paths.dapps_curve_gauge_total_weight_historical import DappsCurveGaugeTotalWeightHistorical
from openapi_client.apis.paths.dapps_curve_gauge_type_historical import DappsCurveGaugeTypeHistorical
from openapi_client.apis.paths.dapps_curve_gauge_type_weight_historical import DappsCurveGaugeTypeWeightHistorical
from openapi_client.apis.paths.dapps_curve_gauge_weight_historical import DappsCurveGaugeWeightHistorical
from openapi_client.apis.paths.dapps_curve_gauge_weight_vote_historical import DappsCurveGaugeWeightVoteHistorical
from openapi_client.apis.paths.dapps_curve_gauge_withdraw_historical import DappsCurveGaugeWithdrawHistorical
from openapi_client.apis.paths.dapps_sushiswap_hour_data_historical import DappsSushiswapHourDataHistorical
from openapi_client.apis.paths.dapps_curve_hourly_volume_historical import DappsCurveHourlyVolumeHistorical
from openapi_client.apis.paths.dapps_uniswapv2_liquidity_position_historical import DappsUniswapv2LiquidityPositionHistorical
from openapi_client.apis.paths.dapps_sushiswap_liquidity_position_historical import DappsSushiswapLiquidityPositionHistorical
from openapi_client.apis.paths.dapps_uniswapv2_liquidity_position_snapshots_historical import DappsUniswapv2LiquidityPositionSnapshotsHistorical
from openapi_client.apis.paths.dapps_sushiswap_liquidity_position_snapshots_historical import DappsSushiswapLiquidityPositionSnapshotsHistorical
from openapi_client.apis.paths.dapps_curve_lp_token_historical import DappsCurveLpTokenHistorical
from openapi_client.apis.paths.dapps_uniswapv3_mints_historical import DappsUniswapv3MintsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_mints_historical import DappsUniswapv2MintsHistorical
from openapi_client.apis.paths.dapps_sushiswap_mints_historical import DappsSushiswapMintsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_mints_current import DappsUniswapv3MintsCurrent
from openapi_client.apis.paths.dapps_dex_orders_historical import DappsDexOrdersHistorical
from openapi_client.apis.paths.dapps_cow_orders_historical import DappsCowOrdersHistorical
from openapi_client.apis.paths.dapps_uniswapv3_poi_historical import DappsUniswapv3PoiHistorical
from openapi_client.apis.paths.dapps_uniswapv2_poi_historical import DappsUniswapv2PoiHistorical
from openapi_client.apis.paths.dapps_sushiswap_poi_historical import DappsSushiswapPoiHistorical
from openapi_client.apis.paths.dapps_dex_poi_historical import DappsDexPoiHistorical
from openapi_client.apis.paths.dapps_curve_poi_historical import DappsCurvePoiHistorical
from openapi_client.apis.paths.dapps_cow_poi_historical import DappsCowPoiHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pool_day_data_historical import DappsUniswapv3PoolDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pool_day_data_historical import DappsUniswapv2PoolDayDataHistorical
from openapi_client.apis.paths.dapps_sushiswap_pool_day_data_historical import DappsSushiswapPoolDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pool_hour_data_historical import DappsUniswapv3PoolHourDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pool_hour_data_historical import DappsUniswapv2PoolHourDataHistorical
from openapi_client.apis.paths.dapps_sushiswap_pool_hour_data_historical import DappsSushiswapPoolHourDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pools_historical import DappsUniswapv3PoolsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_pools_historical import DappsUniswapv2PoolsHistorical
from openapi_client.apis.paths.dapps_sushiswap_pools_historical import DappsSushiswapPoolsHistorical
from openapi_client.apis.paths.dapps_curve_pools_historical import DappsCurvePoolsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_pools_current import DappsUniswapv3PoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_pools_current import DappsUniswapv2PoolsCurrent
from openapi_client.apis.paths.dapps_sushiswap_pools_current import DappsSushiswapPoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_current import DappsUniswapv3PoolsDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_current import DappsUniswapv3PoolsHourDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_historical import DappsUniswapv3PositionsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_positions_current import DappsUniswapv3PositionsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_position_snapshot_historical import DappsUniswapv3PositionSnapshotHistorical
from openapi_client.apis.paths.dapps_uniswapv3_position_snapshots_current import DappsUniswapv3PositionSnapshotsCurrent
from openapi_client.apis.paths.dapps_dex_prices_historical import DappsDexPricesHistorical
from openapi_client.apis.paths.dapps_curve_proposals_historical import DappsCurveProposalsHistorical
from openapi_client.apis.paths.dapps_curve_proposals_vote_historical import DappsCurveProposalsVoteHistorical
from openapi_client.apis.paths.dapps_curve_remove_liquidity_event_historical import DappsCurveRemoveLiquidityEventHistorical
from openapi_client.apis.paths.dapps_curve_remove_liquidity_one_event_historical import DappsCurveRemoveLiquidityOneEventHistorical
from openapi_client.apis.paths.dapps_cow_settlement_historical import DappsCowSettlementHistorical
from openapi_client.apis.paths.dapps_dex_solution_historical import DappsDexSolutionHistorical
from openapi_client.apis.paths.dapps_dex_stats_historical import DappsDexStatsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_swaps_historical import DappsUniswapv3SwapsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_swaps_historical import DappsUniswapv2SwapsHistorical
from openapi_client.apis.paths.dapps_sushiswap_swaps_historical import DappsSushiswapSwapsHistorical
from openapi_client.apis.paths.dapps_curve_swaps_historical import DappsCurveSwapsHistorical
from openapi_client.apis.paths.dapps_uniswapv3_swaps_current import DappsUniswapv3SwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_swaps_current import DappsUniswapv2SwapsCurrent
from openapi_client.apis.paths.dapps_curve_system_state_historical import DappsCurveSystemStateHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tick_day_data_historical import DappsUniswapv3TickDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_ticks_historical import DappsUniswapv3TicksHistorical
from openapi_client.apis.paths.dapps_uniswapv3_ticks_current import DappsUniswapv3TicksCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_current import DappsUniswapv3TicksDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_token_day_data_historical import DappsUniswapv3TokenDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_token_day_data_historical import DappsUniswapv2TokenDayDataHistorical
from openapi_client.apis.paths.dapps_sushiswap_token_day_data_historical import DappsSushiswapTokenDayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_token_hour_data_historical import DappsUniswapv3TokenHourDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokens_historical import DappsUniswapv3TokensHistorical
from openapi_client.apis.paths.dapps_uniswapv2_tokens_historical import DappsUniswapv2TokensHistorical
from openapi_client.apis.paths.dapps_sushiswap_tokens_historical import DappsSushiswapTokensHistorical
from openapi_client.apis.paths.dapps_curve_tokens_historical import DappsCurveTokensHistorical
from openapi_client.apis.paths.dapps_cow_tokens_historical import DappsCowTokensHistorical
from openapi_client.apis.paths.dapps_uniswapv3_tokens_current import DappsUniswapv3TokensCurrent
from openapi_client.apis.paths.dapps_uniswapv2_tokens_current import DappsUniswapv2TokensCurrent
from openapi_client.apis.paths.dapps_sushiswap_tokens_current import DappsSushiswapTokensCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_current import DappsUniswapv3TokensDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_current import DappsUniswapv3TokensHourDataCurrent
from openapi_client.apis.paths.dapps_dex_trades_historical import DappsDexTradesHistorical
from openapi_client.apis.paths.dapps_cow_trades_historical import DappsCowTradesHistorical
from openapi_client.apis.paths.dapps_uniswapv3_transactions_historical import DappsUniswapv3TransactionsHistorical
from openapi_client.apis.paths.dapps_uniswapv2_transactions_historical import DappsUniswapv2TransactionsHistorical
from openapi_client.apis.paths.dapps_sushiswap_transactions_historical import DappsSushiswapTransactionsHistorical
from openapi_client.apis.paths.dapps_curve_transfer_ownership_event_historical import DappsCurveTransferOwnershipEventHistorical
from openapi_client.apis.paths.dapps_curve_underlying_coin_historical import DappsCurveUnderlyingCoinHistorical
from openapi_client.apis.paths.dapps_uniswapv3_day_data_historical import DappsUniswapv3DayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv2_day_data_historical import DappsUniswapv2DayDataHistorical
from openapi_client.apis.paths.dapps_uniswapv3_uniswap_day_data_current import DappsUniswapv3UniswapDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv2_users_historical import DappsUniswapv2UsersHistorical
from openapi_client.apis.paths.dapps_sushiswap_users_historical import DappsSushiswapUsersHistorical
from openapi_client.apis.paths.dapps_dex_users_historical import DappsDexUsersHistorical
from openapi_client.apis.paths.dapps_cow_users_historical import DappsCowUsersHistorical
from openapi_client.apis.paths.dapps_curve_voting_app_historical import DappsCurveVotingAppHistorical
from openapi_client.apis.paths.dapps_curve_weekly_volume_historical import DappsCurveWeeklyVolumeHistorical
from openapi_client.apis.paths.dapps_dex_withdraw_historical import DappsDexWithdrawHistorical
from openapi_client.apis.paths.dapps_dex_withdraw_request_historical import DappsDexWithdrawRequestHistorical

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICAL: DappsCurveAccountsHistorical,
        PathValues.DAPPS_CURVE_ADD_LIQUIDITY_EVENT_HISTORICAL: DappsCurveAddLiquidityEventHistorical,
        PathValues.DAPPS_CURVE_ADMIN_FEE_CHANGE_LOG_HISTORICAL: DappsCurveAdminFeeChangeLogHistorical,
        PathValues.DAPPS_CURVE_AMPLIFICATION_COEFF_CHANGE_LOG_HISTORICAL: DappsCurveAmplificationCoeffChangeLogHistorical,
        PathValues.DAPPS_DEX_BATCH_HISTORICAL: DappsDexBatchHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLE_CURRENT: DappsUniswapv3BundleCurrent,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_HISTORICAL: DappsUniswapv3BundlesHistorical,
        PathValues.DAPPS_UNISWAPV2_BUNDLES_HISTORICAL: DappsUniswapv2BundlesHistorical,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: DappsSushiswapBundlesHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNS_HISTORICAL: DappsUniswapv3BurnsHistorical,
        PathValues.DAPPS_UNISWAPV2_BURNS_HISTORICAL: DappsUniswapv2BurnsHistorical,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICAL: DappsSushiswapBurnsHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_CURVE_COINS_HISTORICAL: DappsCurveCoinsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICAL: DappsCurveContractsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_VERSION_HISTORICAL: DappsCurveContractsVersionHistorical,
        PathValues.DAPPS_CURVE_DAILY_VOLUME_HISTORICAL: DappsCurveDailyVolumeHistorical,
        PathValues.DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL: DappsSushiswapDayDataHistorical,
        PathValues.DAPPS_DEX_TOKENS_HISTORICAL: DappsDexTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORY_HISTORICAL: DappsUniswapv3FactoryHistorical,
        PathValues.DAPPS_UNISWAPV2_FACTORY_HISTORICAL: DappsUniswapv2FactoryHistorical,
        PathValues.DAPPS_SUSHISWAP_FACTORY_HISTORICAL: DappsSushiswapFactoryHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_CURVE_FEE_CHANGE_LOG_HISTORICAL: DappsCurveFeeChangeLogHistorical,
        PathValues.DAPPS_CURVE_GAUGE_HISTORICAL: DappsCurveGaugeHistorical,
        PathValues.DAPPS_CURVE_GAUGE_DEPOSIT_HISTORICAL: DappsCurveGaugeDepositHistorical,
        PathValues.DAPPS_CURVE_GAUGE_LIQUIDITY_HISTORICAL: DappsCurveGaugeLiquidityHistorical,
        PathValues.DAPPS_CURVE_GAUGE_TOTAL_WEIGHT_HISTORICAL: DappsCurveGaugeTotalWeightHistorical,
        PathValues.DAPPS_CURVE_GAUGE_TYPE_HISTORICAL: DappsCurveGaugeTypeHistorical,
        PathValues.DAPPS_CURVE_GAUGE_TYPE_WEIGHT_HISTORICAL: DappsCurveGaugeTypeWeightHistorical,
        PathValues.DAPPS_CURVE_GAUGE_WEIGHT_HISTORICAL: DappsCurveGaugeWeightHistorical,
        PathValues.DAPPS_CURVE_GAUGE_WEIGHT_VOTE_HISTORICAL: DappsCurveGaugeWeightVoteHistorical,
        PathValues.DAPPS_CURVE_GAUGE_WITHDRAW_HISTORICAL: DappsCurveGaugeWithdrawHistorical,
        PathValues.DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL: DappsSushiswapHourDataHistorical,
        PathValues.DAPPS_CURVE_HOURLY_VOLUME_HISTORICAL: DappsCurveHourlyVolumeHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITION_HISTORICAL: DappsUniswapv2LiquidityPositionHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL: DappsSushiswapLiquidityPositionHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: DappsUniswapv2LiquidityPositionSnapshotsHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: DappsSushiswapLiquidityPositionSnapshotsHistorical,
        PathValues.DAPPS_CURVE_LP_TOKEN_HISTORICAL: DappsCurveLpTokenHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_HISTORICAL: DappsUniswapv3MintsHistorical,
        PathValues.DAPPS_UNISWAPV2_MINTS_HISTORICAL: DappsUniswapv2MintsHistorical,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICAL: DappsSushiswapMintsHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_DEX_ORDERS_HISTORICAL: DappsDexOrdersHistorical,
        PathValues.DAPPS_COW_ORDERS_HISTORICAL: DappsCowOrdersHistorical,
        PathValues.DAPPS_UNISWAPV3_POI_HISTORICAL: DappsUniswapv3PoiHistorical,
        PathValues.DAPPS_UNISWAPV2_POI_HISTORICAL: DappsUniswapv2PoiHistorical,
        PathValues.DAPPS_SUSHISWAP_POI_HISTORICAL: DappsSushiswapPoiHistorical,
        PathValues.DAPPS_DEX_POI_HISTORICAL: DappsDexPoiHistorical,
        PathValues.DAPPS_CURVE_POI_HISTORICAL: DappsCurvePoiHistorical,
        PathValues.DAPPS_COW_POI_HISTORICAL: DappsCowPoiHistorical,
        PathValues.DAPPS_UNISWAPV3_POOL_DAY_DATA_HISTORICAL: DappsUniswapv3PoolDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOL_DAY_DATA_HISTORICAL: DappsUniswapv2PoolDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOL_DAY_DATA_HISTORICAL: DappsSushiswapPoolDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOL_HOUR_DATA_HISTORICAL: DappsUniswapv3PoolHourDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOL_HOUR_DATA_HISTORICAL: DappsUniswapv2PoolHourDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOL_HOUR_DATA_HISTORICAL: DappsSushiswapPoolHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_HISTORICAL: DappsUniswapv3PoolsHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_HISTORICAL: DappsUniswapv2PoolsHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_HISTORICAL: DappsSushiswapPoolsHistorical,
        PathValues.DAPPS_CURVE_POOLS_HISTORICAL: DappsCurvePoolsHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_HISTORICAL: DappsUniswapv3PositionsHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOT_HISTORICAL: DappsUniswapv3PositionSnapshotHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_DEX_PRICES_HISTORICAL: DappsDexPricesHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICAL: DappsCurveProposalsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_VOTE_HISTORICAL: DappsCurveProposalsVoteHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_EVENT_HISTORICAL: DappsCurveRemoveLiquidityEventHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_ONE_EVENT_HISTORICAL: DappsCurveRemoveLiquidityOneEventHistorical,
        PathValues.DAPPS_COW_SETTLEMENT_HISTORICAL: DappsCowSettlementHistorical,
        PathValues.DAPPS_DEX_SOLUTION_HISTORICAL: DappsDexSolutionHistorical,
        PathValues.DAPPS_DEX_STATS_HISTORICAL: DappsDexStatsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_HISTORICAL: DappsUniswapv3SwapsHistorical,
        PathValues.DAPPS_UNISWAPV2_SWAPS_HISTORICAL: DappsUniswapv2SwapsHistorical,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICAL: DappsSushiswapSwapsHistorical,
        PathValues.DAPPS_CURVE_SWAPS_HISTORICAL: DappsCurveSwapsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_CURVE_SYSTEM_STATE_HISTORICAL: DappsCurveSystemStateHistorical,
        PathValues.DAPPS_UNISWAPV3_TICK_DAY_DATA_HISTORICAL: DappsUniswapv3TickDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_HISTORICAL: DappsUniswapv3TicksHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKEN_DAY_DATA_HISTORICAL: DappsUniswapv3TokenDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKEN_DAY_DATA_HISTORICAL: DappsUniswapv2TokenDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKEN_DAY_DATA_HISTORICAL: DappsSushiswapTokenDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKEN_HOUR_DATA_HISTORICAL: DappsUniswapv3TokenHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HISTORICAL: DappsUniswapv3TokensHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENS_HISTORICAL: DappsUniswapv2TokensHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICAL: DappsSushiswapTokensHistorical,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICAL: DappsCurveTokensHistorical,
        PathValues.DAPPS_COW_TOKENS_HISTORICAL: DappsCowTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_DEX_TRADES_HISTORICAL: DappsDexTradesHistorical,
        PathValues.DAPPS_COW_TRADES_HISTORICAL: DappsCowTradesHistorical,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL: DappsUniswapv3TransactionsHistorical,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL: DappsUniswapv2TransactionsHistorical,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: DappsSushiswapTransactionsHistorical,
        PathValues.DAPPS_CURVE_TRANSFER_OWNERSHIP_EVENT_HISTORICAL: DappsCurveTransferOwnershipEventHistorical,
        PathValues.DAPPS_CURVE_UNDERLYING_COIN_HISTORICAL: DappsCurveUnderlyingCoinHistorical,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL: DappsUniswapv3DayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL: DappsUniswapv2DayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_UNISWAP_DAY_DATA_CURRENT: DappsUniswapv3UniswapDayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_USERS_HISTORICAL: DappsUniswapv2UsersHistorical,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICAL: DappsSushiswapUsersHistorical,
        PathValues.DAPPS_DEX_USERS_HISTORICAL: DappsDexUsersHistorical,
        PathValues.DAPPS_COW_USERS_HISTORICAL: DappsCowUsersHistorical,
        PathValues.DAPPS_CURVE_VOTING_APP_HISTORICAL: DappsCurveVotingAppHistorical,
        PathValues.DAPPS_CURVE_WEEKLY_VOLUME_HISTORICAL: DappsCurveWeeklyVolumeHistorical,
        PathValues.DAPPS_DEX_WITHDRAW_HISTORICAL: DappsDexWithdrawHistorical,
        PathValues.DAPPS_DEX_WITHDRAW_REQUEST_HISTORICAL: DappsDexWithdrawRequestHistorical,
    }
)

path_to_api = PathToApi(
    {
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_CURVE_ACCOUNTS_HISTORICAL: DappsCurveAccountsHistorical,
        PathValues.DAPPS_CURVE_ADD_LIQUIDITY_EVENT_HISTORICAL: DappsCurveAddLiquidityEventHistorical,
        PathValues.DAPPS_CURVE_ADMIN_FEE_CHANGE_LOG_HISTORICAL: DappsCurveAdminFeeChangeLogHistorical,
        PathValues.DAPPS_CURVE_AMPLIFICATION_COEFF_CHANGE_LOG_HISTORICAL: DappsCurveAmplificationCoeffChangeLogHistorical,
        PathValues.DAPPS_DEX_BATCH_HISTORICAL: DappsDexBatchHistorical,
        PathValues.DAPPS_UNISWAPV3_BUNDLE_CURRENT: DappsUniswapv3BundleCurrent,
        PathValues.DAPPS_UNISWAPV3_BUNDLES_HISTORICAL: DappsUniswapv3BundlesHistorical,
        PathValues.DAPPS_UNISWAPV2_BUNDLES_HISTORICAL: DappsUniswapv2BundlesHistorical,
        PathValues.DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: DappsSushiswapBundlesHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNS_HISTORICAL: DappsUniswapv3BurnsHistorical,
        PathValues.DAPPS_UNISWAPV2_BURNS_HISTORICAL: DappsUniswapv2BurnsHistorical,
        PathValues.DAPPS_SUSHISWAP_BURNS_HISTORICAL: DappsSushiswapBurnsHistorical,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_CURVE_COINS_HISTORICAL: DappsCurveCoinsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_HISTORICAL: DappsCurveContractsHistorical,
        PathValues.DAPPS_CURVE_CONTRACTS_VERSION_HISTORICAL: DappsCurveContractsVersionHistorical,
        PathValues.DAPPS_CURVE_DAILY_VOLUME_HISTORICAL: DappsCurveDailyVolumeHistorical,
        PathValues.DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL: DappsSushiswapDayDataHistorical,
        PathValues.DAPPS_DEX_TOKENS_HISTORICAL: DappsDexTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORY_HISTORICAL: DappsUniswapv3FactoryHistorical,
        PathValues.DAPPS_UNISWAPV2_FACTORY_HISTORICAL: DappsUniswapv2FactoryHistorical,
        PathValues.DAPPS_SUSHISWAP_FACTORY_HISTORICAL: DappsSushiswapFactoryHistorical,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_CURVE_FEE_CHANGE_LOG_HISTORICAL: DappsCurveFeeChangeLogHistorical,
        PathValues.DAPPS_CURVE_GAUGE_HISTORICAL: DappsCurveGaugeHistorical,
        PathValues.DAPPS_CURVE_GAUGE_DEPOSIT_HISTORICAL: DappsCurveGaugeDepositHistorical,
        PathValues.DAPPS_CURVE_GAUGE_LIQUIDITY_HISTORICAL: DappsCurveGaugeLiquidityHistorical,
        PathValues.DAPPS_CURVE_GAUGE_TOTAL_WEIGHT_HISTORICAL: DappsCurveGaugeTotalWeightHistorical,
        PathValues.DAPPS_CURVE_GAUGE_TYPE_HISTORICAL: DappsCurveGaugeTypeHistorical,
        PathValues.DAPPS_CURVE_GAUGE_TYPE_WEIGHT_HISTORICAL: DappsCurveGaugeTypeWeightHistorical,
        PathValues.DAPPS_CURVE_GAUGE_WEIGHT_HISTORICAL: DappsCurveGaugeWeightHistorical,
        PathValues.DAPPS_CURVE_GAUGE_WEIGHT_VOTE_HISTORICAL: DappsCurveGaugeWeightVoteHistorical,
        PathValues.DAPPS_CURVE_GAUGE_WITHDRAW_HISTORICAL: DappsCurveGaugeWithdrawHistorical,
        PathValues.DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL: DappsSushiswapHourDataHistorical,
        PathValues.DAPPS_CURVE_HOURLY_VOLUME_HISTORICAL: DappsCurveHourlyVolumeHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITION_HISTORICAL: DappsUniswapv2LiquidityPositionHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL: DappsSushiswapLiquidityPositionHistorical,
        PathValues.DAPPS_UNISWAPV2_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: DappsUniswapv2LiquidityPositionSnapshotsHistorical,
        PathValues.DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: DappsSushiswapLiquidityPositionSnapshotsHistorical,
        PathValues.DAPPS_CURVE_LP_TOKEN_HISTORICAL: DappsCurveLpTokenHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_HISTORICAL: DappsUniswapv3MintsHistorical,
        PathValues.DAPPS_UNISWAPV2_MINTS_HISTORICAL: DappsUniswapv2MintsHistorical,
        PathValues.DAPPS_SUSHISWAP_MINTS_HISTORICAL: DappsSushiswapMintsHistorical,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_DEX_ORDERS_HISTORICAL: DappsDexOrdersHistorical,
        PathValues.DAPPS_COW_ORDERS_HISTORICAL: DappsCowOrdersHistorical,
        PathValues.DAPPS_UNISWAPV3_POI_HISTORICAL: DappsUniswapv3PoiHistorical,
        PathValues.DAPPS_UNISWAPV2_POI_HISTORICAL: DappsUniswapv2PoiHistorical,
        PathValues.DAPPS_SUSHISWAP_POI_HISTORICAL: DappsSushiswapPoiHistorical,
        PathValues.DAPPS_DEX_POI_HISTORICAL: DappsDexPoiHistorical,
        PathValues.DAPPS_CURVE_POI_HISTORICAL: DappsCurvePoiHistorical,
        PathValues.DAPPS_COW_POI_HISTORICAL: DappsCowPoiHistorical,
        PathValues.DAPPS_UNISWAPV3_POOL_DAY_DATA_HISTORICAL: DappsUniswapv3PoolDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOL_DAY_DATA_HISTORICAL: DappsUniswapv2PoolDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOL_DAY_DATA_HISTORICAL: DappsSushiswapPoolDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOL_HOUR_DATA_HISTORICAL: DappsUniswapv3PoolHourDataHistorical,
        PathValues.DAPPS_UNISWAPV2_POOL_HOUR_DATA_HISTORICAL: DappsUniswapv2PoolHourDataHistorical,
        PathValues.DAPPS_SUSHISWAP_POOL_HOUR_DATA_HISTORICAL: DappsSushiswapPoolHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_HISTORICAL: DappsUniswapv3PoolsHistorical,
        PathValues.DAPPS_UNISWAPV2_POOLS_HISTORICAL: DappsUniswapv2PoolsHistorical,
        PathValues.DAPPS_SUSHISWAP_POOLS_HISTORICAL: DappsSushiswapPoolsHistorical,
        PathValues.DAPPS_CURVE_POOLS_HISTORICAL: DappsCurvePoolsHistorical,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_HISTORICAL: DappsUniswapv3PositionsHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOT_HISTORICAL: DappsUniswapv3PositionSnapshotHistorical,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_DEX_PRICES_HISTORICAL: DappsDexPricesHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_HISTORICAL: DappsCurveProposalsHistorical,
        PathValues.DAPPS_CURVE_PROPOSALS_VOTE_HISTORICAL: DappsCurveProposalsVoteHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_EVENT_HISTORICAL: DappsCurveRemoveLiquidityEventHistorical,
        PathValues.DAPPS_CURVE_REMOVE_LIQUIDITY_ONE_EVENT_HISTORICAL: DappsCurveRemoveLiquidityOneEventHistorical,
        PathValues.DAPPS_COW_SETTLEMENT_HISTORICAL: DappsCowSettlementHistorical,
        PathValues.DAPPS_DEX_SOLUTION_HISTORICAL: DappsDexSolutionHistorical,
        PathValues.DAPPS_DEX_STATS_HISTORICAL: DappsDexStatsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_HISTORICAL: DappsUniswapv3SwapsHistorical,
        PathValues.DAPPS_UNISWAPV2_SWAPS_HISTORICAL: DappsUniswapv2SwapsHistorical,
        PathValues.DAPPS_SUSHISWAP_SWAPS_HISTORICAL: DappsSushiswapSwapsHistorical,
        PathValues.DAPPS_CURVE_SWAPS_HISTORICAL: DappsCurveSwapsHistorical,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_CURVE_SYSTEM_STATE_HISTORICAL: DappsCurveSystemStateHistorical,
        PathValues.DAPPS_UNISWAPV3_TICK_DAY_DATA_HISTORICAL: DappsUniswapv3TickDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_HISTORICAL: DappsUniswapv3TicksHistorical,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKEN_DAY_DATA_HISTORICAL: DappsUniswapv3TokenDayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKEN_DAY_DATA_HISTORICAL: DappsUniswapv2TokenDayDataHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKEN_DAY_DATA_HISTORICAL: DappsSushiswapTokenDayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKEN_HOUR_DATA_HISTORICAL: DappsUniswapv3TokenHourDataHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HISTORICAL: DappsUniswapv3TokensHistorical,
        PathValues.DAPPS_UNISWAPV2_TOKENS_HISTORICAL: DappsUniswapv2TokensHistorical,
        PathValues.DAPPS_SUSHISWAP_TOKENS_HISTORICAL: DappsSushiswapTokensHistorical,
        PathValues.DAPPS_CURVE_TOKENS_HISTORICAL: DappsCurveTokensHistorical,
        PathValues.DAPPS_COW_TOKENS_HISTORICAL: DappsCowTokensHistorical,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_DEX_TRADES_HISTORICAL: DappsDexTradesHistorical,
        PathValues.DAPPS_COW_TRADES_HISTORICAL: DappsCowTradesHistorical,
        PathValues.DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL: DappsUniswapv3TransactionsHistorical,
        PathValues.DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL: DappsUniswapv2TransactionsHistorical,
        PathValues.DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: DappsSushiswapTransactionsHistorical,
        PathValues.DAPPS_CURVE_TRANSFER_OWNERSHIP_EVENT_HISTORICAL: DappsCurveTransferOwnershipEventHistorical,
        PathValues.DAPPS_CURVE_UNDERLYING_COIN_HISTORICAL: DappsCurveUnderlyingCoinHistorical,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL: DappsUniswapv3DayDataHistorical,
        PathValues.DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL: DappsUniswapv2DayDataHistorical,
        PathValues.DAPPS_UNISWAPV3_UNISWAP_DAY_DATA_CURRENT: DappsUniswapv3UniswapDayDataCurrent,
        PathValues.DAPPS_UNISWAPV2_USERS_HISTORICAL: DappsUniswapv2UsersHistorical,
        PathValues.DAPPS_SUSHISWAP_USERS_HISTORICAL: DappsSushiswapUsersHistorical,
        PathValues.DAPPS_DEX_USERS_HISTORICAL: DappsDexUsersHistorical,
        PathValues.DAPPS_COW_USERS_HISTORICAL: DappsCowUsersHistorical,
        PathValues.DAPPS_CURVE_VOTING_APP_HISTORICAL: DappsCurveVotingAppHistorical,
        PathValues.DAPPS_CURVE_WEEKLY_VOLUME_HISTORICAL: DappsCurveWeeklyVolumeHistorical,
        PathValues.DAPPS_DEX_WITHDRAW_HISTORICAL: DappsDexWithdrawHistorical,
        PathValues.DAPPS_DEX_WITHDRAW_REQUEST_HISTORICAL: DappsDexWithdrawRequestHistorical,
    }
)
