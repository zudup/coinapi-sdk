<a name="__pageTop"></a>
# openapi_client.apis.tags.cow_api.CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dapps_cow_orders_historical_get**](#dapps_cow_orders_historical_get) | **get** /dapps/cow/orders/historical | 
[**dapps_cow_poi_historical_get**](#dapps_cow_poi_historical_get) | **get** /dapps/cow/poi/historical | 
[**dapps_cow_settlement_historical_get**](#dapps_cow_settlement_historical_get) | **get** /dapps/cow/settlement/historical | 
[**dapps_cow_tokens_historical_get**](#dapps_cow_tokens_historical_get) | **get** /dapps/cow/tokens/historical | 
[**dapps_cow_trades_historical_get**](#dapps_cow_trades_historical_get) | **get** /dapps/cow/trades/historical | 
[**dapps_cow_users_historical_get**](#dapps_cow_users_historical_get) | **get** /dapps/cow/users/historical | 

# **dapps_cow_orders_historical_get**
<a name="dapps_cow_orders_historical_get"></a>
> dapps_cow_orders_historical_get()



### Example

```python
import openapi_client
from openapi_client.apis.tags import cow_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cow_api.CowApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        api_response = api_instance.dapps_cow_orders_historical_get(
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling CowApi->dapps_cow_orders_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
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
200 | [ApiResponseFor200](#dapps_cow_orders_historical_get.ApiResponseFor200) | Success

#### dapps_cow_orders_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **dapps_cow_poi_historical_get**
<a name="dapps_cow_poi_historical_get"></a>
> dapps_cow_poi_historical_get()



### Example

```python
import openapi_client
from openapi_client.apis.tags import cow_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cow_api.CowApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        api_response = api_instance.dapps_cow_poi_historical_get(
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling CowApi->dapps_cow_poi_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
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
200 | [ApiResponseFor200](#dapps_cow_poi_historical_get.ApiResponseFor200) | Success

#### dapps_cow_poi_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **dapps_cow_settlement_historical_get**
<a name="dapps_cow_settlement_historical_get"></a>
> dapps_cow_settlement_historical_get()



### Example

```python
import openapi_client
from openapi_client.apis.tags import cow_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cow_api.CowApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        api_response = api_instance.dapps_cow_settlement_historical_get(
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling CowApi->dapps_cow_settlement_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
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
200 | [ApiResponseFor200](#dapps_cow_settlement_historical_get.ApiResponseFor200) | Success

#### dapps_cow_settlement_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **dapps_cow_tokens_historical_get**
<a name="dapps_cow_tokens_historical_get"></a>
> dapps_cow_tokens_historical_get()



### Example

```python
import openapi_client
from openapi_client.apis.tags import cow_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cow_api.CowApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
        'tokenId': "tokenId_example",
    }
    try:
        api_response = api_instance.dapps_cow_tokens_historical_get(
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling CowApi->dapps_cow_tokens_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
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
200 | [ApiResponseFor200](#dapps_cow_tokens_historical_get.ApiResponseFor200) | Success

#### dapps_cow_tokens_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **dapps_cow_trades_historical_get**
<a name="dapps_cow_trades_historical_get"></a>
> dapps_cow_trades_historical_get()



### Example

```python
import openapi_client
from openapi_client.apis.tags import cow_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cow_api.CowApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        api_response = api_instance.dapps_cow_trades_historical_get(
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling CowApi->dapps_cow_trades_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
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
200 | [ApiResponseFor200](#dapps_cow_trades_historical_get.ApiResponseFor200) | Success

#### dapps_cow_trades_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **dapps_cow_users_historical_get**
<a name="dapps_cow_users_historical_get"></a>
> dapps_cow_users_historical_get()



### Example

```python
import openapi_client
from openapi_client.apis.tags import cow_api
from pprint import pprint
# Defining the host is optional and defaults to https://onchain.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://onchain.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = cow_api.CowApi(api_client)

    # example passing only optional values
    query_params = {
        'startBlock': 1,
        'endBlock': 1,
        'startDate': "1970-01-01T00:00:00.00Z",
        'endDate': "1970-01-01T00:00:00.00Z",
    }
    try:
        api_response = api_instance.dapps_cow_users_historical_get(
            query_params=query_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling CowApi->dapps_cow_users_historical_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
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
200 | [ApiResponseFor200](#dapps_cow_users_historical_get.ApiResponseFor200) | Success

#### dapps_cow_users_historical_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

