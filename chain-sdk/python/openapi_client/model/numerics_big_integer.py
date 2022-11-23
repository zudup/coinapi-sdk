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


class NumericsBigInteger(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """


    class MetaOapg:
        
        class properties:
            is_power_of_two = schemas.BoolSchema
            is_zero = schemas.BoolSchema
            is_one = schemas.BoolSchema
            is_even = schemas.BoolSchema
            sign = schemas.Int32Schema
            __annotations__ = {
                "is_power_of_two": is_power_of_two,
                "is_zero": is_zero,
                "is_one": is_one,
                "is_even": is_even,
                "sign": sign,
            }
        additional_properties = schemas.NotAnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_power_of_two"]) -> MetaOapg.properties.is_power_of_two: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_zero"]) -> MetaOapg.properties.is_zero: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_one"]) -> MetaOapg.properties.is_one: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_even"]) -> MetaOapg.properties.is_even: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sign"]) -> MetaOapg.properties.sign: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["is_power_of_two"], typing_extensions.Literal["is_zero"], typing_extensions.Literal["is_one"], typing_extensions.Literal["is_even"], typing_extensions.Literal["sign"], ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_power_of_two"]) -> typing.Union[MetaOapg.properties.is_power_of_two, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_zero"]) -> typing.Union[MetaOapg.properties.is_zero, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_one"]) -> typing.Union[MetaOapg.properties.is_one, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_even"]) -> typing.Union[MetaOapg.properties.is_even, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sign"]) -> typing.Union[MetaOapg.properties.sign, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["is_power_of_two"], typing_extensions.Literal["is_zero"], typing_extensions.Literal["is_one"], typing_extensions.Literal["is_even"], typing_extensions.Literal["sign"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        is_power_of_two: typing.Union[MetaOapg.properties.is_power_of_two, bool, schemas.Unset] = schemas.unset,
        is_zero: typing.Union[MetaOapg.properties.is_zero, bool, schemas.Unset] = schemas.unset,
        is_one: typing.Union[MetaOapg.properties.is_one, bool, schemas.Unset] = schemas.unset,
        is_even: typing.Union[MetaOapg.properties.is_even, bool, schemas.Unset] = schemas.unset,
        sign: typing.Union[MetaOapg.properties.sign, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'NumericsBigInteger':
        return super().__new__(
            cls,
            *args,
            is_power_of_two=is_power_of_two,
            is_zero=is_zero,
            is_one=is_one,
            is_even=is_even,
            sign=sign,
            _configuration=_configuration,
        )
