# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_SWAPS_CURRENT = "/chains/{chain_id}/dapps/sushiswap/swaps/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BUNDLE_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/bundle/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BUNDLES_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/bundles/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_BUNDLES_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/bundles/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_BUNDLES_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/bundles/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BURNS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/burns/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_BURNS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/burns/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_BURNS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/burns/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_BURNS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/burns/current"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/dayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_FACTORY_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/factory/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_FACTORY_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/factory/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_FACTORY_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/factory/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_FACTORY_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/factory/current"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_HOUR_DATA_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/hourData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_LIQUIDITY_POSITION_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_LIQUIDITY_POSITION_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOTS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_MINTS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/mints/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_MINTS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/mints/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_MINTS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/mints/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_MINTS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/mints/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POI_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/poi/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POI_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/poi/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POI_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/poi/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOL_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/poolDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOL_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/poolDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOL_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/poolDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOL_HOUR_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/poolHourData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOL_HOUR_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/poolHourData/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOL_HOUR_DATA_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/poolHourData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/pools/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOLS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/pools/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOLS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/pools/historical"
    CHAINS_CHAIN_ID_DAPPS_CURVE_POOLS_HISTORICAL = "/chains/{chain_id}/dapps/curve/pools/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/pools/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_POOLS_CURRENT = "/chains/{chain_id}/dapps/uniswapv2/pools/current"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_POOLS_CURRENT = "/chains/{chain_id}/dapps/sushiswap/pools/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/poolsDayData/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/poolsHourData/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITIONS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/positions/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITIONS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/positions/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITION_SNAPSHOT_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_SWAPS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/swaps/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_SWAPS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/swaps/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_SWAPS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/swaps/historical"
    CHAINS_CHAIN_ID_DAPPS_CURVE_SWAPS_HISTORICAL = "/chains/{chain_id}/dapps/curve/swaps/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_SWAPS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/swaps/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_SWAPS_CURRENT = "/chains/{chain_id}/dapps/uniswapv2/swaps/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICK_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/tickDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/ticks/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/ticks/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/ticksDayData/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKEN_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKEN_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKEN_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/tokenDayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKEN_HOUR_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/tokens/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKENS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/tokens/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKENS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/tokens/historical"
    CHAINS_CHAIN_ID_DAPPS_DEX_TOKENS_HISTORICAL = "/chains/{chain_id}/dapps/dex/tokens/historical"
    CHAINS_CHAIN_ID_DAPPS_CURVE_TOKENS_HISTORICAL = "/chains/{chain_id}/dapps/curve/tokens/historical"
    CHAINS_CHAIN_ID_DAPPS_COW_TOKENS_HISTORICAL = "/chains/{chain_id}/dapps/cow/tokens/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/tokens/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TOKENS_CURRENT = "/chains/{chain_id}/dapps/uniswapv2/tokens/current"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TOKENS_CURRENT = "/chains/{chain_id}/dapps/sushiswap/tokens/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/tokensDayData/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/tokensHourData/current"
    CHAINS_CHAIN_ID_DAPPS_DEX_TRADES_HISTORICAL = "/chains/{chain_id}/dapps/dex/trades/historical"
    CHAINS_CHAIN_ID_DAPPS_COW_TRADES_HISTORICAL = "/chains/{chain_id}/dapps/cow/trades/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_TRANSACTIONS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/transactions/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_TRANSACTIONS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/transactions/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_TRANSACTIONS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/transactions/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv3/dayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_DAY_DATA_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/dayData/historical"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV3_UNISWAP_DAY_DATA_CURRENT = "/chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current"
    CHAINS_CHAIN_ID_DAPPS_UNISWAPV2_USERS_HISTORICAL = "/chains/{chain_id}/dapps/uniswapv2/users/historical"
    CHAINS_CHAIN_ID_DAPPS_SUSHISWAP_USERS_HISTORICAL = "/chains/{chain_id}/dapps/sushiswap/users/historical"
