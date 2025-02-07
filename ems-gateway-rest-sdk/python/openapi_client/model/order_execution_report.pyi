# coding: utf-8

"""
    EMS - REST API

    This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside>   # noqa: E501

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


class OrderExecutionReport(
    schemas.ComposedSchema,
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    The order execution report object.
    """


    class MetaOapg:
        
        
        class all_of_1(
            schemas.DictSchema
        ):
        
        
            class MetaOapg:
                required = {
                    "amount_open",
                    "time_order",
                    "client_order_id_format_exchange",
                    "amount_filled",
                    "status",
                }
                
                class properties:
                    client_order_id_format_exchange = schemas.StrSchema
                    exchange_order_id = schemas.StrSchema
                    amount_open = schemas.NumberSchema
                    amount_filled = schemas.NumberSchema
                    avg_px = schemas.NumberSchema
                
                    @staticmethod
                    def status() -> typing.Type['OrdStatus']:
                        return OrdStatus
                    
                    
                    class status_history(
                        schemas.ListSchema
                    ):
                    
                    
                        class MetaOapg:
                            
                            
                            class items(
                                schemas.ListSchema
                            ):
                            
                            
                                class MetaOapg:
                                    items = schemas.StrSchema
                            
                                def __new__(
                                    cls,
                                    arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, str, ]], typing.List[typing.Union[MetaOapg.items, str, ]]],
                                    _configuration: typing.Optional[schemas.Configuration] = None,
                                ) -> 'items':
                                    return super().__new__(
                                        cls,
                                        arg,
                                        _configuration=_configuration,
                                    )
                            
                                def __getitem__(self, i: int) -> MetaOapg.items:
                                    return super().__getitem__(i)
                    
                        def __new__(
                            cls,
                            arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, list, tuple, ]], typing.List[typing.Union[MetaOapg.items, list, tuple, ]]],
                            _configuration: typing.Optional[schemas.Configuration] = None,
                        ) -> 'status_history':
                            return super().__new__(
                                cls,
                                arg,
                                _configuration=_configuration,
                            )
                    
                        def __getitem__(self, i: int) -> MetaOapg.items:
                            return super().__getitem__(i)
                    error_message = schemas.StrSchema
                    
                    
                    class fills(
                        schemas.ListSchema
                    ):
                    
                    
                        class MetaOapg:
                            
                            @staticmethod
                            def items() -> typing.Type['Fills']:
                                return Fills
                    
                        def __new__(
                            cls,
                            arg: typing.Union[typing.Tuple['Fills'], typing.List['Fills']],
                            _configuration: typing.Optional[schemas.Configuration] = None,
                        ) -> 'fills':
                            return super().__new__(
                                cls,
                                arg,
                                _configuration=_configuration,
                            )
                    
                        def __getitem__(self, i: int) -> 'Fills':
                            return super().__getitem__(i)
                    __annotations__ = {
                        "client_order_id_format_exchange": client_order_id_format_exchange,
                        "exchange_order_id": exchange_order_id,
                        "amount_open": amount_open,
                        "amount_filled": amount_filled,
                        "avg_px": avg_px,
                        "status": status,
                        "status_history": status_history,
                        "error_message": error_message,
                        "fills": fills,
                    }
            
            amount_open: MetaOapg.properties.amount_open
            time_order: schemas.AnyTypeSchema
            client_order_id_format_exchange: MetaOapg.properties.client_order_id_format_exchange
            amount_filled: MetaOapg.properties.amount_filled
            status: 'OrdStatus'
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["client_order_id_format_exchange"]) -> MetaOapg.properties.client_order_id_format_exchange: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["exchange_order_id"]) -> MetaOapg.properties.exchange_order_id: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["amount_open"]) -> MetaOapg.properties.amount_open: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["amount_filled"]) -> MetaOapg.properties.amount_filled: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["avg_px"]) -> MetaOapg.properties.avg_px: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["status"]) -> 'OrdStatus': ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["status_history"]) -> MetaOapg.properties.status_history: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["error_message"]) -> MetaOapg.properties.error_message: ...
            
            @typing.overload
            def __getitem__(self, name: typing_extensions.Literal["fills"]) -> MetaOapg.properties.fills: ...
            
            @typing.overload
            def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
            
            def __getitem__(self, name: typing.Union[typing_extensions.Literal["client_order_id_format_exchange", "exchange_order_id", "amount_open", "amount_filled", "avg_px", "status", "status_history", "error_message", "fills", ], str]):
                # dict_instance[name] accessor
                return super().__getitem__(name)
            
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["client_order_id_format_exchange"]) -> MetaOapg.properties.client_order_id_format_exchange: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["exchange_order_id"]) -> typing.Union[MetaOapg.properties.exchange_order_id, schemas.Unset]: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["amount_open"]) -> MetaOapg.properties.amount_open: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["amount_filled"]) -> MetaOapg.properties.amount_filled: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["avg_px"]) -> typing.Union[MetaOapg.properties.avg_px, schemas.Unset]: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["status"]) -> 'OrdStatus': ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["status_history"]) -> typing.Union[MetaOapg.properties.status_history, schemas.Unset]: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["error_message"]) -> typing.Union[MetaOapg.properties.error_message, schemas.Unset]: ...
            
            @typing.overload
            def get_item_oapg(self, name: typing_extensions.Literal["fills"]) -> typing.Union[MetaOapg.properties.fills, schemas.Unset]: ...
            
            @typing.overload
            def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
            
            def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["client_order_id_format_exchange", "exchange_order_id", "amount_open", "amount_filled", "avg_px", "status", "status_history", "error_message", "fills", ], str]):
                return super().get_item_oapg(name)
            
        
            def __new__(
                cls,
                *args: typing.Union[dict, frozendict.frozendict, ],
                amount_open: typing.Union[MetaOapg.properties.amount_open, decimal.Decimal, int, float, ],
                time_order: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
                client_order_id_format_exchange: typing.Union[MetaOapg.properties.client_order_id_format_exchange, str, ],
                amount_filled: typing.Union[MetaOapg.properties.amount_filled, decimal.Decimal, int, float, ],
                status: 'OrdStatus',
                exchange_order_id: typing.Union[MetaOapg.properties.exchange_order_id, str, schemas.Unset] = schemas.unset,
                avg_px: typing.Union[MetaOapg.properties.avg_px, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
                status_history: typing.Union[MetaOapg.properties.status_history, list, tuple, schemas.Unset] = schemas.unset,
                error_message: typing.Union[MetaOapg.properties.error_message, str, schemas.Unset] = schemas.unset,
                fills: typing.Union[MetaOapg.properties.fills, list, tuple, schemas.Unset] = schemas.unset,
                _configuration: typing.Optional[schemas.Configuration] = None,
                **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
            ) -> 'all_of_1':
                return super().__new__(
                    cls,
                    *args,
                    amount_open=amount_open,
                    time_order=time_order,
                    client_order_id_format_exchange=client_order_id_format_exchange,
                    amount_filled=amount_filled,
                    status=status,
                    exchange_order_id=exchange_order_id,
                    avg_px=avg_px,
                    status_history=status_history,
                    error_message=error_message,
                    fills=fills,
                    _configuration=_configuration,
                    **kwargs,
                )
        
        @classmethod
        @functools.lru_cache()
        def all_of(cls):
            # we need this here to make our import statements work
            # we must store _composed_schemas in here so the code is only run
            # when we invoke this method. If we kept this at the class
            # level we would get an error because the class level
            # code would be run when this module is imported, and these composed
            # classes don't exist yet because their module has not finished
            # loading
            return [
                OrderNewSingleRequest,
                cls.all_of_1,
            ]


    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'OrderExecutionReport':
        return super().__new__(
            cls,
            *args,
            _configuration=_configuration,
            **kwargs,
        )

from openapi_client.model.fills import Fills
from openapi_client.model.ord_status import OrdStatus
from openapi_client.model.order_new_single_request import OrderNewSingleRequest
