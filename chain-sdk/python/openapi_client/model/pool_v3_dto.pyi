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


class PoolV3DTO(
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
            created_at_timestamp = schemas.DateTimeSchema
            
            
            class token_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'token_0':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class token_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'token_1':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def fee_tier() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def liquidity() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def sqrt_price() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def fee_growth_global_0x128() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def fee_growth_global_1x128() -> typing.Type['BigInteger']:
                return BigInteger
            
            
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
        
            @staticmethod
            def tick() -> typing.Type['BigInteger']:
                return BigInteger
        
            @staticmethod
            def observation_index() -> typing.Type['BigInteger']:
                return BigInteger
            
            
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
        
            @staticmethod
            def tx_count() -> typing.Type['BigInteger']:
                return BigInteger
            
            
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
            
            
            class total_value_locked_token_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_value_locked_token_0':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class total_value_locked_token_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_value_locked_token_1':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class total_value_locked_eth(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_value_locked_eth':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class total_value_locked_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_value_locked_usd':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class total_value_locked_usd_untracked(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'total_value_locked_usd_untracked':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity_provider_count(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity_provider_count':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            evaluated_ask = schemas.Float64Schema
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "vid": vid,
                "id": id,
                "created_at_timestamp": created_at_timestamp,
                "token_0": token_0,
                "token_1": token_1,
                "fee_tier": fee_tier,
                "liquidity": liquidity,
                "sqrt_price": sqrt_price,
                "fee_growth_global_0x128": fee_growth_global_0x128,
                "fee_growth_global_1x128": fee_growth_global_1x128,
                "token_0_price": token_0_price,
                "token_1_price": token_1_price,
                "tick": tick,
                "observation_index": observation_index,
                "volume_token_0": volume_token_0,
                "volume_token_1": volume_token_1,
                "volume_usd": volume_usd,
                "untracked_volume_usd": untracked_volume_usd,
                "fees_usd": fees_usd,
                "tx_count": tx_count,
                "collected_fees_token_0": collected_fees_token_0,
                "collected_fees_token_1": collected_fees_token_1,
                "collected_fees_usd": collected_fees_usd,
                "total_value_locked_token_0": total_value_locked_token_0,
                "total_value_locked_token_1": total_value_locked_token_1,
                "total_value_locked_eth": total_value_locked_eth,
                "total_value_locked_usd": total_value_locked_usd,
                "total_value_locked_usd_untracked": total_value_locked_usd_untracked,
                "liquidity_provider_count": liquidity_provider_count,
                "evaluated_ask": evaluated_ask,
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
    def __getitem__(self, name: typing_extensions.Literal["created_at_timestamp"]) -> MetaOapg.properties.created_at_timestamp: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_0"]) -> MetaOapg.properties.token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_1"]) -> MetaOapg.properties.token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_tier"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sqrt_price"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_growth_global_0x128"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_growth_global_1x128"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_0_price"]) -> MetaOapg.properties.token_0_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["token_1_price"]) -> MetaOapg.properties.token_1_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tick"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["observation_index"]) -> 'BigInteger': ...
    
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
    def __getitem__(self, name: typing_extensions.Literal["tx_count"]) -> 'BigInteger': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["collected_fees_token_0"]) -> MetaOapg.properties.collected_fees_token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["collected_fees_token_1"]) -> MetaOapg.properties.collected_fees_token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["collected_fees_usd"]) -> MetaOapg.properties.collected_fees_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_token_0"]) -> MetaOapg.properties.total_value_locked_token_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_token_1"]) -> MetaOapg.properties.total_value_locked_token_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_eth"]) -> MetaOapg.properties.total_value_locked_eth: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_usd"]) -> MetaOapg.properties.total_value_locked_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["total_value_locked_usd_untracked"]) -> MetaOapg.properties.total_value_locked_usd_untracked: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity_provider_count"]) -> MetaOapg.properties.liquidity_provider_count: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["evaluated_ask"]) -> MetaOapg.properties.evaluated_ask: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["created_at_timestamp"], typing_extensions.Literal["token_0"], typing_extensions.Literal["token_1"], typing_extensions.Literal["fee_tier"], typing_extensions.Literal["liquidity"], typing_extensions.Literal["sqrt_price"], typing_extensions.Literal["fee_growth_global_0x128"], typing_extensions.Literal["fee_growth_global_1x128"], typing_extensions.Literal["token_0_price"], typing_extensions.Literal["token_1_price"], typing_extensions.Literal["tick"], typing_extensions.Literal["observation_index"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["untracked_volume_usd"], typing_extensions.Literal["fees_usd"], typing_extensions.Literal["tx_count"], typing_extensions.Literal["collected_fees_token_0"], typing_extensions.Literal["collected_fees_token_1"], typing_extensions.Literal["collected_fees_usd"], typing_extensions.Literal["total_value_locked_token_0"], typing_extensions.Literal["total_value_locked_token_1"], typing_extensions.Literal["total_value_locked_eth"], typing_extensions.Literal["total_value_locked_usd"], typing_extensions.Literal["total_value_locked_usd_untracked"], typing_extensions.Literal["liquidity_provider_count"], typing_extensions.Literal["evaluated_ask"], ]):
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
    def get_item_oapg(self, name: typing_extensions.Literal["created_at_timestamp"]) -> typing.Union[MetaOapg.properties.created_at_timestamp, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_0"]) -> typing.Union[MetaOapg.properties.token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_1"]) -> typing.Union[MetaOapg.properties.token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_tier"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sqrt_price"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_growth_global_0x128"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_growth_global_1x128"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_0_price"]) -> typing.Union[MetaOapg.properties.token_0_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["token_1_price"]) -> typing.Union[MetaOapg.properties.token_1_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tick"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["observation_index"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
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
    def get_item_oapg(self, name: typing_extensions.Literal["tx_count"]) -> typing.Union['BigInteger', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["collected_fees_token_0"]) -> typing.Union[MetaOapg.properties.collected_fees_token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["collected_fees_token_1"]) -> typing.Union[MetaOapg.properties.collected_fees_token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["collected_fees_usd"]) -> typing.Union[MetaOapg.properties.collected_fees_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_token_0"]) -> typing.Union[MetaOapg.properties.total_value_locked_token_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_token_1"]) -> typing.Union[MetaOapg.properties.total_value_locked_token_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_eth"]) -> typing.Union[MetaOapg.properties.total_value_locked_eth, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_usd"]) -> typing.Union[MetaOapg.properties.total_value_locked_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["total_value_locked_usd_untracked"]) -> typing.Union[MetaOapg.properties.total_value_locked_usd_untracked, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity_provider_count"]) -> typing.Union[MetaOapg.properties.liquidity_provider_count, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["evaluated_ask"]) -> typing.Union[MetaOapg.properties.evaluated_ask, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["vid"], typing_extensions.Literal["id"], typing_extensions.Literal["created_at_timestamp"], typing_extensions.Literal["token_0"], typing_extensions.Literal["token_1"], typing_extensions.Literal["fee_tier"], typing_extensions.Literal["liquidity"], typing_extensions.Literal["sqrt_price"], typing_extensions.Literal["fee_growth_global_0x128"], typing_extensions.Literal["fee_growth_global_1x128"], typing_extensions.Literal["token_0_price"], typing_extensions.Literal["token_1_price"], typing_extensions.Literal["tick"], typing_extensions.Literal["observation_index"], typing_extensions.Literal["volume_token_0"], typing_extensions.Literal["volume_token_1"], typing_extensions.Literal["volume_usd"], typing_extensions.Literal["untracked_volume_usd"], typing_extensions.Literal["fees_usd"], typing_extensions.Literal["tx_count"], typing_extensions.Literal["collected_fees_token_0"], typing_extensions.Literal["collected_fees_token_1"], typing_extensions.Literal["collected_fees_usd"], typing_extensions.Literal["total_value_locked_token_0"], typing_extensions.Literal["total_value_locked_token_1"], typing_extensions.Literal["total_value_locked_eth"], typing_extensions.Literal["total_value_locked_usd"], typing_extensions.Literal["total_value_locked_usd_untracked"], typing_extensions.Literal["liquidity_provider_count"], typing_extensions.Literal["evaluated_ask"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        created_at_timestamp: typing.Union[MetaOapg.properties.created_at_timestamp, str, datetime, schemas.Unset] = schemas.unset,
        token_0: typing.Union[MetaOapg.properties.token_0, None, str, schemas.Unset] = schemas.unset,
        token_1: typing.Union[MetaOapg.properties.token_1, None, str, schemas.Unset] = schemas.unset,
        fee_tier: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        liquidity: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        sqrt_price: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        fee_growth_global_0x128: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        fee_growth_global_1x128: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        token_0_price: typing.Union[MetaOapg.properties.token_0_price, None, str, schemas.Unset] = schemas.unset,
        token_1_price: typing.Union[MetaOapg.properties.token_1_price, None, str, schemas.Unset] = schemas.unset,
        tick: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        observation_index: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        volume_token_0: typing.Union[MetaOapg.properties.volume_token_0, None, str, schemas.Unset] = schemas.unset,
        volume_token_1: typing.Union[MetaOapg.properties.volume_token_1, None, str, schemas.Unset] = schemas.unset,
        volume_usd: typing.Union[MetaOapg.properties.volume_usd, None, str, schemas.Unset] = schemas.unset,
        untracked_volume_usd: typing.Union[MetaOapg.properties.untracked_volume_usd, None, str, schemas.Unset] = schemas.unset,
        fees_usd: typing.Union[MetaOapg.properties.fees_usd, None, str, schemas.Unset] = schemas.unset,
        tx_count: typing.Union['BigInteger', schemas.Unset] = schemas.unset,
        collected_fees_token_0: typing.Union[MetaOapg.properties.collected_fees_token_0, None, str, schemas.Unset] = schemas.unset,
        collected_fees_token_1: typing.Union[MetaOapg.properties.collected_fees_token_1, None, str, schemas.Unset] = schemas.unset,
        collected_fees_usd: typing.Union[MetaOapg.properties.collected_fees_usd, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_token_0: typing.Union[MetaOapg.properties.total_value_locked_token_0, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_token_1: typing.Union[MetaOapg.properties.total_value_locked_token_1, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_eth: typing.Union[MetaOapg.properties.total_value_locked_eth, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_usd: typing.Union[MetaOapg.properties.total_value_locked_usd, None, str, schemas.Unset] = schemas.unset,
        total_value_locked_usd_untracked: typing.Union[MetaOapg.properties.total_value_locked_usd_untracked, None, str, schemas.Unset] = schemas.unset,
        liquidity_provider_count: typing.Union[MetaOapg.properties.liquidity_provider_count, None, str, schemas.Unset] = schemas.unset,
        evaluated_ask: typing.Union[MetaOapg.properties.evaluated_ask, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'PoolV3DTO':
        return super().__new__(
            cls,
            *args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            vid=vid,
            id=id,
            created_at_timestamp=created_at_timestamp,
            token_0=token_0,
            token_1=token_1,
            fee_tier=fee_tier,
            liquidity=liquidity,
            sqrt_price=sqrt_price,
            fee_growth_global_0x128=fee_growth_global_0x128,
            fee_growth_global_1x128=fee_growth_global_1x128,
            token_0_price=token_0_price,
            token_1_price=token_1_price,
            tick=tick,
            observation_index=observation_index,
            volume_token_0=volume_token_0,
            volume_token_1=volume_token_1,
            volume_usd=volume_usd,
            untracked_volume_usd=untracked_volume_usd,
            fees_usd=fees_usd,
            tx_count=tx_count,
            collected_fees_token_0=collected_fees_token_0,
            collected_fees_token_1=collected_fees_token_1,
            collected_fees_usd=collected_fees_usd,
            total_value_locked_token_0=total_value_locked_token_0,
            total_value_locked_token_1=total_value_locked_token_1,
            total_value_locked_eth=total_value_locked_eth,
            total_value_locked_usd=total_value_locked_usd,
            total_value_locked_usd_untracked=total_value_locked_usd_untracked,
            liquidity_provider_count=liquidity_provider_count,
            evaluated_ask=evaluated_ask,
            _configuration=_configuration,
        )

from openapi_client.model.big_integer import BigInteger
