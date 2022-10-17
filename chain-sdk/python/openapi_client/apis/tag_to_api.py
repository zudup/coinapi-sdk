import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.sushiswap_api import SushiswapApi
from openapi_client.apis.tags.uniswap_v2_api import UniswapV2Api
from openapi_client.apis.tags.uniswap_v3_api import UniswapV3Api
from openapi_client.apis.tags.pools_api import PoolsApi
from openapi_client.apis.tags.swaps_api import SwapsApi
from openapi_client.apis.tags.tokens_api import TokensApi
from openapi_client.apis.tags.trades_api import TradesApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.POOLS: PoolsApi,
        TagValues.SWAPS: SwapsApi,
        TagValues.TOKENS: TokensApi,
        TagValues.TRADES: TradesApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.POOLS: PoolsApi,
        TagValues.SWAPS: SwapsApi,
        TagValues.TOKENS: TokensApi,
        TagValues.TRADES: TradesApi,
    }
)