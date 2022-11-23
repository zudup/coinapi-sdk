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


class SushiswapPairHourDataDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Tracks pair data across each hour.
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
            date = schemas.Int32Schema
            
            
            class pair(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'pair':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class reserve_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'reserve_0':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class reserve_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'reserve_1':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class reserve_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'reserve_usd':
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
            vid = schemas.Int64Schema
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "id": id,
                "date": date,
                "pair": pair,
                "reserve_0": reserve_0,
                "reserve_1": reserve_1,
                "reserve_usd": reserve_usd,
                "volume_token_0": volume_token_0,
                "volume_token_1": volume_token_1,
                "volume_usd": volume_usd,
                "tx_count": tx_count,
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
    def __getitem__(self, name: typing_extensions.Literal["date"]) -> MetaOapg.properties.date: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["pair"]) -> MetaOapg.properties.pair: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["reserve_0"]) -> MetaOapg.properties.reserve_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["reserve_1"]) -> MetaOapg.properties.reserve_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["reserve_usd"]) -> MetaOapg.properties.reserve_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_token_0"]) -> MetaOapg.properties.volume_token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_token_1"]) -> MetaOapg.properties.volume_token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_usd"]) -> MetaOapg.properties.volume_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tx_count"]) -> MetaOapg.properties.tx_count: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vid"]) -> MetaOapg.properties.vid: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["date"], typing_extensions.Literal["pair"], typing_extensions.Literal["reserve_0"], typing_extensions.Literal["reserve_1"], typing_extensions.Literal["reserve_usd"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["tx_count"], typing_extensions.Literal["vid"], ]):
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
    def get_item_oapg(self, name: typing_extensions.Literal["date"]) -> typing.Union[MetaOapg.properties.date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["pair"]) -> typing.Union[MetaOapg.properties.pair, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["reserve_0"]) -> typing.Union[MetaOapg.properties.reserve_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["reserve_1"]) -> typing.Union[MetaOapg.properties.reserve_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["reserve_usd"]) -> typing.Union[MetaOapg.properties.reserve_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_token_0"]) -> typing.Union[MetaOapg.properties.volume_token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_token_1"]) -> typing.Union[MetaOapg.properties.volume_token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_usd"]) -> typing.Union[MetaOapg.properties.volume_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tx_count"]) -> typing.Union[MetaOapg.properties.tx_count, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vid"]) -> typing.Union[MetaOapg.properties.vid, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["date"], typing_extensions.Literal["pair"], typing_extensions.Literal["reserve_0"], typing_extensions.Literal["reserve_1"], typing_extensions.Literal["reserve_usd"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["tx_count"], typing_extensions.Literal["vid"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        date: typing.Union[MetaOapg.properties.date, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        pair: typing.Union[MetaOapg.properties.pair, None, str, schemas.Unset] = schemas.unset,
        reserve_0: typing.Union[MetaOapg.properties.reserve_0, None, str, schemas.Unset] = schemas.unset,
        reserve_1: typing.Union[MetaOapg.properties.reserve_1, None, str, schemas.Unset] = schemas.unset,
        reserve_usd: typing.Union[MetaOapg.properties.reserve_usd, None, str, schemas.Unset] = schemas.unset,
        volume_token_0: typing.Union[MetaOapg.properties.volume_token_0, None, str, schemas.Unset] = schemas.unset,
        volume_token_1: typing.Union[MetaOapg.properties.volume_token_1, None, str, schemas.Unset] = schemas.unset,
        volume_usd: typing.Union[MetaOapg.properties.volume_usd, None, str, schemas.Unset] = schemas.unset,
        tx_count: typing.Union[MetaOapg.properties.tx_count, None, str, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'SushiswapPairHourDataDTO':
        return super().__new__(
            cls,
            *args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            id=id,
            date=date,
            pair=pair,
            reserve_0=reserve_0,
            reserve_1=reserve_1,
            reserve_usd=reserve_usd,
            volume_token_0=volume_token_0,
            volume_token_1=volume_token_1,
            volume_usd=volume_usd,
            tx_count=tx_count,
            vid=vid,
            _configuration=_configuration,
        )
