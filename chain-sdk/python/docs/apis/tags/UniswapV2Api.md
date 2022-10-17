<a name="__pageTop"></a>
# openapi_client.apis.tags.uniswap_v2_api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_uniswapv2_pools_current_get**](#chains_chain_id_dapps_uniswapv2_pools_current_get) | **get** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chains_chain_id_dapps_uniswapv2_swaps_current_get**](#chains_chain_id_dapps_uniswapv2_swaps_current_get) | **get** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chains_chain_id_dapps_uniswapv2_tokens_current_get**](#chains_chain_id_dapps_uniswapv2_tokens_current_get) | **get** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens

# **chains_chain_id_dapps_uniswapv2_pools_current_get**
<a name="chains_chain_id_dapps_uniswapv2_pools_current_get"></a>
> [PairV2DTO] chains_chain_id_dapps_uniswapv2_pools_current_get(chain_id)

GetPools

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.pair_v2_dto import PairV2DTO
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

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetPools
        api_response = api_instance.chains_chain_id_dapps_uniswapv2_pools_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_pools_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
chain_id | ChainIdSchema | | 

# ChainIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv2_pools_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv2_pools_current_get.ApiResponseFor200
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
[**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) | [**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) | [**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) | [**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) | [**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) | [**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) | [**PairV2DTO**]({{complexTypePrefix}}PairV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv2_swaps_current_get**
<a name="chains_chain_id_dapps_uniswapv2_swaps_current_get"></a>
> [SwapV2DTO] chains_chain_id_dapps_uniswapv2_swaps_current_get(chain_id)

GetSwaps

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.swap_v2_dto import SwapV2DTO
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

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetSwaps
        api_response = api_instance.chains_chain_id_dapps_uniswapv2_swaps_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_swaps_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
chain_id | ChainIdSchema | | 

# ChainIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv2_swaps_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv2_swaps_current_get.ApiResponseFor200
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
[**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) | [**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) | [**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) | [**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) | [**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) | [**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) | [**SwapV2DTO**]({{complexTypePrefix}}SwapV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv2_tokens_current_get**
<a name="chains_chain_id_dapps_uniswapv2_tokens_current_get"></a>
> [TokenV2DTO] chains_chain_id_dapps_uniswapv2_tokens_current_get(chain_id)

GetTokens

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v2_api
from openapi_client.model.token_v2_dto import TokenV2DTO
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

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetTokens
        api_response = api_instance.chains_chain_id_dapps_uniswapv2_tokens_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_tokens_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
chain_id | ChainIdSchema | | 

# ChainIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv2_tokens_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv2_tokens_current_get.ApiResponseFor200
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
[**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) | [**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) | [**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) | [**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) | [**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) | [**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) | [**TokenV2DTO**]({{complexTypePrefix}}TokenV2DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

