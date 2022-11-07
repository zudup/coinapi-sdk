<a name="__pageTop"></a>
# openapi_client.apis.tags.sushiswap_api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswap_get_bundles__historical**](#sushiswap_get_bundles__historical) | **get** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**sushiswap_get_burns__historical**](#sushiswap_get_burns__historical) | **get** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**sushiswap_get_day_data__historical**](#sushiswap_get_day_data__historical) | **get** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**sushiswap_get_factory__historical**](#sushiswap_get_factory__historical) | **get** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**sushiswap_get_hour_data__historical**](#sushiswap_get_hour_data__historical) | **get** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**sushiswap_get_liquidity_position__historical**](#sushiswap_get_liquidity_position__historical) | **get** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**sushiswap_get_liquidity_position_snapshot__historical**](#sushiswap_get_liquidity_position_snapshot__historical) | **get** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**sushiswap_get_mints__historical**](#sushiswap_get_mints__historical) | **get** /dapps/sushiswap/mints/historical | GetMints (historical)
[**sushiswap_get_pools__current**](#sushiswap_get_pools__current) | **get** /dapps/sushiswap/pools/current | GetPools (current)
[**sushiswap_get_pools__historical**](#sushiswap_get_pools__historical) | **get** /dapps/sushiswap/pools/historical | GetPools (historical)
[**sushiswap_get_pools_day_data__historical**](#sushiswap_get_pools_day_data__historical) | **get** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**sushiswap_get_pools_hour_data__historical**](#sushiswap_get_pools_hour_data__historical) | **get** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**sushiswap_get_swaps__current**](#sushiswap_get_swaps__current) | **get** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**sushiswap_get_swaps__historical**](#sushiswap_get_swaps__historical) | **get** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**sushiswap_get_tokens__current**](#sushiswap_get_tokens__current) | **get** /dapps/sushiswap/tokens/current | GetTokens (current)
[**sushiswap_get_tokens__historical**](#sushiswap_get_tokens__historical) | **get** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**sushiswap_get_tokens_day_data__historical**](#sushiswap_get_tokens_day_data__historical) | **get** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**sushiswap_get_transactions__historical**](#sushiswap_get_transactions__historical) | **get** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**sushiswap_get_users__historical**](#sushiswap_get_users__historical) | **get** /dapps/sushiswap/users/historical | GetUsers (historical)

# **sushiswap_get_bundles__historical**
<a name="sushiswap_get_bundles__historical"></a>
> [SushiswapBundleDTO] sushiswap_get_bundles__historical()

GetBundles (historical)

Gets bundles.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_bundle_dto import SushiswapBundleDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetBundles (historical)
        api_response = api_instance.sushiswap_get_bundles__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_bundles__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_bundles__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_bundles__historical.ApiResponseFor200
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
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) | [**SushiswapBundleDTO**]({{complexTypePrefix}}SushiswapBundleDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_burns__historical**
<a name="sushiswap_get_burns__historical"></a>
> [SushiswapBurnDTO] sushiswap_get_burns__historical()

GetBurns (historical)

Gets burns.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_burn_dto import SushiswapBurnDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetBurns (historical)
        api_response = api_instance.sushiswap_get_burns__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_burns__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_burns__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_burns__historical.ApiResponseFor200
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
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) | [**SushiswapBurnDTO**]({{complexTypePrefix}}SushiswapBurnDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_day_data__historical**
<a name="sushiswap_get_day_data__historical"></a>
> [SushiswapDayDataDTO] sushiswap_get_day_data__historical()

GetDayData (historical)

Gets day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_day_data_dto import SushiswapDayDataDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetDayData (historical)
        api_response = api_instance.sushiswap_get_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_day_data__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_day_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_day_data__historical.ApiResponseFor200
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
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) | [**SushiswapDayDataDTO**]({{complexTypePrefix}}SushiswapDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_factory__historical**
<a name="sushiswap_get_factory__historical"></a>
> [SushiswapFactoryDTO] sushiswap_get_factory__historical()

GetFactory (historical)

Gets factory.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_factory_dto import SushiswapFactoryDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetFactory (historical)
        api_response = api_instance.sushiswap_get_factory__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_factory__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_factory__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_factory__historical.ApiResponseFor200
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
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) | [**SushiswapFactoryDTO**]({{complexTypePrefix}}SushiswapFactoryDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_hour_data__historical**
<a name="sushiswap_get_hour_data__historical"></a>
> [SushiswapHourDataDTO] sushiswap_get_hour_data__historical()

GetHourData (historical)

Gets hour data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_hour_data_dto import SushiswapHourDataDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetHourData (historical)
        api_response = api_instance.sushiswap_get_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_hour_data__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_hour_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_hour_data__historical.ApiResponseFor200
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
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) | [**SushiswapHourDataDTO**]({{complexTypePrefix}}SushiswapHourDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_liquidity_position__historical**
<a name="sushiswap_get_liquidity_position__historical"></a>
> [SushiswapLiquidityPositionDTO] sushiswap_get_liquidity_position__historical()

GetLiquidityPosition (historical)

Gets liquidity position.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_liquidity_position_dto import SushiswapLiquidityPositionDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetLiquidityPosition (historical)
        api_response = api_instance.sushiswap_get_liquidity_position__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_liquidity_position__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_liquidity_position__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_liquidity_position__historical.ApiResponseFor200
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
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) | [**SushiswapLiquidityPositionDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_liquidity_position_snapshot__historical**
<a name="sushiswap_get_liquidity_position_snapshot__historical"></a>
> [SushiswapLiquidityPositionSnapshotDTO] sushiswap_get_liquidity_position_snapshot__historical()

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_liquidity_position_snapshot_dto import SushiswapLiquidityPositionSnapshotDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetLiquidityPositionSnapshot (historical)
        api_response = api_instance.sushiswap_get_liquidity_position_snapshot__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_liquidity_position_snapshot__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_liquidity_position_snapshot__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_liquidity_position_snapshot__historical.ApiResponseFor200
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
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) | [**SushiswapLiquidityPositionSnapshotDTO**]({{complexTypePrefix}}SushiswapLiquidityPositionSnapshotDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_mints__historical**
<a name="sushiswap_get_mints__historical"></a>
> [SushiswapMintDTO] sushiswap_get_mints__historical()

GetMints (historical)

Gets mints.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_mint_dto import SushiswapMintDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetMints (historical)
        api_response = api_instance.sushiswap_get_mints__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_mints__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_mints__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_mints__historical.ApiResponseFor200
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
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) | [**SushiswapMintDTO**]({{complexTypePrefix}}SushiswapMintDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_pools__current**
<a name="sushiswap_get_pools__current"></a>
> [SushiswapPairDTO] sushiswap_get_pools__current()

GetPools (current)

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
        # GetPools (current)
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

# **sushiswap_get_pools__historical**
<a name="sushiswap_get_pools__historical"></a>
> [SushiswapPairDTO] sushiswap_get_pools__historical()

GetPools (historical)

Gets list of pools for given filters.

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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetPools (historical)
        api_response = api_instance.sushiswap_get_pools__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pools__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pools__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_pools__historical.ApiResponseFor200
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

# **sushiswap_get_pools_day_data__historical**
<a name="sushiswap_get_pools_day_data__historical"></a>
> [SushiswapPairDayDataDTO] sushiswap_get_pools_day_data__historical()

GetPoolsDayData (historical)

Gets pools day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_day_data_dto import SushiswapPairDayDataDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetPoolsDayData (historical)
        api_response = api_instance.sushiswap_get_pools_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pools_day_data__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pools_day_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_pools_day_data__historical.ApiResponseFor200
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
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) | [**SushiswapPairDayDataDTO**]({{complexTypePrefix}}SushiswapPairDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_pools_hour_data__historical**
<a name="sushiswap_get_pools_hour_data__historical"></a>
> [SushiswapPairHourDataDTO] sushiswap_get_pools_hour_data__historical()

GetPoolsHourData (historical)

Gets pools tracked each our.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_pair_hour_data_dto import SushiswapPairHourDataDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetPoolsHourData (historical)
        api_response = api_instance.sushiswap_get_pools_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_pools_hour_data__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_pools_hour_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_pools_hour_data__historical.ApiResponseFor200
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
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) | [**SushiswapPairHourDataDTO**]({{complexTypePrefix}}SushiswapPairHourDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_swaps__current**
<a name="sushiswap_get_swaps__current"></a>
> [SushiswapSwapDTO] sushiswap_get_swaps__current()

GetSwaps (current)

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
        # GetSwaps (current)
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

# **sushiswap_get_swaps__historical**
<a name="sushiswap_get_swaps__historical"></a>
> [SushiswapSwapDTO] sushiswap_get_swaps__historical()

GetSwaps (historical)

Gets list of swaps for given filters.

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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetSwaps (historical)
        api_response = api_instance.sushiswap_get_swaps__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_swaps__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
poolId | PoolIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# PoolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_swaps__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_swaps__historical.ApiResponseFor200
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

GetTokens (current)

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
        # GetTokens (current)
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

# **sushiswap_get_tokens__historical**
<a name="sushiswap_get_tokens__historical"></a>
> [SushiswapTokenDTO] sushiswap_get_tokens__historical()

GetTokens (historical)

Gets list of tokens for given filters.

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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        # GetTokens (historical)
        api_response = api_instance.sushiswap_get_tokens__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_tokens__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
tokenId | TokenIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# TokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_tokens__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_tokens__historical.ApiResponseFor200
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

# **sushiswap_get_tokens_day_data__historical**
<a name="sushiswap_get_tokens_day_data__historical"></a>
> [SushiswapTokenDayDataDTO] sushiswap_get_tokens_day_data__historical()

GetTokensDayData (historical)

Gets tokens day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_token_day_data_dto import SushiswapTokenDayDataDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        # GetTokensDayData (historical)
        api_response = api_instance.sushiswap_get_tokens_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_tokens_day_data__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
tokenId | TokenIdSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# TokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_tokens_day_data__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_tokens_day_data__historical.ApiResponseFor200
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
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) | [**SushiswapTokenDayDataDTO**]({{complexTypePrefix}}SushiswapTokenDayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_transactions__historical**
<a name="sushiswap_get_transactions__historical"></a>
> [SushiswapTransactionDTO] sushiswap_get_transactions__historical()

GetTransactions (historical)

Gets transactions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_transaction_dto import SushiswapTransactionDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetTransactions (historical)
        api_response = api_instance.sushiswap_get_transactions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_transactions__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_transactions__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_transactions__historical.ApiResponseFor200
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
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) | [**SushiswapTransactionDTO**]({{complexTypePrefix}}SushiswapTransactionDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **sushiswap_get_users__historical**
<a name="sushiswap_get_users__historical"></a>
> [SushiswapUserDTO] sushiswap_get_users__historical()

GetUsers (historical)

Gets users.

### Example

```python
import openapi_client
from openapi_client.apis.tags import sushiswap_api
from openapi_client.model.sushiswap_user_dto import SushiswapUserDTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetUsers (historical)
        api_response = api_instance.sushiswap_get_users__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling SushiswapApi->sushiswap_get_users__historical: %s\n" % e)
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
startBlock | StartBlockSchema | | optional
endBlock | EndBlockSchema | | optional
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional


# StartBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# EndBlockSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | value must be a 64 bit integer

# StartDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

# EndDateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, datetime,  | str,  |  | value must conform to RFC-3339 date-time

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#sushiswap_get_users__historical.ApiResponseFor200) | successful operation

#### sushiswap_get_users__historical.ApiResponseFor200
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
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) | [**SushiswapUserDTO**]({{complexTypePrefix}}SushiswapUserDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

