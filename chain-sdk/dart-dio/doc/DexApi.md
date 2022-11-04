# openapi.api.DexApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsDexBatchHistoricalGet**](DexApi.md#dappsdexbatchhistoricalget) | **GET** /dapps/dex/batch/historical | 
[**dappsDexOrdersHistoricalGet**](DexApi.md#dappsdexordershistoricalget) | **GET** /dapps/dex/orders/historical | 
[**dappsDexPricesHistoricalGet**](DexApi.md#dappsdexpriceshistoricalget) | **GET** /dapps/dex/prices/historical | 
[**dappsDexSolutionHistoricalGet**](DexApi.md#dappsdexsolutionhistoricalget) | **GET** /dapps/dex/solution/historical | 
[**dappsDexStatsHistoricalGet**](DexApi.md#dappsdexstatshistoricalget) | **GET** /dapps/dex/stats/historical | 
[**dappsDexTokensHistoricalGet**](DexApi.md#dappsdextokenshistoricalget) | **GET** /dapps/dex/tokens/historical | 
[**dappsDexTradesHistoricalGet**](DexApi.md#dappsdextradeshistoricalget) | **GET** /dapps/dex/trades/historical | 
[**dappsDexUsersHistoricalGet**](DexApi.md#dappsdexusershistoricalget) | **GET** /dapps/dex/users/historical | 
[**dappsDexWithdrawHistoricalGet**](DexApi.md#dappsdexwithdrawhistoricalget) | **GET** /dapps/dex/withdraw/historical | 
[**dappsDexWithdrawRequestHistoricalGet**](DexApi.md#dappsdexwithdrawrequesthistoricalget) | **GET** /dapps/dex/withdrawRequest/historical | 


# **dappsDexBatchHistoricalGet**
> dappsDexBatchHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsDexBatchHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexBatchHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexOrdersHistoricalGet**
> dappsDexOrdersHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsDexOrdersHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexOrdersHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexPricesHistoricalGet**
> dappsDexPricesHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsDexPricesHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexPricesHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexSolutionHistoricalGet**
> dappsDexSolutionHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsDexSolutionHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexSolutionHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexStatsHistoricalGet**
> dappsDexStatsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsDexStatsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexStatsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexTokensHistoricalGet**
> dappsDexTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsDexTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexTokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexTradesHistoricalGet**
> dappsDexTradesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsDexTradesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexTradesHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexUsersHistoricalGet**
> dappsDexUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsDexUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexUsersHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexWithdrawHistoricalGet**
> dappsDexWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsDexWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexWithdrawHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsDexWithdrawRequestHistoricalGet**
> dappsDexWithdrawRequestHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDexApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsDexWithdrawRequestHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling DexApi->dappsDexWithdrawRequestHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

