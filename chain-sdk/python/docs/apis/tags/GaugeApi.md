<a name="__pageTop"></a>
# openapi_client.apis.tags.gauge_api.GaugeApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_curve_gauge_historical_get**](#chains_chain_id_dapps_curve_gauge_historical_get) | **get** /chains/{chain_id}/dapps/curve/gauge/historical | 

# **chains_chain_id_dapps_curve_gauge_historical_get**
<a name="chains_chain_id_dapps_curve_gauge_historical_get"></a>
> chains_chain_id_dapps_curve_gauge_historical_get(chain_id)



### Example

```python
import openapi_client
from openapi_client.apis.tags import gauge_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gauge_api.GaugeApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
    }
    try:
        api_response = api_instance.chains_chain_id_dapps_curve_gauge_historical_get(
            path_params=path_params,
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling GaugeApi->chains_chain_id_dapps_curve_gauge_historical_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'chain_id': "chain_id_example",
    }
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'poolId': "poolId_example",
    }
    try:
        api_response = api_instance.chains_chain_id_dapps_curve_gauge_historical_get(
            path_params=path_params,
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling GaugeApi->chains_chain_id_dapps_curve_gauge_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
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
200 | [ApiResponseFor200](#chains_chain_id_dapps_curve_gauge_historical_get.ApiResponseFor200) | Success

#### chains_chain_id_dapps_curve_gauge_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

