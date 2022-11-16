<a name="__pageTop"></a>
# openapi_client.apis.tags.uniswap_v2_api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_pools__current**](#uniswap_v2_get_pools__current) | **get** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_swaps__current**](#uniswap_v2_get_swaps__current) | **get** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_tokens__current**](#uniswap_v2_get_tokens__current) | **get** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥

# **uniswap_v2_get_pools__current**
<a name="uniswap_v2_get_pools__current"></a>
> [UniswapV2PairV2DTO] uniswap_v2_get_pools__current()

Pools (current) 🔥

Gets pools.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_pair_v2_dto import UniswapV2PairV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # Pools (current) 🔥
        api_response = api_instance.uniswap_v2_get_pools__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_pools__current: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
filter_pool_id | FilterPoolIdSchema | | optional


# FilterPoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_pools__current.ApiResponseFor200) | successful operation

#### uniswap_v2_get_pools__current.ApiResponseFor200
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
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) | [**UniswapV2PairV2DTO**]({{complexTypePrefix}}UniswapV2PairV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_swaps__current**
<a name="uniswap_v2_get_swaps__current"></a>
> [UniswapV2SwapV2DTO] uniswap_v2_get_swaps__current()

Swaps (current) 🔥

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_swap_v2_dto import UniswapV2SwapV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Swaps (current) 🔥
        api_response = api_instance.uniswap_v2_get_swaps__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_swaps__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_swaps__current.ApiResponseFor200) | successful operation

#### uniswap_v2_get_swaps__current.ApiResponseFor200
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
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) | [**UniswapV2SwapV2DTO**]({{complexTypePrefix}}UniswapV2SwapV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v2_get_tokens__current**
<a name="uniswap_v2_get_tokens__current"></a>
> [UniswapV2TokenV2DTO] uniswap_v2_get_tokens__current()

Tokens (current) 🔥

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.uniswap_v2_token_v2_dto import UniswapV2TokenV2DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v2_api.UniswapV2Api(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Tokens (current) 🔥
        api_response = api_instance.uniswap_v2_get_tokens__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->uniswap_v2_get_tokens__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v2_get_tokens__current.ApiResponseFor200) | successful operation

#### uniswap_v2_get_tokens__current.ApiResponseFor200
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
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) | [**UniswapV2TokenV2DTO**]({{complexTypePrefix}}UniswapV2TokenV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

