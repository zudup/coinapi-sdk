<a name="__pageTop"></a>
# openapi_client.apis.tags.uniswap_v3_api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v3_get_bundles__current**](#uniswap_v3_get_bundles__current) | **get** /dapps/uniswapv3/bundles/current | GetBundles (current)
[**uniswap_v3_get_bundles__historical**](#uniswap_v3_get_bundles__historical) | **get** /dapps/uniswapv3/bundles/historical | GetBundles (historical)
[**uniswap_v3_get_burns__current**](#uniswap_v3_get_burns__current) | **get** /dapps/uniswapv3/burns/current | GetBurns (current)
[**uniswap_v3_get_burns__historical**](#uniswap_v3_get_burns__historical) | **get** /dapps/uniswapv3/burns/historical | GetBurns (historical)
[**uniswap_v3_get_day_data__current**](#uniswap_v3_get_day_data__current) | **get** /dapps/uniswapv3/dayData/current | GetDayData (current)
[**uniswap_v3_get_day_data__historical**](#uniswap_v3_get_day_data__historical) | **get** /dapps/uniswapv3/dayData/historical | GetDayData (historical)
[**uniswap_v3_get_factory__current**](#uniswap_v3_get_factory__current) | **get** /dapps/uniswapv3/factory/current | GetFactory (current)
[**uniswap_v3_get_factory__historical**](#uniswap_v3_get_factory__historical) | **get** /dapps/uniswapv3/factory/historical | GetFactory (historical)
[**uniswap_v3_get_mints__current**](#uniswap_v3_get_mints__current) | **get** /dapps/uniswapv3/mints/current | GetMints (current)
[**uniswap_v3_get_mints__historical**](#uniswap_v3_get_mints__historical) | **get** /dapps/uniswapv3/mints/historical | GetMints (historical)
[**uniswap_v3_get_pools__current**](#uniswap_v3_get_pools__current) | **get** /dapps/uniswapv3/pools/current | GetPools (current) 🔥
[**uniswap_v3_get_pools__historical**](#uniswap_v3_get_pools__historical) | **get** /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥
[**uniswap_v3_get_pools_day_data__current**](#uniswap_v3_get_pools_day_data__current) | **get** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current)
[**uniswap_v3_get_pools_day_data__historical**](#uniswap_v3_get_pools_day_data__historical) | **get** /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical)
[**uniswap_v3_get_pools_hour_data__current**](#uniswap_v3_get_pools_hour_data__current) | **get** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current)
[**uniswap_v3_get_pools_hour_data__historical**](#uniswap_v3_get_pools_hour_data__historical) | **get** /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical)
[**uniswap_v3_get_positions__current**](#uniswap_v3_get_positions__current) | **get** /dapps/uniswapv3/positions/current | GetPositions (current)
[**uniswap_v3_get_positions__historical**](#uniswap_v3_get_positions__historical) | **get** /dapps/uniswapv3/positions/historical | GetPositions (historical)
[**uniswap_v3_get_positions_snaphots__historical**](#uniswap_v3_get_positions_snaphots__historical) | **get** /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical)
[**uniswap_v3_get_positions_snapshots__current**](#uniswap_v3_get_positions_snapshots__current) | **get** /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current)
[**uniswap_v3_get_swaps__current**](#uniswap_v3_get_swaps__current) | **get** /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥
[**uniswap_v3_get_swaps__historical**](#uniswap_v3_get_swaps__historical) | **get** /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥
[**uniswap_v3_get_ticks__current**](#uniswap_v3_get_ticks__current) | **get** /dapps/uniswapv3/ticks/current | GetTicks (current)
[**uniswap_v3_get_ticks__historical**](#uniswap_v3_get_ticks__historical) | **get** /dapps/uniswapv3/ticks/historical | GetTicks (historical)
[**uniswap_v3_get_ticks_day_data__current**](#uniswap_v3_get_ticks_day_data__current) | **get** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current)
[**uniswap_v3_get_ticks_day_data__historical**](#uniswap_v3_get_ticks_day_data__historical) | **get** /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical)
[**uniswap_v3_get_tokens__current**](#uniswap_v3_get_tokens__current) | **get** /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥
[**uniswap_v3_get_tokens__historical**](#uniswap_v3_get_tokens__historical) | **get** /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥
[**uniswap_v3_get_tokens_day_data__current**](#uniswap_v3_get_tokens_day_data__current) | **get** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current)
[**uniswap_v3_get_tokens_day_data__historical**](#uniswap_v3_get_tokens_day_data__historical) | **get** /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical)
[**uniswap_v3_get_tokens_hour_data__current**](#uniswap_v3_get_tokens_hour_data__current) | **get** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current)
[**uniswap_v3_get_tokens_hour_data__historical**](#uniswap_v3_get_tokens_hour_data__historical) | **get** /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical)
[**uniswap_v3_get_transactions__historical**](#uniswap_v3_get_transactions__historical) | **get** /dapps/uniswapv3/transactions/historical | GetTransactions (historical)

# **uniswap_v3_get_bundles__current**
<a name="uniswap_v3_get_bundles__current"></a>
> [UniswapV3BundleV3DTO] uniswap_v3_get_bundles__current()

GetBundles (current)

Gets bundles.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_bundle_v3_dto import UniswapV3BundleV3DTO
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

    # example, this endpoint has no required or optional parameters
    try:
        # GetBundles (current)
        api_response = api_instance.uniswap_v3_get_bundles__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_bundles__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v3_get_bundles__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_bundles__current.ApiResponseFor200
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
[**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_bundles__historical**
<a name="uniswap_v3_get_bundles__historical"></a>
> [UniswapV3BundleV3DTO] uniswap_v3_get_bundles__historical()

GetBundles (historical)

Gets bundles.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_bundle_v3_dto import UniswapV3BundleV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetBundles (historical)
        api_response = api_instance.uniswap_v3_get_bundles__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_bundles__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_bundles__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_bundles__historical.ApiResponseFor200
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
[**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) | [**UniswapV3BundleV3DTO**]({{complexTypePrefix}}UniswapV3BundleV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_burns__current**
<a name="uniswap_v3_get_burns__current"></a>
> [UniswapV3BurnV3DTO] uniswap_v3_get_burns__current()

GetBurns (current)

Gets burns.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_burn_v3_dto import UniswapV3BurnV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetBurns (current)
        api_response = api_instance.uniswap_v3_get_burns__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_burns__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_burns__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_burns__current.ApiResponseFor200
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
[**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_burns__historical**
<a name="uniswap_v3_get_burns__historical"></a>
> [UniswapV3BurnV3DTO] uniswap_v3_get_burns__historical()

GetBurns (historical)

Gets burns.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_burn_v3_dto import UniswapV3BurnV3DTO
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
        api_response = api_instance.uniswap_v3_get_burns__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_burns__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_burns__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_burns__historical.ApiResponseFor200
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
[**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) | [**UniswapV3BurnV3DTO**]({{complexTypePrefix}}UniswapV3BurnV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_day_data__current**
<a name="uniswap_v3_get_day_data__current"></a>
> [UniswapV3UniswapDayDataV3DTO] uniswap_v3_get_day_data__current()

GetDayData (current)

Gets uniswapv3 day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_uniswap_day_data_v3_dto import UniswapV3UniswapDayDataV3DTO
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

    # example, this endpoint has no required or optional parameters
    try:
        # GetDayData (current)
        api_response = api_instance.uniswap_v3_get_day_data__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_day_data__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v3_get_day_data__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_day_data__current.ApiResponseFor200
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
[**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_day_data__historical**
<a name="uniswap_v3_get_day_data__historical"></a>
> [UniswapV3UniswapDayDataV3DTO] uniswap_v3_get_day_data__historical()

GetDayData (historical)

Gets uniswapv3 day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_uniswap_day_data_v3_dto import UniswapV3UniswapDayDataV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetDayData (historical)
        api_response = api_instance.uniswap_v3_get_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_day_data__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_day_data__historical.ApiResponseFor200
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
[**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) | [**UniswapV3UniswapDayDataV3DTO**]({{complexTypePrefix}}UniswapV3UniswapDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_factory__current**
<a name="uniswap_v3_get_factory__current"></a>
> [UniswapV3FactoryV3DTO] uniswap_v3_get_factory__current()

GetFactory (current)

Gets factory.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_factory_v3_dto import UniswapV3FactoryV3DTO
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

    # example, this endpoint has no required or optional parameters
    try:
        # GetFactory (current)
        api_response = api_instance.uniswap_v3_get_factory__current()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_factory__current: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v3_get_factory__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_factory__current.ApiResponseFor200
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
[**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_factory__historical**
<a name="uniswap_v3_get_factory__historical"></a>
> [UniswapV3FactoryV3DTO] uniswap_v3_get_factory__historical()

GetFactory (historical)

Gets factory.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_factory_v3_dto import UniswapV3FactoryV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetFactory (historical)
        api_response = api_instance.uniswap_v3_get_factory__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_factory__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_factory__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_factory__historical.ApiResponseFor200
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
[**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) | [**UniswapV3FactoryV3DTO**]({{complexTypePrefix}}UniswapV3FactoryV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_mints__current**
<a name="uniswap_v3_get_mints__current"></a>
> [UniswapV3MintV3DTO] uniswap_v3_get_mints__current()

GetMints (current)

Gets mints.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_mint_v3_dto import UniswapV3MintV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetMints (current)
        api_response = api_instance.uniswap_v3_get_mints__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_mints__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_mints__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_mints__current.ApiResponseFor200
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
[**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_mints__historical**
<a name="uniswap_v3_get_mints__historical"></a>
> [UniswapV3MintV3DTO] uniswap_v3_get_mints__historical()

GetMints (historical)

Gets mints.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_mint_v3_dto import UniswapV3MintV3DTO
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
        api_response = api_instance.uniswap_v3_get_mints__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_mints__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_mints__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_mints__historical.ApiResponseFor200
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
[**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) | [**UniswapV3MintV3DTO**]({{complexTypePrefix}}UniswapV3MintV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_pools__current**
<a name="uniswap_v3_get_pools__current"></a>
> [UniswapV3PoolV3DTO] uniswap_v3_get_pools__current()

GetPools (current) 🔥

Gets pools.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_pool_v3_dto import UniswapV3PoolV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPools (current) 🔥
        api_response = api_instance.uniswap_v3_get_pools__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_pools__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_pools__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_pools__current.ApiResponseFor200
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
[**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_pools__historical**
<a name="uniswap_v3_get_pools__historical"></a>
> [UniswapV3PoolV3DTO] uniswap_v3_get_pools__historical()

GetPools (historical) 🔥

Gets pools.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_pool_v3_dto import UniswapV3PoolV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetPools (historical) 🔥
        api_response = api_instance.uniswap_v3_get_pools__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_pools__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_pools__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_pools__historical.ApiResponseFor200
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
[**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) | [**UniswapV3PoolV3DTO**]({{complexTypePrefix}}UniswapV3PoolV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_pools_day_data__current**
<a name="uniswap_v3_get_pools_day_data__current"></a>
> [UniswapV3PoolDayDataV3DTO] uniswap_v3_get_pools_day_data__current()

GetPoolsDayData (current)

Gets pools day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_pool_day_data_v3_dto import UniswapV3PoolDayDataV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPoolsDayData (current)
        api_response = api_instance.uniswap_v3_get_pools_day_data__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_pools_day_data__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_pools_day_data__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_pools_day_data__current.ApiResponseFor200
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
[**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_pools_day_data__historical**
<a name="uniswap_v3_get_pools_day_data__historical"></a>
> [UniswapV3PoolDayDataV3DTO] uniswap_v3_get_pools_day_data__historical()

GetPoolsDayData (historical)

Gets pools day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_pool_day_data_v3_dto import UniswapV3PoolDayDataV3DTO
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
        api_response = api_instance.uniswap_v3_get_pools_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_pools_day_data__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_pools_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_pools_day_data__historical.ApiResponseFor200
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
[**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) | [**UniswapV3PoolDayDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_pools_hour_data__current**
<a name="uniswap_v3_get_pools_hour_data__current"></a>
> [UniswapV3PoolHourDataV3DTO] uniswap_v3_get_pools_hour_data__current()

GetPoolsHourData (current)

Gets pools hour data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_pool_hour_data_v3_dto import UniswapV3PoolHourDataV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPoolsHourData (current)
        api_response = api_instance.uniswap_v3_get_pools_hour_data__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_pools_hour_data__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_pools_hour_data__current.ApiResponseFor200
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
[**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_pools_hour_data__historical**
<a name="uniswap_v3_get_pools_hour_data__historical"></a>
> [UniswapV3PoolHourDataV3DTO] uniswap_v3_get_pools_hour_data__historical()

GetPoolsHourData (historical)

Gets pools hour data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_pool_hour_data_v3_dto import UniswapV3PoolHourDataV3DTO
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
        api_response = api_instance.uniswap_v3_get_pools_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_pools_hour_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_pools_hour_data__historical.ApiResponseFor200
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
[**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) | [**UniswapV3PoolHourDataV3DTO**]({{complexTypePrefix}}UniswapV3PoolHourDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_positions__current**
<a name="uniswap_v3_get_positions__current"></a>
> [UniswapV3PositionV3DTO] uniswap_v3_get_positions__current()

GetPositions (current)

Gets positions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_position_v3_dto import UniswapV3PositionV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPositions (current)
        api_response = api_instance.uniswap_v3_get_positions__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_positions__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_positions__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_positions__current.ApiResponseFor200
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
[**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_positions__historical**
<a name="uniswap_v3_get_positions__historical"></a>
> [UniswapV3PositionV3DTO] uniswap_v3_get_positions__historical()

GetPositions (historical)

Gets positions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_position_v3_dto import UniswapV3PositionV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetPositions (historical)
        api_response = api_instance.uniswap_v3_get_positions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_positions__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_positions__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_positions__historical.ApiResponseFor200
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
[**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) | [**UniswapV3PositionV3DTO**]({{complexTypePrefix}}UniswapV3PositionV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_positions_snaphots__historical**
<a name="uniswap_v3_get_positions_snaphots__historical"></a>
> [UniswapV3PositionSnapshotV3DTO] uniswap_v3_get_positions_snaphots__historical()

GetPositionsSnaphots (historical)

Gets positions snapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_position_snapshot_v3_dto import UniswapV3PositionSnapshotV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetPositionsSnaphots (historical)
        api_response = api_instance.uniswap_v3_get_positions_snaphots__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_positions_snaphots__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_positions_snaphots__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_positions_snaphots__historical.ApiResponseFor200
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
[**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_positions_snapshots__current**
<a name="uniswap_v3_get_positions_snapshots__current"></a>
> [UniswapV3PositionSnapshotV3DTO] uniswap_v3_get_positions_snapshots__current()

GetPositionsSnapshots (current)

Gets positions snapshots.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_position_snapshot_v3_dto import UniswapV3PositionSnapshotV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetPositionsSnapshots (current)
        api_response = api_instance.uniswap_v3_get_positions_snapshots__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_positions_snapshots__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_positions_snapshots__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_positions_snapshots__current.ApiResponseFor200
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
[**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) | [**UniswapV3PositionSnapshotV3DTO**]({{complexTypePrefix}}UniswapV3PositionSnapshotV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_swaps__current**
<a name="uniswap_v3_get_swaps__current"></a>
> [UniswapV3SwapV3DTO] uniswap_v3_get_swaps__current()

GetSwaps (current) 🔥

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_swap_v3_dto import UniswapV3SwapV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetSwaps (current) 🔥
        api_response = api_instance.uniswap_v3_get_swaps__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_swaps__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_swaps__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_swaps__current.ApiResponseFor200
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
[**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_swaps__historical**
<a name="uniswap_v3_get_swaps__historical"></a>
> [UniswapV3SwapV3DTO] uniswap_v3_get_swaps__historical()

GetSwaps (historical) 🔥

Gets swaps.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_swap_v3_dto import UniswapV3SwapV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetSwaps (historical) 🔥
        api_response = api_instance.uniswap_v3_get_swaps__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_swaps__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_swaps__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_swaps__historical.ApiResponseFor200
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
[**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) | [**UniswapV3SwapV3DTO**]({{complexTypePrefix}}UniswapV3SwapV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_ticks__current**
<a name="uniswap_v3_get_ticks__current"></a>
> [UniswapV3TickV3DTO] uniswap_v3_get_ticks__current()

GetTicks (current)

Gets ticks.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_tick_v3_dto import UniswapV3TickV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetTicks (current)
        api_response = api_instance.uniswap_v3_get_ticks__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_ticks__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_ticks__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_ticks__current.ApiResponseFor200
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
[**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_ticks__historical**
<a name="uniswap_v3_get_ticks__historical"></a>
> [UniswapV3TickV3DTO] uniswap_v3_get_ticks__historical()

GetTicks (historical)

Gets ticks.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_tick_v3_dto import UniswapV3TickV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetTicks (historical)
        api_response = api_instance.uniswap_v3_get_ticks__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_ticks__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_ticks__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_ticks__historical.ApiResponseFor200
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
[**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) | [**UniswapV3TickV3DTO**]({{complexTypePrefix}}UniswapV3TickV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_ticks_day_data__current**
<a name="uniswap_v3_get_ticks_day_data__current"></a>
> [UniswapV3TickDayDataV3DTO] uniswap_v3_get_ticks_day_data__current()

GetTicksDayData (current)

Gets ticks day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_tick_day_data_v3_dto import UniswapV3TickDayDataV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_pool_id': "filter_pool_id_example",
    }
    try:
        # GetTicksDayData (current)
        api_response = api_instance.uniswap_v3_get_ticks_day_data__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__current: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_ticks_day_data__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_ticks_day_data__current.ApiResponseFor200
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
[**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_ticks_day_data__historical**
<a name="uniswap_v3_get_ticks_day_data__historical"></a>
> [UniswapV3TickDayDataV3DTO] uniswap_v3_get_ticks_day_data__historical()

GetTicksDayData (historical)

Gets ticks day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_tick_day_data_v3_dto import UniswapV3TickDayDataV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        # GetTicksDayData (historical)
        api_response = api_instance.uniswap_v3_get_ticks_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_ticks_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_ticks_day_data__historical.ApiResponseFor200
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
[**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) | [**UniswapV3TickDayDataV3DTO**]({{complexTypePrefix}}UniswapV3TickDayDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_tokens__current**
<a name="uniswap_v3_get_tokens__current"></a>
> [UniswapV3TokenV3DTO] uniswap_v3_get_tokens__current()

GetTokens (current) 🔥

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_token_v3_dto import UniswapV3TokenV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_token_id': "filter_token_id_example",
    }
    try:
        # GetTokens (current) 🔥
        api_response = api_instance.uniswap_v3_get_tokens__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_tokens__current: %s\n" % e)
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
filter_token_id | FilterTokenIdSchema | | optional


# FilterTokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v3_get_tokens__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_tokens__current.ApiResponseFor200
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
[**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_tokens__historical**
<a name="uniswap_v3_get_tokens__historical"></a>
> [UniswapV3TokenV3DTO] uniswap_v3_get_tokens__historical()

GetTokens (historical) 🔥

Gets tokens.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_token_v3_dto import UniswapV3TokenV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        # GetTokens (historical) 🔥
        api_response = api_instance.uniswap_v3_get_tokens__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_tokens__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_tokens__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_tokens__historical.ApiResponseFor200
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
[**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) | [**UniswapV3TokenV3DTO**]({{complexTypePrefix}}UniswapV3TokenV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_tokens_day_data__current**
<a name="uniswap_v3_get_tokens_day_data__current"></a>
> [UniswapV3TokenV3DayDataDTO] uniswap_v3_get_tokens_day_data__current()

GetTokensDayData (current)

Gets tokens day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_token_v3_day_data_dto import UniswapV3TokenV3DayDataDTO
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

    # example passing only optional values
    query_params = {
        'filter_token_id': "filter_token_id_example",
    }
    try:
        # GetTokensDayData (current)
        api_response = api_instance.uniswap_v3_get_tokens_day_data__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__current: %s\n" % e)
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
filter_token_id | FilterTokenIdSchema | | optional


# FilterTokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v3_get_tokens_day_data__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_tokens_day_data__current.ApiResponseFor200
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
[**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_tokens_day_data__historical**
<a name="uniswap_v3_get_tokens_day_data__historical"></a>
> [UniswapV3TokenV3DayDataDTO] uniswap_v3_get_tokens_day_data__historical()

GetTokensDayData (historical)

Gets tokens day data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_token_v3_day_data_dto import UniswapV3TokenV3DayDataDTO
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
        api_response = api_instance.uniswap_v3_get_tokens_day_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_tokens_day_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_tokens_day_data__historical.ApiResponseFor200
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
[**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) | [**UniswapV3TokenV3DayDataDTO**]({{complexTypePrefix}}UniswapV3TokenV3DayDataDTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_tokens_hour_data__current**
<a name="uniswap_v3_get_tokens_hour_data__current"></a>
> [UniswapV3TokenHourDataV3DTO] uniswap_v3_get_tokens_hour_data__current()

GetTokensHourData (current)

Gets tokens hour data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_token_hour_data_v3_dto import UniswapV3TokenHourDataV3DTO
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

    # example passing only optional values
    query_params = {
        'filter_token_id': "filter_token_id_example",
    }
    try:
        # GetTokensHourData (current)
        api_response = api_instance.uniswap_v3_get_tokens_hour_data__current(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__current: %s\n" % e)
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
filter_token_id | FilterTokenIdSchema | | optional


# FilterTokenIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#uniswap_v3_get_tokens_hour_data__current.ApiResponseFor200) | successful operation

#### uniswap_v3_get_tokens_hour_data__current.ApiResponseFor200
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
[**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_tokens_hour_data__historical**
<a name="uniswap_v3_get_tokens_hour_data__historical"></a>
> [UniswapV3TokenHourDataV3DTO] uniswap_v3_get_tokens_hour_data__historical()

GetTokensHourData (historical)

Gets tokens hour data.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_token_hour_data_v3_dto import UniswapV3TokenHourDataV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        # GetTokensHourData (historical)
        api_response = api_instance.uniswap_v3_get_tokens_hour_data__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_tokens_hour_data__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_tokens_hour_data__historical.ApiResponseFor200
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
[**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) | [**UniswapV3TokenHourDataV3DTO**]({{complexTypePrefix}}UniswapV3TokenHourDataV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **uniswap_v3_get_transactions__historical**
<a name="uniswap_v3_get_transactions__historical"></a>
> [UniswapV3TransactionV3DTO] uniswap_v3_get_transactions__historical()

GetTransactions (historical)

Gets transactions.

### Example

```python
import openapi_client
from openapi_client.apis.tags import uniswap_v3_api
from openapi_client.model.uniswap_v3_transaction_v3_dto import UniswapV3TransactionV3DTO
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

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        # GetTransactions (historical)
        api_response = api_instance.uniswap_v3_get_transactions__historical(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling UniswapV3Api->uniswap_v3_get_transactions__historical: %s\n" % e)
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
200 | [ApiResponseFor200](#uniswap_v3_get_transactions__historical.ApiResponseFor200) | successful operation

#### uniswap_v3_get_transactions__historical.ApiResponseFor200
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
[**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) | [**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) | [**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) |  | 

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) | [**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) | [**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) |  | 

# SchemaFor200ResponseBodyTextJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) | [**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) | [**UniswapV3TransactionV3DTO**]({{complexTypePrefix}}UniswapV3TransactionV3DTO.md) |  | 

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

