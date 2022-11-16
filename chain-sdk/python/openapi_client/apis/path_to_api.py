import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.dapps_uniswapv3_bundles_current import DappsUniswapv3BundlesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_burns_current import DappsUniswapv3BurnsCurrent
from openapi_client.apis.paths.dapps_sushiswap_exchanges_current import DappsSushiswapExchangesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_factory_current import DappsUniswapv3FactoryCurrent
from openapi_client.apis.paths.dapps_uniswapv3_mints_current import DappsUniswapv3MintsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_current import DappsUniswapv3PoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_pools_current import DappsUniswapv2PoolsCurrent
from openapi_client.apis.paths.dapps_sushiswap_pools_current import DappsSushiswapPoolsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_day_data_current import DappsUniswapv3PoolsDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_pools_hour_data_current import DappsUniswapv3PoolsHourDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_positions_current import DappsUniswapv3PositionsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_position_snapshots_current import DappsUniswapv3PositionSnapshotsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_swaps_current import DappsUniswapv3SwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv2_swaps_current import DappsUniswapv2SwapsCurrent
from openapi_client.apis.paths.dapps_sushiswap_swaps_current import DappsSushiswapSwapsCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_current import DappsUniswapv3TicksCurrent
from openapi_client.apis.paths.dapps_uniswapv3_ticks_day_data_current import DappsUniswapv3TicksDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_current import DappsUniswapv3TokensCurrent
from openapi_client.apis.paths.dapps_uniswapv2_tokens_current import DappsUniswapv2TokensCurrent
from openapi_client.apis.paths.dapps_sushiswap_tokens_current import DappsSushiswapTokensCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_day_data_current import DappsUniswapv3TokensDayDataCurrent
from openapi_client.apis.paths.dapps_uniswapv3_tokens_hour_data_current import DappsUniswapv3TokensHourDataCurrent
from openapi_client.apis.paths.dapps_sushiswap_trades_current import DappsSushiswapTradesCurrent
from openapi_client.apis.paths.dapps_uniswapv3_day_data_current import DappsUniswapv3DayDataCurrent

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
    }
)

path_to_api = PathToApi(
    {
        PathValues.DAPPS_UNISWAPV3_BUNDLES_CURRENT: DappsUniswapv3BundlesCurrent,
        PathValues.DAPPS_UNISWAPV3_BURNS_CURRENT: DappsUniswapv3BurnsCurrent,
        PathValues.DAPPS_SUSHISWAP_EXCHANGES_CURRENT: DappsSushiswapExchangesCurrent,
        PathValues.DAPPS_UNISWAPV3_FACTORY_CURRENT: DappsUniswapv3FactoryCurrent,
        PathValues.DAPPS_UNISWAPV3_MINTS_CURRENT: DappsUniswapv3MintsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_CURRENT: DappsUniswapv3PoolsCurrent,
        PathValues.DAPPS_UNISWAPV2_POOLS_CURRENT: DappsUniswapv2PoolsCurrent,
        PathValues.DAPPS_SUSHISWAP_POOLS_CURRENT: DappsSushiswapPoolsCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_DAY_DATA_CURRENT: DappsUniswapv3PoolsDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POOLS_HOUR_DATA_CURRENT: DappsUniswapv3PoolsHourDataCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITIONS_CURRENT: DappsUniswapv3PositionsCurrent,
        PathValues.DAPPS_UNISWAPV3_POSITION_SNAPSHOTS_CURRENT: DappsUniswapv3PositionSnapshotsCurrent,
        PathValues.DAPPS_UNISWAPV3_SWAPS_CURRENT: DappsUniswapv3SwapsCurrent,
        PathValues.DAPPS_UNISWAPV2_SWAPS_CURRENT: DappsUniswapv2SwapsCurrent,
        PathValues.DAPPS_SUSHISWAP_SWAPS_CURRENT: DappsSushiswapSwapsCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_CURRENT: DappsUniswapv3TicksCurrent,
        PathValues.DAPPS_UNISWAPV3_TICKS_DAY_DATA_CURRENT: DappsUniswapv3TicksDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_CURRENT: DappsUniswapv3TokensCurrent,
        PathValues.DAPPS_UNISWAPV2_TOKENS_CURRENT: DappsUniswapv2TokensCurrent,
        PathValues.DAPPS_SUSHISWAP_TOKENS_CURRENT: DappsSushiswapTokensCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_DAY_DATA_CURRENT: DappsUniswapv3TokensDayDataCurrent,
        PathValues.DAPPS_UNISWAPV3_TOKENS_HOUR_DATA_CURRENT: DappsUniswapv3TokensHourDataCurrent,
        PathValues.DAPPS_SUSHISWAP_TRADES_CURRENT: DappsSushiswapTradesCurrent,
        PathValues.DAPPS_UNISWAPV3_DAY_DATA_CURRENT: DappsUniswapv3DayDataCurrent,
    }
)
