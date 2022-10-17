# coding: utf-8

"""
    OnChain API

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


class TickV3DTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """


    class MetaOapg:
        
        class properties:
            entry_time = schemas.DateTimeSchema
            recv_time = schemas.DateTimeSchema
            block_number = schemas.Int64Schema
            vid = schemas.Int64Schema
            
            
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
            
            
            class pool_address(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'pool_address':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def tick_idx() -> typing.Type['BigInteger']:
                return BigInteger
            
            
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
        
            @staticmethod
            def liquidity_gross() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def liquidity_net() -> typing.Type['BigInteger']:
                return BigInteger
            
            
            class price_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'price_0':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class price_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'price_1':
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
            
            
            class untracked_volume_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'untracked_volume_usd':
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
            
            
            class collected_fees_token_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'collected_fees_token_0':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class collected_fees_token_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'collected_fees_token_1':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class collected_fees_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'collected_fees_usd':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            created_at_timestamp = schemas.DateTimeSchema
        
            @staticmethod
            def liquidity_provider_count() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def fee_growth_outside_0x128() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def fee_growth_outside_1x128() -> typing.Type['BigInteger']:
                return BigInteger
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "vid": vid,
                "id": id,
                "pool_address": pool_address,
                "tick_idx": tick_idx,
                "pool": pool,
                "liquidity_gross": liquidity_gross,
                "liquidity_net": liquidity_net,
                "price_0": price_0,
                "price_1": price_1,
                "volume_token_0": volume_token_0,
                "volume_token_1": volume_token_1,
                "volume_usd": volume_usd,
                "untracked_volume_usd": untracked_volume_usd,
                "fees_usd": fees_usd,
                "collected_fees_token_0": collected_fees_token_0,
                "collected_fees_token_1": collected_fees_token_1,
                "collected_fees_usd": collected_fees_usd,
                "created_at_timestamp": created_at_timestamp,
                "liquidity_provider_count": liquidity_provider_count,
                "fee_growth_outside_0x128": fee_growth_outside_0x128,
                "fee_growth_outside_1x128": fee_growth_outside_1x128,
            }
        additional_properties = schemas.NotAnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["entry_time"]) -> MetaOapg.properties.entry_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["recv_time"]) -> MetaOapg.properties.recv_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["block_number"]) -> MetaOapg.properties.block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vid"]) -> MetaOapg.properties.vid: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["pool_address"]) -> MetaOapg.properties.pool_address: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tick_idx"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["pool"]) -> MetaOapg.properties.pool: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_gross"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_net"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price_0"]) -> MetaOapg.properties.price_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price_1"]) -> MetaOapg.properties.price_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_token_0"]) -> MetaOapg.properties.volume_token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_token_1"]) -> MetaOapg.properties.volume_token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["volume_usd"]) -> MetaOapg.properties.volume_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["untracked_volume_usd"]) -> MetaOapg.properties.untracked_volume_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fees_usd"]) -> MetaOapg.properties.fees_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["collected_fees_token_0"]) -> MetaOapg.properties.collected_fees_token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["collected_fees_token_1"]) -> MetaOapg.properties.collected_fees_token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["collected_fees_usd"]) -> MetaOapg.properties.collected_fees_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_at_timestamp"]) -> MetaOapg.properties.created_at_timestamp: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_provider_count"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_growth_outside_0x128"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_growth_outside_1x128"]) -> 'BigInteger': ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["pool_address"], typing_extensions.Literal["tick_idx"], typing_extensions.Literal["pool"], typing_extensions.Literal["liquidity_gross"], typing_extensions.Literal["liquidity_net"], typing_extensions.Literal["price_0"], typing_extensions.Literal["price_1"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["untracked_volume_usd"], typing_extensions.Literal["fees_usd"], typing_extensions.Literal["collected_fees_token_0"], typing_extensions.Literal["collected_fees_token_1"], typing_extensions.Literal["collected_fees_usd"], typing_extensions.Literal["created_at_timestamp"], typing_extensions.Literal["liquidity_provider_count"], typing_extensions.Literal["fee_growth_outside_0x128"], typing_extensions.Literal["fee_growth_outside_1x128"], ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["entry_time"]) -> typing.Union[MetaOapg.properties.entry_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["recv_time"]) -> typing.Union[MetaOapg.properties.recv_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["block_number"]) -> typing.Union[MetaOapg.properties.block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vid"]) -> typing.Union[MetaOapg.properties.vid, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["pool_address"]) -> typing.Union[MetaOapg.properties.pool_address, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tick_idx"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["pool"]) -> typing.Union[MetaOapg.properties.pool, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_gross"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_net"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price_0"]) -> typing.Union[MetaOapg.properties.price_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price_1"]) -> typing.Union[MetaOapg.properties.price_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_token_0"]) -> typing.Union[MetaOapg.properties.volume_token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_token_1"]) -> typing.Union[MetaOapg.properties.volume_token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["volume_usd"]) -> typing.Union[MetaOapg.properties.volume_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["untracked_volume_usd"]) -> typing.Union[MetaOapg.properties.untracked_volume_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fees_usd"]) -> typing.Union[MetaOapg.properties.fees_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["collected_fees_token_0"]) -> typing.Union[MetaOapg.properties.collected_fees_token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["collected_fees_token_1"]) -> typing.Union[MetaOapg.properties.collected_fees_token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["collected_fees_usd"]) -> typing.Union[MetaOapg.properties.collected_fees_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_at_timestamp"]) -> typing.Union[MetaOapg.properties.created_at_timestamp, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_provider_count"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_growth_outside_0x128"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_growth_outside_1x128"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["pool_address"], typing_extensions.Literal["tick_idx"], typing_extensions.Literal["pool"], typing_extensions.Literal["liquidity_gross"], typing_extensions.Literal["liquidity_net"], typing_extensions.Literal["price_0"], typing_extensions.Literal["price_1"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["untracked_volume_usd"], typing_extensions.Literal["fees_usd"], typing_extensions.Literal["collected_fees_token_0"], typing_extensions.Literal["collected_fees_token_1"], typing_extensions.Literal["collected_fees_usd"], typing_extensions.Literal["created_at_timestamp"], typing_extensions.Literal["liquidity_provider_count"], typing_extensions.Literal["fee_growth_outside_0x128"], typing_extensions.Literal["fee_growth_outside_1x128"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        pool_address: typing.Union[MetaOapg.properties.pool_address, None, str, schemas.Unset] = schemas.unset,
        tick_idx: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        pool: typing.Union[MetaOapg.properties.pool, None, str, schemas.Unset] = schemas.unset,
        liquidity_gross: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        liquidity_net: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        price_0: typing.Union[MetaOapg.properties.price_0, None, str, schemas.Unset] = schemas.unset,
        price_1: typing.Union[MetaOapg.properties.price_1, None, str, schemas.Unset] = schemas.unset,
        volume_token_0: typing.Union[MetaOapg.properties.volume_token_0, None, str, schemas.Unset] = schemas.unset,
        volume_token_1: typing.Union[MetaOapg.properties.volume_token_1, None, str, schemas.Unset] = schemas.unset,
        volume_usd: typing.Union[MetaOapg.properties.volume_usd, None, str, schemas.Unset] = schemas.unset,
        untracked_volume_usd: typing.Union[MetaOapg.properties.untracked_volume_usd, None, str, schemas.Unset] = schemas.unset,
        fees_usd: typing.Union[MetaOapg.properties.fees_usd, None, str, schemas.Unset] = schemas.unset,
        collected_fees_token_0: typing.Union[MetaOapg.properties.collected_fees_token_0, None, str, schemas.Unset] = schemas.unset,
        collected_fees_token_1: typing.Union[MetaOapg.properties.collected_fees_token_1, None, str, schemas.Unset] = schemas.unset,
        collected_fees_usd: typing.Union[MetaOapg.properties.collected_fees_usd, None, str, schemas.Unset] = schemas.unset,
        created_at_timestamp: typing.Union[MetaOapg.properties.created_at_timestamp, str, datetime, schemas.Unset] = schemas.unset,
        liquidity_provider_count: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        fee_growth_outside_0x128: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        fee_growth_outside_1x128: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'TickV3DTO':
        return super().__new__(
            cls,
            *args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            vid=vid,
            id=id,
            pool_address=pool_address,
            tick_idx=tick_idx,
            pool=pool,
            liquidity_gross=liquidity_gross,
            liquidity_net=liquidity_net,
            price_0=price_0,
            price_1=price_1,
            volume_token_0=volume_token_0,
            volume_token_1=volume_token_1,
            volume_usd=volume_usd,
            untracked_volume_usd=untracked_volume_usd,
            fees_usd=fees_usd,
            collected_fees_token_0=collected_fees_token_0,
            collected_fees_token_1=collected_fees_token_1,
            collected_fees_usd=collected_fees_usd,
            created_at_timestamp=created_at_timestamp,
            liquidity_provider_count=liquidity_provider_count,
            fee_growth_outside_0x128=fee_growth_outside_0x128,
            fee_growth_outside_1x128=fee_growth_outside_1x128,
            _configuration=_configuration,
        )

from openapi_client.model.big_integer import BigInteger
