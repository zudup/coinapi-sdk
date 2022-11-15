<a name="__pageTop"></a>
# openapi_client.apis.tags.uniswap_v3_api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v3_get_bundles__current**](#uniswap_v3_get_bundles__current) | **get** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswap_v3_get_bundles__historical**](#uniswap_v3_get_bundles__historical) | **get** /dapps/uniswapv3/bundles/historical-manual | Bundles (historical)
[**uniswap_v3_get_burns__current**](#uniswap_v3_get_burns__current) | **get** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswap_v3_get_burns__historical**](#uniswap_v3_get_burns__historical) | **get** /dapps/uniswapv3/burns/historical-manual | Burns (historical)
[**uniswap_v3_get_day_data__current**](#uniswap_v3_get_day_data__current) | **get** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswap_v3_get_day_data__historical**](#uniswap_v3_get_day_data__historical) | **get** /dapps/uniswapv3/dayData/historical-manual | DayData (historical)
[**uniswap_v3_get_factory__current**](#uniswap_v3_get_factory__current) | **get** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswap_v3_get_factory__historical**](#uniswap_v3_get_factory__historical) | **get** /dapps/uniswapv3/factory/historical-manual | Factory (historical)
[**uniswap_v3_get_mints__current**](#uniswap_v3_get_mints__current) | **get** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswap_v3_get_mints__historical**](#uniswap_v3_get_mints__historical) | **get** /dapps/uniswapv3/mints/historical-manual | Mints (historical)
[**uniswap_v3_get_pools__current**](#uniswap_v3_get_pools__current) | **get** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswap_v3_get_pools__historical**](#uniswap_v3_get_pools__historical) | **get** /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥
[**uniswap_v3_get_pools_day_data__current**](#uniswap_v3_get_pools_day_data__current) | **get** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswap_v3_get_pools_day_data__historical**](#uniswap_v3_get_pools_day_data__historical) | **get** /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical)
[**uniswap_v3_get_pools_hour_data__current**](#uniswap_v3_get_pools_hour_data__current) | **get** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswap_v3_get_pools_hour_data__historical**](#uniswap_v3_get_pools_hour_data__historical) | **get** /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical)
[**uniswap_v3_get_positions__current**](#uniswap_v3_get_positions__current) | **get** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswap_v3_get_positions__historical**](#uniswap_v3_get_positions__historical) | **get** /dapps/uniswapv3/positions/historical-manual | Positions (historical)
[**uniswap_v3_get_positions_snaphots__historical**](#uniswap_v3_get_positions_snaphots__historical) | **get** /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical)
[**uniswap_v3_get_positions_snapshots__current**](#uniswap_v3_get_positions_snapshots__current) | **get** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswap_v3_get_swaps__current**](#uniswap_v3_get_swaps__current) | **get** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswap_v3_get_swaps__historical**](#uniswap_v3_get_swaps__historical) | **get** /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥
[**uniswap_v3_get_ticks__current**](#uniswap_v3_get_ticks__current) | **get** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswap_v3_get_ticks__historical**](#uniswap_v3_get_ticks__historical) | **get** /dapps/uniswapv3/ticks/historical-manual | Ticks (historical)
[**uniswap_v3_get_ticks_day_data__current**](#uniswap_v3_get_ticks_day_data__current) | **get** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswap_v3_get_ticks_day_data__historical**](#uniswap_v3_get_ticks_day_data__historical) | **get** /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical)
[**uniswap_v3_get_tokens__current**](#uniswap_v3_get_tokens__current) | **get** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswap_v3_get_tokens__historical**](#uniswap_v3_get_tokens__historical) | **get** /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥
[**uniswap_v3_get_tokens_day_data__current**](#uniswap_v3_get_tokens_day_data__current) | **get** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswap_v3_get_tokens_day_data__historical**](#uniswap_v3_get_tokens_day_data__historical) | **get** /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical)
[**uniswap_v3_get_tokens_hour_data__current**](#uniswap_v3_get_tokens_hour_data__current) | **get** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
[**uniswap_v3_get_tokens_hour_data__historical**](#uniswap_v3_get_tokens_hour_data__historical) | **get** /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical)
[**uniswap_v3_get_transactions__historical**](#uniswap_v3_get_transactions__historical) | **get** /dapps/uniswapv3/transactions/historical-manual | Transactions (historical)

# **uniswap_v3_get_bundles__current**
<a name="uniswap_v3_get_bundles__current"></a>
> [UniswapV3BundleV3DTO] uniswap_v3_get_bundles__current()

Bundles (current)

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
        # Bundles (current)
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

Bundles (historical)

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
        # Bundles (historical)
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

Burns (current)

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
        # Burns (current)
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

Burns (historical)

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
        # Burns (historical)
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

DayData (current)

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
        # DayData (current)
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

DayData (historical)

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
        # DayData (historical)
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

Factory (current)

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
        # Factory (current)
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

Factory (historical)

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
        # Factory (historical)
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

Mints (current)

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
        # Mints (current)
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

Mints (historical)

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
        # Mints (historical)
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

Pools (current) 🔥

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
        # Pools (current) 🔥
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

Pools (historical) 🔥

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
        # Pools (historical) 🔥
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

PoolsDayData (current)

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
        # PoolsDayData (current)
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

PoolsDayData (historical)

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
        # PoolsDayData (historical)
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

PoolsHourData (current)

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
        # PoolsHourData (current)
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

PoolsHourData (historical)

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
        # PoolsHourData (historical)
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

Positions (current)

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
        # Positions (current)
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

Positions (historical)

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
        # Positions (historical)
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

PositionsSnaphots (historical)

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
        # PositionsSnaphots (historical)
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

PositionsSnapshots (current)

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
        # PositionsSnapshots (current)
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

Swaps (current) 🔥

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
        # Swaps (current) 🔥
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

Swaps (historical) 🔥

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
        # Swaps (historical) 🔥
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

Ticks (current)

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
        # Ticks (current)
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

Ticks (historical)

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
        # Ticks (historical)
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

TicksDayData (current)

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
        # TicksDayData (current)
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

TicksDayData (historical)

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
        # TicksDayData (historical)
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

Tokens (current) 🔥

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
        # Tokens (current) 🔥
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

Tokens (historical) 🔥

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
        # Tokens (historical) 🔥
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

TokensDayData (current)

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
        # TokensDayData (current)
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

TokensDayData (historical)

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
        # TokensDayData (historical)
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

TokensHourData (current)

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
        # TokensHourData (current)
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

TokensHourData (historical)

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
        # TokensHourData (historical)
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

Transactions (historical)

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
        # Transactions (historical)
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

