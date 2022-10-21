import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.sushiswap_api import SushiswapApi
from openapi_client.apis.tags.uniswap_v2_api import UniswapV2Api
from openapi_client.apis.tags.uniswap_v3_api import UniswapV3Api
from openapi_client.apis.tags.bundles_api import BundlesApi
from openapi_client.apis.tags.burns_api import BurnsApi
from openapi_client.apis.tags.factory_api import FactoryApi
from openapi_client.apis.tags.mints_api import MintsApi
from openapi_client.apis.tags.poi_api import PoiApi
from openapi_client.apis.tags.pool_day_data_api import PoolDayDataApi
from openapi_client.apis.tags.pool_hour_data_api import PoolHourDataApi
from openapi_client.apis.tags.pools_api import PoolsApi
from openapi_client.apis.tags.position_snapshot_api import PositionSnapshotApi
from openapi_client.apis.tags.positions_api import PositionsApi
from openapi_client.apis.tags.swaps_api import SwapsApi
from openapi_client.apis.tags.tick_day_data_api import TickDayDataApi
from openapi_client.apis.tags.ticks_api import TicksApi
from openapi_client.apis.tags.token_day_data_api import TokenDayDataApi
from openapi_client.apis.tags.token_hour_data_api import TokenHourDataApi
from openapi_client.apis.tags.tokens_api import TokensApi
from openapi_client.apis.tags.trades_api import TradesApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.BUNDLES: BundlesApi,
        TagValues.BURNS: BurnsApi,
        TagValues.FACTORY: FactoryApi,
        TagValues.MINTS: MintsApi,
        TagValues.POI: PoiApi,
        TagValues.POOL_DAY_DATA: PoolDayDataApi,
        TagValues.POOL_HOUR_DATA: PoolHourDataApi,
        TagValues.POOLS: PoolsApi,
        TagValues.POSITION_SNAPSHOT: PositionSnapshotApi,
        TagValues.POSITIONS: PositionsApi,
        TagValues.SWAPS: SwapsApi,
        TagValues.TICK_DAY_DATA: TickDayDataApi,
        TagValues.TICKS: TicksApi,
        TagValues.TOKEN_DAY_DATA: TokenDayDataApi,
        TagValues.TOKEN_HOUR_DATA: TokenHourDataApi,
        TagValues.TOKENS: TokensApi,
        TagValues.TRADES: TradesApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.BUNDLES: BundlesApi,
        TagValues.BURNS: BurnsApi,
        TagValues.FACTORY: FactoryApi,
        TagValues.MINTS: MintsApi,
        TagValues.POI: PoiApi,
        TagValues.POOL_DAY_DATA: PoolDayDataApi,
        TagValues.POOL_HOUR_DATA: PoolHourDataApi,
        TagValues.POOLS: PoolsApi,
        TagValues.POSITION_SNAPSHOT: PositionSnapshotApi,
        TagValues.POSITIONS: PositionsApi,
        TagValues.SWAPS: SwapsApi,
        TagValues.TICK_DAY_DATA: TickDayDataApi,
        TagValues.TICKS: TicksApi,
        TagValues.TOKEN_DAY_DATA: TokenDayDataApi,
        TagValues.TOKEN_HOUR_DATA: TokenHourDataApi,
        TagValues.TOKENS: TokensApi,
        TagValues.TRADES: TradesApi,
    }
)
