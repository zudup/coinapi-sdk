# coding: utf-8

"""
    On Chain - REST API

     This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                               # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from openapi_client import schemas  # noqa: F401


class UniswapV3PoolHourDataDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Hourly stats tracker for pool.
    """


    class MetaOapg:
        
        class properties:
            entry_time = schemas.DateTimeSchema
            recv_time = schemas.DateTimeSchema
            block_number = schemas.Int64Schema
            
            
            class id(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'id':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            period_start_unix = schemas.Int32Schema
            
            
            class pool(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'pool':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class sqrt_price(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'sqrt_price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class token_0_price(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'token_0_price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class token_1_price(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'token_1_price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class tick(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'tick':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class fee_growth_global_0x128(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fee_growth_global_0x128':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class fee_growth_global_1x128(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fee_growth_global_1x128':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class tvl_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'tvl_usd':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class volume_token_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'volume_token_0':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class volume_token_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'volume_token_1':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class volume_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'volume_usd':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class fees_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fees_usd':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class tx_count(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'tx_count':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class open(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'open':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class high(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'high':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class low(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'low':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class close(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'close':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            vid = schemas.Int64Schema
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "id": id,
                "period_start_unix": period_start_unix,
                "pool": pool,
                "liquidity": liquidity,
                "sqrt_price": sqrt_price,
                "token_0_price": token_0_price,
                "token_1_price": token_1_price,
                "tick": tick,
                "fee_growth_global_0x128": fee_growth_global_0x128,
                "fee_growth_global_1x128": fee_growth_global_1x128,
                "tvl_usd": tvl_usd,
                "volume_token_0": volume_token_0,
                "volume_token_1": volume_token_1,
                "volume_usd": volume_usd,
                "fees_usd": fees_usd,
                "tx_count": tx_count,
                "open": open,
                "high": high,
                "low": low,
                "close": close,
                "vid": vid,
            }
        additional_properties = schemas.NotAnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["entry_time"]) -> MetaOapg.properties.entry_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["recv_time"]) -> MetaOapg.properties.recv_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["block_number"]) -> MetaOapg.properties.block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["period_start_unix"]) -> MetaOapg.properties.period_start_unix: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["pool"]) -> MetaOapg.properties.pool: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity"]) -> MetaOapg.properties.liquidity: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sqrt_price"]) -> MetaOapg.properties.sqrt_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_0_price"]) -> MetaOapg.properties.token_0_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_1_price"]) -> MetaOapg.properties.token_1_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tick"]) -> MetaOapg.properties.tick: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_growth_global_0x128"]) -> MetaOapg.properties.fee_growth_global_0x128: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_growth_global_1x128"]) -> MetaOapg.properties.fee_growth_global_1x128: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tvl_usd"]) -> MetaOapg.properties.tvl_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_token_0"]) -> MetaOapg.properties.volume_token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_token_1"]) -> MetaOapg.properties.volume_token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_usd"]) -> MetaOapg.properties.volume_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fees_usd"]) -> MetaOapg.properties.fees_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tx_count"]) -> MetaOapg.properties.tx_count: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["open"]) -> MetaOapg.properties.open: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["high"]) -> MetaOapg.properties.high: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["low"]) -> MetaOapg.properties.low: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["close"]) -> MetaOapg.properties.close: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vid"]) -> MetaOapg.properties.vid: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["period_start_unix"], typing_extensions.Literal["pool"], typing_extensions.Literal["liquidity"], typing_extensions.Literal["sqrt_price"], typing_extensions.Literal["token_0_price"], typing_extensions.Literal["token_1_price"], typing_extensions.Literal["tick"], typing_extensions.Literal["fee_growth_global_0x128"], typing_extensions.Literal["fee_growth_global_1x128"], typing_extensions.Literal["tvl_usd"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["fees_usd"], typing_extensions.Literal["tx_count"], typing_extensions.Literal["open"], typing_extensions.Literal["high"], typing_extensions.Literal["low"], typing_extensions.Literal["close"], typing_extensions.Literal["vid"], ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["entry_time"]) -> typing.Union[MetaOapg.properties.entry_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["recv_time"]) -> typing.Union[MetaOapg.properties.recv_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["block_number"]) -> typing.Union[MetaOapg.properties.block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["period_start_unix"]) -> typing.Union[MetaOapg.properties.period_start_unix, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["pool"]) -> typing.Union[MetaOapg.properties.pool, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity"]) -> typing.Union[MetaOapg.properties.liquidity, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sqrt_price"]) -> typing.Union[MetaOapg.properties.sqrt_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_0_price"]) -> typing.Union[MetaOapg.properties.token_0_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_1_price"]) -> typing.Union[MetaOapg.properties.token_1_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tick"]) -> typing.Union[MetaOapg.properties.tick, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_growth_global_0x128"]) -> typing.Union[MetaOapg.properties.fee_growth_global_0x128, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_growth_global_1x128"]) -> typing.Union[MetaOapg.properties.fee_growth_global_1x128, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tvl_usd"]) -> typing.Union[MetaOapg.properties.tvl_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_token_0"]) -> typing.Union[MetaOapg.properties.volume_token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_token_1"]) -> typing.Union[MetaOapg.properties.volume_token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_usd"]) -> typing.Union[MetaOapg.properties.volume_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fees_usd"]) -> typing.Union[MetaOapg.properties.fees_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tx_count"]) -> typing.Union[MetaOapg.properties.tx_count, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["open"]) -> typing.Union[MetaOapg.properties.open, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["high"]) -> typing.Union[MetaOapg.properties.high, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["low"]) -> typing.Union[MetaOapg.properties.low, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["close"]) -> typing.Union[MetaOapg.properties.close, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vid"]) -> typing.Union[MetaOapg.properties.vid, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["period_start_unix"], typing_extensions.Literal["pool"], typing_extensions.Literal["liquidity"], typing_extensions.Literal["sqrt_price"], typing_extensions.Literal["token_0_price"], typing_extensions.Literal["token_1_price"], typing_extensions.Literal["tick"], typing_extensions.Literal["fee_growth_global_0x128"], typing_extensions.Literal["fee_growth_global_1x128"], typing_extensions.Literal["tvl_usd"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["fees_usd"], typing_extensions.Literal["tx_count"], typing_extensions.Literal["open"], typing_extensions.Literal["high"], typing_extensions.Literal["low"], typing_extensions.Literal["close"], typing_extensions.Literal["vid"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        period_start_unix: typing.Union[MetaOapg.properties.period_start_unix, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        pool: typing.Union[MetaOapg.properties.pool, None, str, schemas.Unset] = schemas.unset,
        liquidity: typing.Union[MetaOapg.properties.liquidity, None, str, schemas.Unset] = schemas.unset,
        sqrt_price: typing.Union[MetaOapg.properties.sqrt_price, None, str, schemas.Unset] = schemas.unset,
        token_0_price: typing.Union[MetaOapg.properties.token_0_price, None, str, schemas.Unset] = schemas.unset,
        token_1_price: typing.Union[MetaOapg.properties.token_1_price, None, str, schemas.Unset] = schemas.unset,
        tick: typing.Union[MetaOapg.properties.tick, None, str, schemas.Unset] = schemas.unset,
        fee_growth_global_0x128: typing.Union[MetaOapg.properties.fee_growth_global_0x128, None, str, schemas.Unset] = schemas.unset,
        fee_growth_global_1x128: typing.Union[MetaOapg.properties.fee_growth_global_1x128, None, str, schemas.Unset] = schemas.unset,
        tvl_usd: typing.Union[MetaOapg.properties.tvl_usd, None, str, schemas.Unset] = schemas.unset,
        volume_token_0: typing.Union[MetaOapg.properties.volume_token_0, None, str, schemas.Unset] = schemas.unset,
        volume_token_1: typing.Union[MetaOapg.properties.volume_token_1, None, str, schemas.Unset] = schemas.unset,
        volume_usd: typing.Union[MetaOapg.properties.volume_usd, None, str, schemas.Unset] = schemas.unset,
        fees_usd: typing.Union[MetaOapg.properties.fees_usd, None, str, schemas.Unset] = schemas.unset,
        tx_count: typing.Union[MetaOapg.properties.tx_count, None, str, schemas.Unset] = schemas.unset,
        open: typing.Union[MetaOapg.properties.open, None, str, schemas.Unset] = schemas.unset,
        high: typing.Union[MetaOapg.properties.high, None, str, schemas.Unset] = schemas.unset,
        low: typing.Union[MetaOapg.properties.low, None, str, schemas.Unset] = schemas.unset,
        close: typing.Union[MetaOapg.properties.close, None, str, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'UniswapV3PoolHourDataDTO':
        return super().__new__(
            cls,
            *args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            id=id,
            period_start_unix=period_start_unix,
            pool=pool,
            liquidity=liquidity,
            sqrt_price=sqrt_price,
            token_0_price=token_0_price,
            token_1_price=token_1_price,
            tick=tick,
            fee_growth_global_0x128=fee_growth_global_0x128,
            fee_growth_global_1x128=fee_growth_global_1x128,
            tvl_usd=tvl_usd,
            volume_token_0=volume_token_0,
            volume_token_1=volume_token_1,
            volume_usd=volume_usd,
            fees_usd=fees_usd,
            tx_count=tx_count,
            open=open,
            high=high,
            low=low,
            close=close,
            vid=vid,
            _configuration=_configuration,
        )
