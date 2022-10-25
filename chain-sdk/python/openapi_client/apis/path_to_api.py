import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_swaps_current import ChainsChainIdDappsSushiswapSwapsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_dex_batch_historical import ChainsChainIdDappsDexBatchHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_bundle_current import ChainsChainIdDappsUniswapv3BundleCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_bundles_historical import ChainsChainIdDappsUniswapv3BundlesHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_bundles_historical import ChainsChainIdDappsUniswapv2BundlesHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_bundles_historical import ChainsChainIdDappsSushiswapBundlesHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_burns_historical import ChainsChainIdDappsUniswapv3BurnsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_burns_historical import ChainsChainIdDappsUniswapv2BurnsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_burns_historical import ChainsChainIdDappsSushiswapBurnsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_burns_current import ChainsChainIdDappsUniswapv3BurnsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_day_data_historical import ChainsChainIdDappsSushiswapDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_tokens_historical import ChainsChainIdDappsDexTokensHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_factory_historical import ChainsChainIdDappsUniswapv3FactoryHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_factory_historical import ChainsChainIdDappsUniswapv2FactoryHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_factory_historical import ChainsChainIdDappsSushiswapFactoryHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_factory_current import ChainsChainIdDappsUniswapv3FactoryCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_hour_data_historical import ChainsChainIdDappsSushiswapHourDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_liquidity_position_historical import ChainsChainIdDappsUniswapv2LiquidityPositionHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_liquidity_position_historical import ChainsChainIdDappsSushiswapLiquidityPositionHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_liquidity_position_snapshots_historical import ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_liquidity_position_snapshots_historical import ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_mints_historical import ChainsChainIdDappsUniswapv3MintsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_mints_historical import ChainsChainIdDappsUniswapv2MintsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_mints_historical import ChainsChainIdDappsSushiswapMintsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_mints_current import ChainsChainIdDappsUniswapv3MintsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_dex_orders_historical import ChainsChainIdDappsDexOrdersHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_cow_orders_historical import ChainsChainIdDappsCowOrdersHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_poi_historical import ChainsChainIdDappsUniswapv3PoiHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_poi_historical import ChainsChainIdDappsUniswapv2PoiHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_poi_historical import ChainsChainIdDappsSushiswapPoiHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_poi_historical import ChainsChainIdDappsDexPoiHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_cow_poi_historical import ChainsChainIdDappsCowPoiHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_pool_day_data_historical import ChainsChainIdDappsUniswapv3PoolDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_pool_day_data_historical import ChainsChainIdDappsUniswapv2PoolDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_pool_day_data_historical import ChainsChainIdDappsSushiswapPoolDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_pool_hour_data_historical import ChainsChainIdDappsUniswapv3PoolHourDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_pool_hour_data_historical import ChainsChainIdDappsUniswapv2PoolHourDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_pool_hour_data_historical import ChainsChainIdDappsSushiswapPoolHourDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_pools_historical import ChainsChainIdDappsUniswapv3PoolsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_pools_historical import ChainsChainIdDappsUniswapv2PoolsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_pools_historical import ChainsChainIdDappsSushiswapPoolsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_curve_pools_historical import ChainsChainIdDappsCurvePoolsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_pools_current import ChainsChainIdDappsUniswapv3PoolsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_pools_current import ChainsChainIdDappsUniswapv2PoolsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_pools_current import ChainsChainIdDappsSushiswapPoolsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_pools_day_data_current import ChainsChainIdDappsUniswapv3PoolsDayDataCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_pools_hour_data_current import ChainsChainIdDappsUniswapv3PoolsHourDataCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_positions_historical import ChainsChainIdDappsUniswapv3PositionsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_positions_current import ChainsChainIdDappsUniswapv3PositionsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_position_snapshot_historical import ChainsChainIdDappsUniswapv3PositionSnapshotHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_position_snapshots_current import ChainsChainIdDappsUniswapv3PositionSnapshotsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_dex_prices_historical import ChainsChainIdDappsDexPricesHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_cow_settlement_historical import ChainsChainIdDappsCowSettlementHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_solution_historical import ChainsChainIdDappsDexSolutionHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_stats_historical import ChainsChainIdDappsDexStatsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_swaps_historical import ChainsChainIdDappsUniswapv3SwapsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_swaps_historical import ChainsChainIdDappsUniswapv2SwapsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_swaps_historical import ChainsChainIdDappsSushiswapSwapsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_curve_swaps_historical import ChainsChainIdDappsCurveSwapsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_swaps_current import ChainsChainIdDappsUniswapv3SwapsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_swaps_current import ChainsChainIdDappsUniswapv2SwapsCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_tick_day_data_historical import ChainsChainIdDappsUniswapv3TickDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_ticks_historical import ChainsChainIdDappsUniswapv3TicksHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_ticks_current import ChainsChainIdDappsUniswapv3TicksCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_ticks_day_data_current import ChainsChainIdDappsUniswapv3TicksDayDataCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_token_day_data_historical import ChainsChainIdDappsUniswapv3TokenDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_token_day_data_historical import ChainsChainIdDappsUniswapv2TokenDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_token_day_data_historical import ChainsChainIdDappsSushiswapTokenDayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_token_hour_data_historical import ChainsChainIdDappsUniswapv3TokenHourDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_tokens_historical import ChainsChainIdDappsUniswapv3TokensHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_tokens_historical import ChainsChainIdDappsUniswapv2TokensHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_tokens_historical import ChainsChainIdDappsSushiswapTokensHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_curve_tokens_historical import ChainsChainIdDappsCurveTokensHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_cow_tokens_historical import ChainsChainIdDappsCowTokensHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_tokens_current import ChainsChainIdDappsUniswapv3TokensCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_tokens_current import ChainsChainIdDappsUniswapv2TokensCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_tokens_current import ChainsChainIdDappsSushiswapTokensCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_tokens_day_data_current import ChainsChainIdDappsUniswapv3TokensDayDataCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_tokens_hour_data_current import ChainsChainIdDappsUniswapv3TokensHourDataCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_dex_trades_historical import ChainsChainIdDappsDexTradesHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_cow_trades_historical import ChainsChainIdDappsCowTradesHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_transactions_historical import ChainsChainIdDappsUniswapv3TransactionsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_transactions_historical import ChainsChainIdDappsUniswapv2TransactionsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_transactions_historical import ChainsChainIdDappsSushiswapTransactionsHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_day_data_historical import ChainsChainIdDappsUniswapv3DayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_day_data_historical import ChainsChainIdDappsUniswapv2DayDataHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv3_uniswap_day_data_current import ChainsChainIdDappsUniswapv3UniswapDayDataCurrent
from openapi_client.apis.paths.chains_chain_id_dapps_uniswapv2_users_historical import ChainsChainIdDappsUniswapv2UsersHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_sushiswap_users_historical import ChainsChainIdDappsSushiswapUsersHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_users_historical import ChainsChainIdDappsDexUsersHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_cow_users_historical import ChainsChainIdDappsCowUsersHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_withdraw_historical import ChainsChainIdDappsDexWithdrawHistorical
from openapi_client.apis.paths.chains_chain_id_dapps_dex_withdraw_request_historical import ChainsChainIdDappsDexWithdrawRequestHistorical

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_SWAPS_CURRENT: ChainsChainIdDappsSushiswapSwapsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_BATCH_HISTORICAL: ChainsChainIdDappsDexBatchHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BUNDLE_CURRENT: ChainsChainIdDappsUniswapv3BundleCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BUNDLES_HISTORICAL: ChainsChainIdDappsUniswapv3BundlesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_BUNDLES_HISTORICAL: ChainsChainIdDappsUniswapv2BundlesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: ChainsChainIdDappsSushiswapBundlesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BURNS_HISTORICAL: ChainsChainIdDappsUniswapv3BurnsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_BURNS_HISTORICAL: ChainsChainIdDappsUniswapv2BurnsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_BURNS_HISTORICAL: ChainsChainIdDappsSushiswapBurnsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BURNS_CURRENT: ChainsChainIdDappsUniswapv3BurnsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL: ChainsChainIdDappsSushiswapDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_TOKENS_HISTORICAL: ChainsChainIdDappsDexTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_FACTORY_HISTORICAL: ChainsChainIdDappsUniswapv3FactoryHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_FACTORY_HISTORICAL: ChainsChainIdDappsUniswapv2FactoryHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_FACTORY_HISTORICAL: ChainsChainIdDappsSushiswapFactoryHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_FACTORY_CURRENT: ChainsChainIdDappsUniswapv3FactoryCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL: ChainsChainIdDappsSushiswapHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_LIQUIDITY_POSITION_HISTORICAL: ChainsChainIdDappsUniswapv2LiquidityPositionHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL: ChainsChainIdDappsSushiswapLiquidityPositionHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_MINTS_HISTORICAL: ChainsChainIdDappsUniswapv3MintsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_MINTS_HISTORICAL: ChainsChainIdDappsUniswapv2MintsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_MINTS_HISTORICAL: ChainsChainIdDappsSushiswapMintsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_MINTS_CURRENT: ChainsChainIdDappsUniswapv3MintsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_ORDERS_HISTORICAL: ChainsChainIdDappsDexOrdersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_ORDERS_HISTORICAL: ChainsChainIdDappsCowOrdersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POI_HISTORICAL: ChainsChainIdDappsUniswapv3PoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POI_HISTORICAL: ChainsChainIdDappsUniswapv2PoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POI_HISTORICAL: ChainsChainIdDappsSushiswapPoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_POI_HISTORICAL: ChainsChainIdDappsDexPoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_POI_HISTORICAL: ChainsChainIdDappsCowPoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOL_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3PoolDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOL_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2PoolDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOL_DAY_DATA_HISTORICAL: ChainsChainIdDappsSushiswapPoolDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOL_HOUR_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3PoolHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOL_HOUR_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2PoolHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOL_HOUR_DATA_HISTORICAL: ChainsChainIdDappsSushiswapPoolHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_HISTORICAL: ChainsChainIdDappsUniswapv3PoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOLS_HISTORICAL: ChainsChainIdDappsUniswapv2PoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOLS_HISTORICAL: ChainsChainIdDappsSushiswapPoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_CURVE_POOLS_HISTORICAL: ChainsChainIdDappsCurvePoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_CURRENT: ChainsChainIdDappsUniswapv3PoolsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOLS_CURRENT: ChainsChainIdDappsUniswapv2PoolsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOLS_CURRENT: ChainsChainIdDappsSushiswapPoolsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3PoolsDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: ChainsChainIdDappsUniswapv3PoolsHourDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITIONS_HISTORICAL: ChainsChainIdDappsUniswapv3PositionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITIONS_CURRENT: ChainsChainIdDappsUniswapv3PositionsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITION_SNAPSHOT_HISTORICAL: ChainsChainIdDappsUniswapv3PositionSnapshotHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: ChainsChainIdDappsUniswapv3PositionSnapshotsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_PRICES_HISTORICAL: ChainsChainIdDappsDexPricesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_SETTLEMENT_HISTORICAL: ChainsChainIdDappsCowSettlementHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_SOLUTION_HISTORICAL: ChainsChainIdDappsDexSolutionHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_STATS_HISTORICAL: ChainsChainIdDappsDexStatsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_SWAPS_HISTORICAL: ChainsChainIdDappsUniswapv3SwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_SWAPS_HISTORICAL: ChainsChainIdDappsUniswapv2SwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_SWAPS_HISTORICAL: ChainsChainIdDappsSushiswapSwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_CURVE_SWAPS_HISTORICAL: ChainsChainIdDappsCurveSwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_SWAPS_CURRENT: ChainsChainIdDappsUniswapv3SwapsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_SWAPS_CURRENT: ChainsChainIdDappsUniswapv2SwapsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICK_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3TickDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_HISTORICAL: ChainsChainIdDappsUniswapv3TicksHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_CURRENT: ChainsChainIdDappsUniswapv3TicksCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3TicksDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKEN_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3TokenDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKEN_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2TokenDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKEN_DAY_DATA_HISTORICAL: ChainsChainIdDappsSushiswapTokenDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKEN_HOUR_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3TokenHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_HISTORICAL: ChainsChainIdDappsUniswapv3TokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKENS_HISTORICAL: ChainsChainIdDappsUniswapv2TokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKENS_HISTORICAL: ChainsChainIdDappsSushiswapTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_CURVE_TOKENS_HISTORICAL: ChainsChainIdDappsCurveTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_TOKENS_HISTORICAL: ChainsChainIdDappsCowTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_CURRENT: ChainsChainIdDappsUniswapv3TokensCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKENS_CURRENT: ChainsChainIdDappsUniswapv2TokensCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKENS_CURRENT: ChainsChainIdDappsSushiswapTokensCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3TokensDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: ChainsChainIdDappsUniswapv3TokensHourDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_TRADES_HISTORICAL: ChainsChainIdDappsDexTradesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_TRADES_HISTORICAL: ChainsChainIdDappsCowTradesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL: ChainsChainIdDappsUniswapv3TransactionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL: ChainsChainIdDappsUniswapv2TransactionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: ChainsChainIdDappsSushiswapTransactionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3DayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2DayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_UNISWAP_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3UniswapDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_USERS_HISTORICAL: ChainsChainIdDappsUniswapv2UsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_USERS_HISTORICAL: ChainsChainIdDappsSushiswapUsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_USERS_HISTORICAL: ChainsChainIdDappsDexUsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_USERS_HISTORICAL: ChainsChainIdDappsCowUsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_WITHDRAW_HISTORICAL: ChainsChainIdDappsDexWithdrawHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_WITHDRAW_REQUEST_HISTORICAL: ChainsChainIdDappsDexWithdrawRequestHistorical,
    }
)

path_to_api = PathToApi(
    {
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_SWAPS_CURRENT: ChainsChainIdDappsSushiswapSwapsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_BATCH_HISTORICAL: ChainsChainIdDappsDexBatchHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BUNDLE_CURRENT: ChainsChainIdDappsUniswapv3BundleCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BUNDLES_HISTORICAL: ChainsChainIdDappsUniswapv3BundlesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_BUNDLES_HISTORICAL: ChainsChainIdDappsUniswapv2BundlesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_BUNDLES_HISTORICAL: ChainsChainIdDappsSushiswapBundlesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BURNS_HISTORICAL: ChainsChainIdDappsUniswapv3BurnsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_BURNS_HISTORICAL: ChainsChainIdDappsUniswapv2BurnsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_BURNS_HISTORICAL: ChainsChainIdDappsSushiswapBurnsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BURNS_CURRENT: ChainsChainIdDappsUniswapv3BurnsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL: ChainsChainIdDappsSushiswapDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_TOKENS_HISTORICAL: ChainsChainIdDappsDexTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_FACTORY_HISTORICAL: ChainsChainIdDappsUniswapv3FactoryHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_FACTORY_HISTORICAL: ChainsChainIdDappsUniswapv2FactoryHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_FACTORY_HISTORICAL: ChainsChainIdDappsSushiswapFactoryHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_FACTORY_CURRENT: ChainsChainIdDappsUniswapv3FactoryCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL: ChainsChainIdDappsSushiswapHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_LIQUIDITY_POSITION_HISTORICAL: ChainsChainIdDappsUniswapv2LiquidityPositionHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL: ChainsChainIdDappsSushiswapLiquidityPositionHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: ChainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL: ChainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_MINTS_HISTORICAL: ChainsChainIdDappsUniswapv3MintsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_MINTS_HISTORICAL: ChainsChainIdDappsUniswapv2MintsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_MINTS_HISTORICAL: ChainsChainIdDappsSushiswapMintsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_MINTS_CURRENT: ChainsChainIdDappsUniswapv3MintsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_ORDERS_HISTORICAL: ChainsChainIdDappsDexOrdersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_ORDERS_HISTORICAL: ChainsChainIdDappsCowOrdersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POI_HISTORICAL: ChainsChainIdDappsUniswapv3PoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POI_HISTORICAL: ChainsChainIdDappsUniswapv2PoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POI_HISTORICAL: ChainsChainIdDappsSushiswapPoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_POI_HISTORICAL: ChainsChainIdDappsDexPoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_POI_HISTORICAL: ChainsChainIdDappsCowPoiHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOL_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3PoolDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOL_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2PoolDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOL_DAY_DATA_HISTORICAL: ChainsChainIdDappsSushiswapPoolDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOL_HOUR_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3PoolHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOL_HOUR_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2PoolHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOL_HOUR_DATA_HISTORICAL: ChainsChainIdDappsSushiswapPoolHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_HISTORICAL: ChainsChainIdDappsUniswapv3PoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOLS_HISTORICAL: ChainsChainIdDappsUniswapv2PoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOLS_HISTORICAL: ChainsChainIdDappsSushiswapPoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_CURVE_POOLS_HISTORICAL: ChainsChainIdDappsCurvePoolsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_CURRENT: ChainsChainIdDappsUniswapv3PoolsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOLS_CURRENT: ChainsChainIdDappsUniswapv2PoolsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOLS_CURRENT: ChainsChainIdDappsSushiswapPoolsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3PoolsDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: ChainsChainIdDappsUniswapv3PoolsHourDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITIONS_HISTORICAL: ChainsChainIdDappsUniswapv3PositionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITIONS_CURRENT: ChainsChainIdDappsUniswapv3PositionsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITION_SNAPSHOT_HISTORICAL: ChainsChainIdDappsUniswapv3PositionSnapshotHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: ChainsChainIdDappsUniswapv3PositionSnapshotsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_PRICES_HISTORICAL: ChainsChainIdDappsDexPricesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_SETTLEMENT_HISTORICAL: ChainsChainIdDappsCowSettlementHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_SOLUTION_HISTORICAL: ChainsChainIdDappsDexSolutionHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_STATS_HISTORICAL: ChainsChainIdDappsDexStatsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_SWAPS_HISTORICAL: ChainsChainIdDappsUniswapv3SwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_SWAPS_HISTORICAL: ChainsChainIdDappsUniswapv2SwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_SWAPS_HISTORICAL: ChainsChainIdDappsSushiswapSwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_CURVE_SWAPS_HISTORICAL: ChainsChainIdDappsCurveSwapsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_SWAPS_CURRENT: ChainsChainIdDappsUniswapv3SwapsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_SWAPS_CURRENT: ChainsChainIdDappsUniswapv2SwapsCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICK_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3TickDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_HISTORICAL: ChainsChainIdDappsUniswapv3TicksHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_CURRENT: ChainsChainIdDappsUniswapv3TicksCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3TicksDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKEN_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3TokenDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKEN_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2TokenDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKEN_DAY_DATA_HISTORICAL: ChainsChainIdDappsSushiswapTokenDayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKEN_HOUR_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3TokenHourDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_HISTORICAL: ChainsChainIdDappsUniswapv3TokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKENS_HISTORICAL: ChainsChainIdDappsUniswapv2TokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKENS_HISTORICAL: ChainsChainIdDappsSushiswapTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_CURVE_TOKENS_HISTORICAL: ChainsChainIdDappsCurveTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_TOKENS_HISTORICAL: ChainsChainIdDappsCowTokensHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_CURRENT: ChainsChainIdDappsUniswapv3TokensCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKENS_CURRENT: ChainsChainIdDappsUniswapv2TokensCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKENS_CURRENT: ChainsChainIdDappsSushiswapTokensCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3TokensDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: ChainsChainIdDappsUniswapv3TokensHourDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_TRADES_HISTORICAL: ChainsChainIdDappsDexTradesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_TRADES_HISTORICAL: ChainsChainIdDappsCowTradesHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL: ChainsChainIdDappsUniswapv3TransactionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL: ChainsChainIdDappsUniswapv2TransactionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL: ChainsChainIdDappsSushiswapTransactionsHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv3DayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL: ChainsChainIdDappsUniswapv2DayDataHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_UNISWAP_DAY_DATA_CURRENT: ChainsChainIdDappsUniswapv3UniswapDayDataCurrent,
        PathValues.CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_USERS_HISTORICAL: ChainsChainIdDappsUniswapv2UsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_USERS_HISTORICAL: ChainsChainIdDappsSushiswapUsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_USERS_HISTORICAL: ChainsChainIdDappsDexUsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_COW_USERS_HISTORICAL: ChainsChainIdDappsCowUsersHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_WITHDRAW_HISTORICAL: ChainsChainIdDappsDexWithdrawHistorical,
        PathValues.CHAINS_CHAIN_ID_DAPPS_DEX_WITHDRAW_REQUEST_HISTORICAL: ChainsChainIdDappsDexWithdrawRequestHistorical,
    }
)
