# openapi.api.CowApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsCowOrdersHistoricalGet**](CowApi.md#dappscowordershistoricalget) | **GET** /dapps/cow/orders/historical | 
[**dappsCowSettlementHistoricalGet**](CowApi.md#dappscowsettlementhistoricalget) | **GET** /dapps/cow/settlement/historical | 
[**dappsCowTokensHistoricalGet**](CowApi.md#dappscowtokenshistoricalget) | **GET** /dapps/cow/tokens/historical | 
[**dappsCowTradesHistoricalGet**](CowApi.md#dappscowtradeshistoricalget) | **GET** /dapps/cow/trades/historical | 
[**dappsCowUsersHistoricalGet**](CowApi.md#dappscowusershistoricalget) | **GET** /dapps/cow/users/historical | 


# **dappsCowOrdersHistoricalGet**
> dappsCowOrdersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsCowOrdersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling CowApi->dappsCowOrdersHistoricalGet: $e\n');
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

# **dappsCowSettlementHistoricalGet**
> dappsCowSettlementHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsCowSettlementHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling CowApi->dappsCowSettlementHistoricalGet: $e\n');
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

# **dappsCowTokensHistoricalGet**
> dappsCowTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsCowTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling CowApi->dappsCowTokensHistoricalGet: $e\n');
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

# **dappsCowTradesHistoricalGet**
> dappsCowTradesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsCowTradesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling CowApi->dappsCowTradesHistoricalGet: $e\n');
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

# **dappsCowUsersHistoricalGet**
> dappsCowUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsCowUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling CowApi->dappsCowUsersHistoricalGet: $e\n');
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

