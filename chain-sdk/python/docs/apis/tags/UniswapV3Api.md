<a name="__pageTop"></a>
# openapi_client.apis.tags.uniswap_v3_api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_uniswapv3_bundle_current_get**](#chains_chain_id_dapps_uniswapv3_bundle_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chains_chain_id_dapps_uniswapv3_burns_current_get**](#chains_chain_id_dapps_uniswapv3_burns_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chains_chain_id_dapps_uniswapv3_factory_current_get**](#chains_chain_id_dapps_uniswapv3_factory_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chains_chain_id_dapps_uniswapv3_mints_current_get**](#chains_chain_id_dapps_uniswapv3_mints_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chains_chain_id_dapps_uniswapv3_pools_current_get**](#chains_chain_id_dapps_uniswapv3_pools_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**](#chains_chain_id_dapps_uniswapv3_pools_day_data_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**](#chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**](#chains_chain_id_dapps_uniswapv3_position_snapshots_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chains_chain_id_dapps_uniswapv3_positions_current_get**](#chains_chain_id_dapps_uniswapv3_positions_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chains_chain_id_dapps_uniswapv3_swaps_current_get**](#chains_chain_id_dapps_uniswapv3_swaps_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chains_chain_id_dapps_uniswapv3_ticks_current_get**](#chains_chain_id_dapps_uniswapv3_ticks_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**](#chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chains_chain_id_dapps_uniswapv3_tokens_current_get**](#chains_chain_id_dapps_uniswapv3_tokens_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**](#chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**](#chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**](#chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get) | **get** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData

# **chains_chain_id_dapps_uniswapv3_bundle_current_get**
<a name="chains_chain_id_dapps_uniswapv3_bundle_current_get"></a>
> [BundleV3DTO] chains_chain_id_dapps_uniswapv3_bundle_current_get(chain_id)

GetBundles

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.bundle_v3_dto import BundleV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetBundles
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_bundle_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_bundle_current_get: %s\n" % e)
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_bundle_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_bundle_current_get.ApiResponseFor200
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
[**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) | [**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) | [**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) | [**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) | [**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) | [**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) | [**BundleV3DTO**]({{complexTypePrefix}}BundleV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_burns_current_get**
<a name="chains_chain_id_dapps_uniswapv3_burns_current_get"></a>
> [BurnV3DTO] chains_chain_id_dapps_uniswapv3_burns_current_get(chain_id)

GetBurns

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.burn_v3_dto import BurnV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetBurns
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_burns_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_burns_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetBurns
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_burns_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_burns_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_burns_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_burns_current_get.ApiResponseFor200
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
[**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) | [**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) | [**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) | [**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) | [**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) | [**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) | [**BurnV3DTO**]({{complexTypePrefix}}BurnV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_factory_current_get**
<a name="chains_chain_id_dapps_uniswapv3_factory_current_get"></a>
> [FactoryV3DTO] chains_chain_id_dapps_uniswapv3_factory_current_get(chain_id)

GetFactory

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.factory_v3_dto import FactoryV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetFactory
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_factory_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_factory_current_get: %s\n" % e)
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_factory_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_factory_current_get.ApiResponseFor200
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
[**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) | [**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) | [**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) | [**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) | [**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) | [**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) | [**FactoryV3DTO**]({{complexTypePrefix}}FactoryV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_mints_current_get**
<a name="chains_chain_id_dapps_uniswapv3_mints_current_get"></a>
> [MintV3DTO] chains_chain_id_dapps_uniswapv3_mints_current_get(chain_id)

GetMints

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.mint_v3_dto import MintV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetMints
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_mints_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_mints_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetMints
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_mints_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_mints_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_mints_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_mints_current_get.ApiResponseFor200
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
[**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) | [**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) | [**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) | [**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) | [**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) | [**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) | [**MintV3DTO**]({{complexTypePrefix}}MintV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_current_get**
<a name="chains_chain_id_dapps_uniswapv3_pools_current_get"></a>
> [PoolV3DTO] chains_chain_id_dapps_uniswapv3_pools_current_get(chain_id)

GetPools

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.pool_v3_dto import PoolV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetPools
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_pools_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPools
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_pools_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_pools_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_pools_current_get.ApiResponseFor200
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
[**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) | [**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) | [**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) | [**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) | [**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) | [**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) | [**PoolV3DTO**]({{complexTypePrefix}}PoolV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**
<a name="chains_chain_id_dapps_uniswapv3_pools_day_data_current_get"></a>
> [PoolDayDataV3DTO] chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(chain_id)

GetPoolsDayData

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.pool_day_data_v3_dto import PoolDayDataV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetPoolsDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_day_data_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPoolsDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_day_data_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_pools_day_data_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_pools_day_data_current_get.ApiResponseFor200
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
[**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) | [**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) | [**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) | [**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) | [**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) | [**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) | [**PoolDayDataV3DTO**]({{complexTypePrefix}}PoolDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**
<a name="chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get"></a>
> [PoolHourDataV3DTO] chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(chain_id)

GetPoolsHourData

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.pool_hour_data_v3_dto import PoolHourDataV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetPoolsHourData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPoolsHourData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get.ApiResponseFor200
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
[**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) | [**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) | [**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) | [**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) | [**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) | [**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) | [**PoolHourDataV3DTO**]({{complexTypePrefix}}PoolHourDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**
<a name="chains_chain_id_dapps_uniswapv3_position_snapshots_current_get"></a>
> [PositionSnapshotV3DTO] chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(chain_id)

GetPositionSnapshot

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.position_snapshot_v3_dto import PositionSnapshotV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetPositionSnapshot
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_position_snapshots_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPositionSnapshot
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_position_snapshots_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_position_snapshots_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_position_snapshots_current_get.ApiResponseFor200
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
[**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) | [**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) | [**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) | [**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) | [**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) | [**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) | [**PositionSnapshotV3DTO**]({{complexTypePrefix}}PositionSnapshotV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_positions_current_get**
<a name="chains_chain_id_dapps_uniswapv3_positions_current_get"></a>
> [PositionV3DTO] chains_chain_id_dapps_uniswapv3_positions_current_get(chain_id)

GetPositions

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.position_v3_dto import PositionV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetPositions
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_positions_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_positions_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPositions
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_positions_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_positions_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_positions_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_positions_current_get.ApiResponseFor200
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
[**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) | [**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) | [**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) | [**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) | [**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) | [**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) | [**PositionV3DTO**]({{complexTypePrefix}}PositionV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_swaps_current_get**
<a name="chains_chain_id_dapps_uniswapv3_swaps_current_get"></a>
> [SwapV3DTO] chains_chain_id_dapps_uniswapv3_swaps_current_get(chain_id)

GetSwaps

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.swap_v3_dto import SwapV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetSwaps
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_swaps_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_swaps_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetSwaps
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_swaps_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_swaps_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_swaps_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_swaps_current_get.ApiResponseFor200
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
[**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) | [**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) | [**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) | [**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) | [**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) | [**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) | [**SwapV3DTO**]({{complexTypePrefix}}SwapV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_ticks_current_get**
<a name="chains_chain_id_dapps_uniswapv3_ticks_current_get"></a>
> [TickV3DTO] chains_chain_id_dapps_uniswapv3_ticks_current_get(chain_id)

GetTicks

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.tick_v3_dto import TickV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetTicks
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_ticks_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetTicks
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_ticks_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_ticks_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_ticks_current_get.ApiResponseFor200
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
[**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) | [**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) | [**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) | [**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) | [**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) | [**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) | [**TickV3DTO**]({{complexTypePrefix}}TickV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**
<a name="chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get"></a>
> [TickDayDataV3DTO] chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(chain_id)

GetTicksDayData

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.tick_day_data_v3_dto import TickDayDataV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetTicksDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetTicksDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get.ApiResponseFor200
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
[**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) | [**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) | [**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) | [**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) | [**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) | [**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) | [**TickDayDataV3DTO**]({{complexTypePrefix}}TickDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_current_get**
<a name="chains_chain_id_dapps_uniswapv3_tokens_current_get"></a>
> [TokenV3DTO] chains_chain_id_dapps_uniswapv3_tokens_current_get(chain_id)

GetTokens

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.token_v3_dto import TokenV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetTokens
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_tokens_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_token_id': "filter_token_id_example",
    }
    try:
        # GetTokens
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_tokens_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
filter_token_id | FilterTokenIdSchema | | optional


# FilterTokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_tokens_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_tokens_current_get.ApiResponseFor200
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
[**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) | [**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) | [**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) | [**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) | [**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) | [**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) | [**TokenV3DTO**]({{complexTypePrefix}}TokenV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**
<a name="chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get"></a>
> [TokenV3DayDataDTO] chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(chain_id)

GetTokensDayData

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.token_v3_day_data_dto import TokenV3DayDataDTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetTokensDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_token_id': "filter_token_id_example",
    }
    try:
        # GetTokensDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
filter_token_id | FilterTokenIdSchema | | optional


# FilterTokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get.ApiResponseFor200
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
[**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) | [**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) | [**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) | [**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) | [**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) | [**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) | [**TokenV3DayDataDTO**]({{complexTypePrefix}}TokenV3DayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**
<a name="chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get"></a>
> [TokenHourDataV3DTO] chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(chain_id)

GetTokensHourData

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.token_hour_data_v3_dto import TokenHourDataV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        # GetTokensHourData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'filter_token_id': "filter_token_id_example",
    }
    try:
        # GetTokensHourData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('text/plain', 'application/json', 'text/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
filter_token_id | FilterTokenIdSchema | | optional


# FilterTokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get.ApiResponseFor200
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
[**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) | [**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) | [**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) | [**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) | [**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) | [**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) | [**TokenHourDataV3DTO**]({{complexTypePrefix}}TokenHourDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**
<a name="chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get"></a>
> [UniswapDayDataV3DTO] chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(chain_id)

GetUniswapDayData

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_day_data_v3_dto import UniswapDayDataV3DTO
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = uniswap_v3_api.UniswapV3Api(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    try:
        # GetUniswapDayData
        api_response = api_instance.chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get: %s\n" % e)
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get.ApiResponseFor200) | successful operation

#### chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get.ApiResponseFor200
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
[**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) | [**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) | [**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) | [**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) | [**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) | [**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) | [**UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

