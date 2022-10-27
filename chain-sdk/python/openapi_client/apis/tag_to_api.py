import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.sushiswap_api import SushiswapApi
from openapi_client.apis.tags.uniswap_v2_api import UniswapV2Api
from openapi_client.apis.tags.uniswap_v3_api import UniswapV3Api
from openapi_client.apis.tags.curve_api import CurveApi
from openapi_client.apis.tags.cow_api import CowApi
from openapi_client.apis.tags.dex_api import DexApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.CURVE: CurveApi,
        TagValues.COW: CowApi,
        TagValues.DEX: DexApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.SUSHISWAP: SushiswapApi,
        TagValues.UNISWAP_V2: UniswapV2Api,
        TagValues.UNISWAP_V3: UniswapV3Api,
        TagValues.CURVE: CurveApi,
        TagValues.COW: CowApi,
        TagValues.DEX: DexApi,
    }
)
