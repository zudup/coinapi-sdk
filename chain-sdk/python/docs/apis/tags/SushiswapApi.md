<a name="__pageTop"></a>
# openapi_client.apis.tags.sushiswap_api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curve_get_exchanges__current**](#curve_get_exchanges__current) | **get** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dex_get_trades__current**](#dex_get_trades__current) | **get** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswap_get_pools__current**](#sushiswap_get_pools__current) | **get** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswap_get_swaps__current**](#sushiswap_get_swaps__current) | **get** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswap_get_tokens__current**](#sushiswap_get_tokens__current) | **get** /dapps/sushiswap/tokens/current | Tokens (current) 🔥

# **curve_get_exchanges__current**
<a name="curve_get_exchanges__current"></a>
> [CurveExchangeDTO] curve_get_exchanges__current()

Exchanges (current) 🔥

Gets exchanges.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.curve_exchange_dto import CurveExchangeDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Exchanges (current) 🔥
        api_response = api_instance.curve_get_exchanges__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->curve_get_exchanges__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#curve_get_exchanges__current.ApiResponseFor200) | successful operation

#### curve_get_exchanges__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) | [**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) | [**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) | [**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) | [**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) | [**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) | [**CurveExchangeDTO**]({{complexTypePrefix}}CurveExchangeDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **dex_get_trades__current**
<a name="dex_get_trades__current"></a>
> [DexTradeDTO] dex_get_trades__current()

Trades (current) 🔥

Gets trades.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.dex_trade_dto import DexTradeDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Trades (current) 🔥
        api_response = api_instance.dex_get_trades__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->dex_get_trades__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#dex_get_trades__current.ApiResponseFor200) | successful operation

#### dex_get_trades__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) | [**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) | [**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) | [**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) | [**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) | [**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) | [**DexTradeDTO**]({{complexTypePrefix}}DexTradeDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_pools__current**
<a name="sushiswap_get_pools__current"></a>
> [SushiswapPairDTO] sushiswap_get_pools__current()

Pools (current) 🔥

Gets pools.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_dto import SushiswapPairDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Pools (current) 🔥
        api_response = api_instance.sushiswap_get_pools__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pools__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pools__current.ApiResponseFor200) | successful operation

#### sushiswap_get_pools__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) | [**SushiswapPairDTO**]({{complexTypePrefix}}SushiswapPairDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_swaps__current**
<a name="sushiswap_get_swaps__current"></a>
> [SushiswapSwapDTO] sushiswap_get_swaps__current()

Swaps (current) 🔥

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_swap_dto import SushiswapSwapDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Swaps (current) 🔥
        api_response = api_instance.sushiswap_get_swaps__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_swaps__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_swaps__current.ApiResponseFor200) | successful operation

#### sushiswap_get_swaps__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) | [**SushiswapSwapDTO**]({{complexTypePrefix}}SushiswapSwapDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_tokens__current**
<a name="sushiswap_get_tokens__current"></a>
> [SushiswapTokenDTO] sushiswap_get_tokens__current()

Tokens (current) 🔥

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_token_dto import SushiswapTokenDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = sushiswap_api.SushiswapApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Tokens (current) 🔥
        api_response = api_instance.sushiswap_get_tokens__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_tokens__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_tokens__current.ApiResponseFor200) | successful operation

#### sushiswap_get_tokens__current.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyTextPlain, SchemaFor200ResponseBodyApplicationJson, SchemaFor200ResponseBodyTextJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyTextPlain

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) | [**SushiswapTokenDTO**]({{complexTypePrefix}}SushiswapTokenDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

