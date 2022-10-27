# coding: utf-8

"""
    OnChain API

     This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                               # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""

from openapi_client.paths.dapps_uniswapv3_bundle_current.get import DappsUniswapv3BundleCurrentGet
from openapi_client.paths.dapps_uniswapv3_bundles_historical.get import DappsUniswapv3BundlesHistoricalGet
from openapi_client.paths.dapps_uniswapv3_burns_current.get import DappsUniswapv3BurnsCurrentGet
from openapi_client.paths.dapps_uniswapv3_burns_historical.get import DappsUniswapv3BurnsHistoricalGet
from openapi_client.paths.dapps_uniswapv3_day_data_historical.get import DappsUniswapv3DayDataHistoricalGet
from openapi_client.paths.dapps_uniswapv3_factory_current.get import DappsUniswapv3FactoryCurrentGet
from openapi_client.paths.dapps_uniswapv3_factory_historical.get import DappsUniswapv3FactoryHistoricalGet
from openapi_client.paths.dapps_uniswapv3_mints_current.get import DappsUniswapv3MintsCurrentGet
from openapi_client.paths.dapps_uniswapv3_mints_historical.get import DappsUniswapv3MintsHistoricalGet
from openapi_client.paths.dapps_uniswapv3_poi_historical.get import DappsUniswapv3PoiHistoricalGet
from openapi_client.paths.dapps_uniswapv3_pool_day_data_historical.get import DappsUniswapv3PoolDayDataHistoricalGet
from openapi_client.paths.dapps_uniswapv3_pool_hour_data_historical.get import DappsUniswapv3PoolHourDataHistoricalGet
from openapi_client.paths.dapps_uniswapv3_pools_current.get import DappsUniswapv3PoolsCurrentGet
from openapi_client.paths.dapps_uniswapv3_pools_day_data_current.get import DappsUniswapv3PoolsDayDataCurrentGet
from openapi_client.paths.dapps_uniswapv3_pools_historical.get import DappsUniswapv3PoolsHistoricalGet
from openapi_client.paths.dapps_uniswapv3_pools_hour_data_current.get import DappsUniswapv3PoolsHourDataCurrentGet
from openapi_client.paths.dapps_uniswapv3_position_snapshot_historical.get import DappsUniswapv3PositionSnapshotHistoricalGet
from openapi_client.paths.dapps_uniswapv3_position_snapshots_current.get import DappsUniswapv3PositionSnapshotsCurrentGet
from openapi_client.paths.dapps_uniswapv3_positions_current.get import DappsUniswapv3PositionsCurrentGet
from openapi_client.paths.dapps_uniswapv3_positions_historical.get import DappsUniswapv3PositionsHistoricalGet
from openapi_client.paths.dapps_uniswapv3_swaps_current.get import DappsUniswapv3SwapsCurrentGet
from openapi_client.paths.dapps_uniswapv3_swaps_historical.get import DappsUniswapv3SwapsHistoricalGet
from openapi_client.paths.dapps_uniswapv3_tick_day_data_historical.get import DappsUniswapv3TickDayDataHistoricalGet
from openapi_client.paths.dapps_uniswapv3_ticks_current.get import DappsUniswapv3TicksCurrentGet
from openapi_client.paths.dapps_uniswapv3_ticks_day_data_current.get import DappsUniswapv3TicksDayDataCurrentGet
from openapi_client.paths.dapps_uniswapv3_ticks_historical.get import DappsUniswapv3TicksHistoricalGet
from openapi_client.paths.dapps_uniswapv3_token_day_data_historical.get import DappsUniswapv3TokenDayDataHistoricalGet
from openapi_client.paths.dapps_uniswapv3_token_hour_data_historical.get import DappsUniswapv3TokenHourDataHistoricalGet
from openapi_client.paths.dapps_uniswapv3_tokens_current.get import DappsUniswapv3TokensCurrentGet
from openapi_client.paths.dapps_uniswapv3_tokens_day_data_current.get import DappsUniswapv3TokensDayDataCurrentGet
from openapi_client.paths.dapps_uniswapv3_tokens_historical.get import DappsUniswapv3TokensHistoricalGet
from openapi_client.paths.dapps_uniswapv3_tokens_hour_data_current.get import DappsUniswapv3TokensHourDataCurrentGet
from openapi_client.paths.dapps_uniswapv3_transactions_historical.get import DappsUniswapv3TransactionsHistoricalGet
from openapi_client.paths.dapps_uniswapv3_uniswap_day_data_current.get import DappsUniswapv3UniswapDayDataCurrentGet


class UniswapV3Api(
    DappsUniswapv3BundleCurrentGet,
    DappsUniswapv3BundlesHistoricalGet,
    DappsUniswapv3BurnsCurrentGet,
    DappsUniswapv3BurnsHistoricalGet,
    DappsUniswapv3DayDataHistoricalGet,
    DappsUniswapv3FactoryCurrentGet,
    DappsUniswapv3FactoryHistoricalGet,
    DappsUniswapv3MintsCurrentGet,
    DappsUniswapv3MintsHistoricalGet,
    DappsUniswapv3PoiHistoricalGet,
    DappsUniswapv3PoolDayDataHistoricalGet,
    DappsUniswapv3PoolHourDataHistoricalGet,
    DappsUniswapv3PoolsCurrentGet,
    DappsUniswapv3PoolsDayDataCurrentGet,
    DappsUniswapv3PoolsHistoricalGet,
    DappsUniswapv3PoolsHourDataCurrentGet,
    DappsUniswapv3PositionSnapshotHistoricalGet,
    DappsUniswapv3PositionSnapshotsCurrentGet,
    DappsUniswapv3PositionsCurrentGet,
    DappsUniswapv3PositionsHistoricalGet,
    DappsUniswapv3SwapsCurrentGet,
    DappsUniswapv3SwapsHistoricalGet,
    DappsUniswapv3TickDayDataHistoricalGet,
    DappsUniswapv3TicksCurrentGet,
    DappsUniswapv3TicksDayDataCurrentGet,
    DappsUniswapv3TicksHistoricalGet,
    DappsUniswapv3TokenDayDataHistoricalGet,
    DappsUniswapv3TokenHourDataHistoricalGet,
    DappsUniswapv3TokensCurrentGet,
    DappsUniswapv3TokensDayDataCurrentGet,
    DappsUniswapv3TokensHistoricalGet,
    DappsUniswapv3TokensHourDataCurrentGet,
    DappsUniswapv3TransactionsHistoricalGet,
    DappsUniswapv3UniswapDayDataCurrentGet,
):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    pass
