<a name="__pageTop"></a>
# openapi_client.apis.tags.sushiswap_api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_sushiswap_pools_current_get**](#chains_chain_id_dapps_sushiswap_pools_current_get) | **get** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chains_chain_id_dapps_sushiswap_swaps_current_get**](#chains_chain_id_dapps_sushiswap_swaps_current_get) | **get** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chains_chain_id_dapps_sushiswap_tokens_current_get**](#chains_chain_id_dapps_sushiswap_tokens_current_get) | **get** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens

# **chains_chain_id_dapps_sushiswap_pools_current_get**
<a name="chains_chain_id_dapps_sushiswap_pools_current_get"></a>
> [PairDTO] chains_chain_id_dapps_sushiswap_pools_current_get(chain_id)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.pair_dto import PairDTO
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

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetPools
        api_response = api_instance.chains_chain_id_dapps_sushiswap_pools_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->chains_chain_id_dapps_sushiswap_pools_current_get: %s\n" % e)
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_sushiswap_pools_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_sushiswap_pools_current_get.ApiResponseFor200
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
[**PairDTO**]({{complexTypePrefix}}PairDTO.md) | [**PairDTO**]({{complexTypePrefix}}PairDTO.md) | [**PairDTO**]({{complexTypePrefix}}PairDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PairDTO**]({{complexTypePrefix}}PairDTO.md) | [**PairDTO**]({{complexTypePrefix}}PairDTO.md) | [**PairDTO**]({{complexTypePrefix}}PairDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PairDTO**]({{complexTypePrefix}}PairDTO.md) | [**PairDTO**]({{complexTypePrefix}}PairDTO.md) | [**PairDTO**]({{complexTypePrefix}}PairDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_sushiswap_swaps_current_get**
<a name="chains_chain_id_dapps_sushiswap_swaps_current_get"></a>
> [SwapDTO] chains_chain_id_dapps_sushiswap_swaps_current_get(chain_id)

GetSwaps

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.swap_dto import SwapDTO
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

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetSwaps
        api_response = api_instance.chains_chain_id_dapps_sushiswap_swaps_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->chains_chain_id_dapps_sushiswap_swaps_current_get: %s\n" % e)
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_sushiswap_swaps_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_sushiswap_swaps_current_get.ApiResponseFor200
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
[**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) | [**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) | [**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) | [**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) | [**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) | [**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) | [**SwapDTO**]({{complexTypePrefix}}SwapDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_sushiswap_tokens_current_get**
<a name="chains_chain_id_dapps_sushiswap_tokens_current_get"></a>
> [TokenDTO] chains_chain_id_dapps_sushiswap_tokens_current_get(chain_id)

GetTokens

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.token_dto import TokenDTO
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

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetTokens
        api_response = api_instance.chains_chain_id_dapps_sushiswap_tokens_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->chains_chain_id_dapps_sushiswap_tokens_current_get: %s\n" % e)
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_sushiswap_tokens_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_sushiswap_tokens_current_get.ApiResponseFor200
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
[**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) | [**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) | [**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) | [**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) | [**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) | [**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) | [**TokenDTO**]({{complexTypePrefix}}TokenDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

