# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    DAPPS_UNISWAPV3_BUNDLES_CURRENT = "/dapps/uniswapv3/bundles/current"
    DAPPS_UNISWAPV3_BURNS_CURRENT = "/dapps/uniswapv3/burns/current"
    DAPPS_SUSHISWAP_EXCHANGES_CURRENT = "/dapps/sushiswap/exchanges/current"
    DAPPS_UNISWAPV3_FACTORY_CURRENT = "/dapps/uniswapv3/factory/current"
    DAPPS_UNISWAPV3_MINTS_CURRENT = "/dapps/uniswapv3/mints/current"
    DAPPS_UNISWAPV3_POOLS_CURRENT = "/dapps/uniswapv3/pools/current"
    DAPPS_UNISWAPV2_POOLS_CURRENT = "/dapps/uniswapv2/pools/current"
    DAPPS_SUSHISWAP_POOLS_CURRENT = "/dapps/sushiswap/pools/current"
    DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT = "/dapps/uniswapv3/poolsDayData/current"
    DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT = "/dapps/uniswapv3/poolsHourData/current"
    DAPPS_UNISWAPV3_POSITIONS_CURRENT = "/dapps/uniswapv3/positions/current"
    DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT = "/dapps/uniswapv3/positionSnapshots/current"
    DAPPS_UNISWAPV3_SWAPS_CURRENT = "/dapps/uniswapv3/swaps/current"
    DAPPS_UNISWAPV2_SWAPS_CURRENT = "/dapps/uniswapv2/swaps/current"
    DAPPS_SUSHISWAP_SWAPS_CURRENT = "/dapps/sushiswap/swaps/current"
    DAPPS_UNISWAPV3_TICKS_CURRENT = "/dapps/uniswapv3/ticks/current"
    DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT = "/dapps/uniswapv3/ticksDayData/current"
    DAPPS_UNISWAPV3_TOKENS_CURRENT = "/dapps/uniswapv3/tokens/current"
    DAPPS_UNISWAPV2_TOKENS_CURRENT = "/dapps/uniswapv2/tokens/current"
    DAPPS_SUSHISWAP_TOKENS_CURRENT = "/dapps/sushiswap/tokens/current"
    DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT = "/dapps/uniswapv3/tokensDayData/current"
    DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT = "/dapps/uniswapv3/tokensHourData/current"
    DAPPS_SUSHISWAP_TRADES_CURRENT = "/dapps/sushiswap/trades/current"
    DAPPS_UNISWAPV3_DAY_DATA_CURRENT = "/dapps/uniswapv3/dayData/current"
